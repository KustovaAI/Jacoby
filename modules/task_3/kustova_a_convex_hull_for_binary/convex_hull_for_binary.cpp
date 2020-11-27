// Copyright 2020 Kustova Anastasiya
#include "../../../modules/task_3/kustova_a_convex_hull_for_binary/convex_hull_for_binary.h"
#include <mpi.h>
#include <vector>
#include <random>
#include <iostream>
#include <ctime>
void printImage(int ** image, int height, int width) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            std::cout << image[i][j] << " ";
        }
        std::cout << std::endl;
    }
}

int giveNumbersToComponents(int ** image, int height, int width) {
    int size, rank;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);
    int componentsNumber = 0;
    const int delta_height = height / size;
    const int rem_height = height % size;
    int start_height;


    if (rank < rem_height) {
        start_height = rank * (delta_height + 1);
    } else {
        start_height = delta_height * rank + rem_height;
    }
    if (image[start_height][0] != 0) {
        componentsNumber++;
        image[start_height][0] = componentsNumber;
    }
    for (int j = 1; j < width; j++) {
        if (image[start_height][j] != 0) {
            if (image[start_height][j - 1] != 0) {
                image[start_height][j] = image[start_height][j - 1];
            } else {
                componentsNumber++;
                image[start_height][j] = componentsNumber;
            }
        }
    }
    int rem_count;
    if (rank < rem_height) {
        rem_count = delta_height + 1;
    } else {
        rem_count = delta_height;
    }
    rem_count += start_height;
    for (int i = start_height + 1; i < rem_count; i++) {
        for (int j = 0; j < width; j++) {
            if (image[i][j] != 0) {
                if ((j > 0) && (image[i - 1][j - 1] != 0)) {
                    image[i][j] = image[i - 1][j - 1];
                } else if (image[i - 1][j] != 0) {
                    image[i][j] = image[i - 1][j];
                } else if ((j < width - 1) && (image[i - 1][j + 1] != 0)) {
                    image[i][j] = image[i - 1][j + 1];
                } else if ((j > 0) && (image[i][j - 1] != 0)) {
                    image[i][j] = image[i][j - 1];
                } else {
                    componentsNumber++;
                    image[i][j] = componentsNumber;
                }
            }
        }
    }
    if (size > 1) {
  //       double st = MPI_Wtime();
    std::vector<int>nums(size);
    MPI_Allgather(&componentsNumber, 1, MPI_INT, &nums[0], 1, MPI_INT, MPI_COMM_WORLD);
    int step = 0;
    componentsNumber = 0;
    for (int i = 0; i < size; i++) {
        if (i < rank)
        step += nums[i];
        componentsNumber += nums[i];
    }
    if (rank != 0) {
        for (int i = start_height; i < rem_count; i++) {
            for (int j = 0; j < width; j++) {
                if (image[i][j] != 0) {
                    image[i][j] += step;
                }
            }
        }
    }

        std::vector<int> send(height*width);
        int k = 0;
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                send[k] = image[i][j];
                k++;
            }
        }

        std::vector<int> recv(height*width);
        MPI_Allreduce(&send[0], &recv[0], height*width, MPI_INT, MPI_MAX, MPI_COMM_WORLD);
        k = 0;
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                image[i][j] = recv[k];
                k++;
            }
        }
    }
    return componentsNumber;
}
std::vector<int> combineComponentParts(int ** image, int height, int width, int componentsNumber) {
    int size, rank;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);
    int* graf = new int[componentsNumber * componentsNumber];
    if (rank == 0) {  
        for (int i = 0; i < componentsNumber * componentsNumber; i++) {
                graf[i] = 0;
            }
        
        for (int i = 1; i < height; i++) {
            for (int j = 0; j < width; j++) {
                if (image[i][j] != 0) {
                    if (j > 0) {
                        if (image[i - 1][j - 1] != 0 && image[i - 1][j - 1] != image[i][j]) {
                            int g1 = image[i - 1][j - 1] - 1;
                            int g2 = image[i][j] - 1;
                            graf[g1 * componentsNumber + g2] = 1;
                            graf[g2 * componentsNumber + g1] = 1;
                        }
                        if (image[i][j - 1] != 0 && image[i][j - 1] != image[i][j]) {
                            int g1 = image[i][j - 1] - 1;
                            int g2 = image[i][j] - 1;
                            graf[g1 * componentsNumber + g2] = 1;
                            graf[g2 * componentsNumber + g1] = 1;
                        }
                    }
                    if (j < width - 1) {
                        if (image[i - 1][j + 1] != 0 && image[i - 1][j + 1] != image[i][j]) {
                            int g1 = image[i - 1][j + 1] - 1;
                            int g2 = image[i][j] - 1;
                            graf[g1 * componentsNumber + g2] = 1;
                            graf[g2 * componentsNumber + g1] = 1;
                        }
                        if (image[i][j + 1] != 0 && image[i][j + 1] != image[i][j]) {
                            int g1 = image[i][j + 1] - 1;
                            int g2 = image[i][j] - 1;
                            graf[g1 * componentsNumber + g2] = 1;
                            graf[g2 * componentsNumber + g1] = 1;
                        }
                    }
                    if (image[i - 1][j] != 0 && image[i - 1][j] != image[i][j]) {
                        int g1 = image[i - 1][j] - 1;
                        int g2 = image[i][j] - 1;
                        graf[g1 * componentsNumber + g2] = 1;
                        graf[g2 * componentsNumber + g1] = 1;
                    }
                }
            }
        }
        int k;
        std::vector<int>vec;
        for (int i = 0; i < componentsNumber; i++) {
            k = 0;
            vec.clear();
            for (int j = 0; j < componentsNumber; j++) {
                if (graf[i * componentsNumber + j] != 0) {
                    k++;
                    vec.push_back(j);
                }
            }
            if (k > 1) {
                for (unsigned int t = 0; t < vec.size(); t++) {
                    for (unsigned int p = 0; p < vec.size(); p++) {
                        graf[vec[t] * componentsNumber + vec[p]] = 1;
                    }
                }
            }
        }
    }
    MPI_Bcast(&graf[0], componentsNumber * componentsNumber, MPI_INT, 0, MPI_COMM_WORLD);
    if (size > height) {
        size = height;
    }
    std::vector<int> send(height*width);
    int k = 0;
    for (int h = 0; h < height; h++) {
        for (int w = 0; w < width; w++) {
            send[k] = image[h][w];
            k++;
        }
    }
    int delta_height = height / size;
    int rem_height = height % size;
    int cNumber = componentsNumber;
    int start_height = (rank < rem_height) ? (rank * (delta_height + 1)) : (delta_height * rank + rem_height);
    int rem_count = (rank < rem_height) ? (delta_height + 1) : delta_height;
    rem_count += start_height;
         double st = MPI_Wtime();

    for (int i = cNumber - 2; i >= 0; i--) {
        for (int j = cNumber - 1; j >= i + 1; j--) {
            if (graf[i * cNumber + j] != 0) {
                    k = 0;
                    for (int h = start_height; h < rem_count; h++) {
                        for (int w = 0; w < width; w++) {
                            if (image[h][w] == j + 1) {
                                image[h][w] = i + 1;
                                send[h * width + w] = image[h][w];
                            }
                        }
                    }

            }
        }
    }
                    std::vector<int> recv(height*width);
                MPI_Allreduce(&send[0], &recv[0], height*width, MPI_INT, MPI_MIN, MPI_COMM_WORLD);
               k = 0;
                for (int h = 0; h < height; h++) {
                    for (int w = 0; w < width; w++) {
                        image[h][w] = recv[k];
                        k++;
                    }
                } 
      double end = MPI_Wtime();
    if (rank == 0) std::cout <<end-st<<std::endl;
    std::vector<int> components;
    for (int h = 0; h < height; h++) {
        for (int w = 0; w < width; w++) {
            if (image[h][w] != 0) {
                if (components.empty()) {
                    components.push_back(image[h][w]);
                } else {
                    bool flag = true;
                    int csize = components.size();
                    for (int i = 0; i < csize; i++) {
                        if (components[i] == image[h][w]) {
                            flag = false;
                            break;
                        }
                    }
                    if (flag) {
                        components.push_back(image[h][w]);
                    }
                }
            }
        }
    }
    return components;
}


std::vector<int> searchConnectedComponents(int ** image, int height, int width) {
  //   int rank;
  //   MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    //  double st = MPI_Wtime();
     int componentsNumber = giveNumbersToComponents(image, height, width);
    //   double end = MPI_Wtime();
    // if (rank == 0) std::cout <<end-st<<std::endl;

    std::vector<int> components = combineComponentParts(image, height, width, componentsNumber);
    return components;
}


int ** imageOr(int ** image1, int ** image2, int height, int width) {
    int size, rank;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);
    int delta_height = height / size;
    int rem_height = height % size;
    int start_height = (rank < rem_height) ? (rank * (delta_height + 1)) : (delta_height * rank + rem_height);
    int max_height = (rank < rem_height) ? (delta_height + 1) : delta_height;
    max_height += start_height;

    int ** resultImage = new int*[height];
    for (int i = 0; i < height; i++) {
        resultImage[i] = new int[width];
        for (int j = 0; j < width; j++) {
            resultImage[i][j] = 0;
        }
    }

    for (int i = start_height; i < max_height; i++) {
        for (int j = 0; j < width; j++) {
            if (image1[i][j] != 0) {
                resultImage[i][j] = image1[i][j];
            } else if (image2[i][j] != 0) {
                resultImage[i][j] = image2[i][j];
            } else {
                resultImage[i][j] = 0;
            }
        }
    }
    int k = 0;
    std::vector<int> send(height*width);
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            send[k] = resultImage[i][j];
            k++;
        }
    }
    std::vector<int> recv(height*width);
    MPI_Allreduce(&send[0], &recv[0], height*width, MPI_INT, MPI_MAX, MPI_COMM_WORLD);

    k = 0;
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            resultImage[i][j] = recv[k];
            k++;
        }
    }
    return resultImage;
}



int ** buildComponentConvexHull(int ** image, int height, int width) {

    int size, rank;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);
    std::vector<Point> vec;
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            if (image[i][j] != 0) {
                Point a;
                a.x = i;
                a.y = j;
            vec.push_back(a);
            }
        }
    }

    std::vector<Point> res = buildHull(vec);
    for (unsigned int i = 0; i < res.size(); i++) {
        int x1 = (int)(res[i].x);
        int y1 = (int)(res[i].y);
        image[x1][y1] = 3;  
    }
    if (vec.size() != 1) {
        image = drawLines(image, height, width,res);
    } 
    return image;    
}

int ** getComponent(int ** image, int height, int width, int number) {
    int ** resultImage = new int*[height];
    for (int i = 0; i < height; i++) {
        resultImage[i] = new int[width];
        for (int j = 0; j < width; j++) {
            if (image[i][j] == number) {
                resultImage[i][j] = 1;
            } else {
                resultImage[i][j] = 0;
            }
        }
    }
    return resultImage;
}

int ** buildImageConvexHull(int ** image, int height, int width) {
    int ** resultImage = new int*[height];
         int rank;
     MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    int ** comp = new int*[height];
    for (int i = 0; i < height; i++) {
        resultImage[i] = new int[width];
        comp[i] = new int[width];
        for (int j = 0; j < width; j++) {
            resultImage[i][j] = 0;
            comp[i][j] = image[i][j];
        }
    }
    std::vector<int> components = searchConnectedComponents(comp, height, width);

  //   double st = MPI_Wtime();
    while (!components.empty()) {
        int component = components.back();
        components.pop_back();
        int ** result = buildComponentConvexHull(getComponent(comp, height, width, component), height, width);
        resultImage = imageOr(resultImage, result, height, width);
    }
    //     double end = MPI_Wtime();
  //  if (rank == 0) std::cout <<end-st<<std::endl;
    return resultImage;
}

int cross(const Point& a, const Point& b) {
  return (a.x * b.y) - (b.x * a.y);
}

bool is_counter_clockwise(const Point& p, const Point& i, const Point& q) {
  return cross(i - p, q - p) < 0;
}

Point find_leftmost_point(std::vector<Point> buf, int rank, int size, int countpr) {
    Point most_point;
    if (countpr == 0 || rank == 0) {
        most_point = buf[0];
    }
    for (unsigned int i = 1; i < buf.size(); i++) {
        if (buf[i].x < most_point.x) {
            most_point = buf[i];
        }
    }
    std::vector<Point> points(size);
    if (countpr == 0) {
        MPI_Gather(&most_point, 2, MPI_INT, &points[0], 2, MPI_INT, 0, MPI_COMM_WORLD);
    }

    if (rank == 0) {
        most_point = points[0];
        for (unsigned int i = 1; i < points.size(); i++) {
            if (points[i].x < most_point.x) {
                most_point = points[i];
            }
        }
    }
    MPI_Bcast(&most_point, 2, MPI_INT, 0, MPI_COMM_WORLD);
    return most_point;
}

std::vector<Point> buildHull(std::vector<Point> m_set) {
    int rank, size;
    int countpr = 0;
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);
    Point leftmost_point;
    int delta = m_set.size() / size;
    int rem = m_set.size() % size;
    if (delta == 0) countpr = 1;
    std::vector<Point> buffer(delta);
    MPI_Scatter(&m_set[rem], delta * 2, MPI_INT, &buffer[0], delta * 2, MPI_INT, 0, MPI_COMM_WORLD);
    if (rank == 0) {
        buffer.insert(buffer.begin(), m_set.begin(), m_set.begin() + rem);
    }
    leftmost_point = find_leftmost_point(buffer, rank, size, countpr);
    std::vector<Point> hull;
    std::vector<Point> points(size);
    Point endpoint;
    do {
        hull.push_back(leftmost_point);
        endpoint = m_set.at(0);
        if (countpr == 0 || rank == 0) {
            for (auto i = buffer.begin(); i < buffer.end(); i++) {
                if (is_counter_clockwise(hull.back(), *i, endpoint) || endpoint == leftmost_point) {
                    endpoint = *i;
                }
            }
        }
        if (countpr == 0) {
            MPI_Gather(&endpoint, 2, MPI_INT, &points[0], 2, MPI_INT, 0, MPI_COMM_WORLD);
        }
        if (rank == 0) {
            for (auto point : points) {
                if (is_counter_clockwise(hull.back(), point, endpoint) || endpoint == leftmost_point) {
                    endpoint = point;
                }
            }
        }
        MPI_Bcast(&endpoint, 2, MPI_INT, 0, MPI_COMM_WORLD);
        leftmost_point = endpoint;
    } while (endpoint != hull.at(0));
    return hull;
 }

// std::vector<Point> buildHull_s(std::vector<Point> m_set) {
//   Point leftmost_point = m_set[0];
//   for (unsigned int i = 1; i < m_set.size(); i++) {
//     if (m_set[i].x < leftmost_point.x) {
//         leftmost_point = m_set[i];
//     }
//   }
//   std::vector<Point> hull;
//   Point endpoint;
//   do {
//     hull.push_back(leftmost_point);
//     endpoint = m_set.at(0);
//     for (auto i : m_set) {
//       if (is_counter_clockwise(hull.back(), i, endpoint) ||
//           endpoint == leftmost_point) {
//         endpoint = i;
//       }
//     }

//     leftmost_point = endpoint;
//   } while (endpoint != hull.at(0));

//   return hull;
// }

int ** drawLines(int ** image, int height, int width, std::vector<Point> vec)
{
    int ** result = image;
    int x1, y1, x2, y2, start, end;
    double func, min;
    int x_min, y_min;
    for (unsigned int i = 0; i < vec.size(); i++) {
        x1 = vec[i].x;
        y1 = vec[i].y;
        if (i == vec.size() - 1) {
            x2 = vec[0].x;
            y2 = vec[0].y;
        } else {
        x2 = vec[i+1].x;
        y2 = vec[i + 1].y;
        }
        if (my_abs(x1 - x2) <= 1) {
            if (y1 < y2) {
                start = y1;
                end = y2;
            } else {
                start = y2;
                end = y1;    
            }
            for (int k = start; k < end; k++) {
                result[x1][k] = 2;
            }
            continue;            
        } else if (x1 < x2) {
            start = x1;
            end = x2;
        } else {
            start = x2;
            end = x1;
        }
        for (int j = start + 1; j < end; j++) {
            min = width*width;
            for (int k = 0; k < width; k++) {
                func = sqrt((x1 - j) * (x1 - j) + (y1 - k)*(y1 - k)) + sqrt((x2 - j) * (x2 - j) + (y2 - k)*(y2 - k));
                if (func <= min) {
                    min = func;
                    x_min = j;
                    y_min = k;
                }
                
            }
            if (result[x_min][y_min] != 3)
             result[x_min][y_min]= 2;
        }
    }
    return result;
}
double my_abs(double x) {
    if (x > 0) {
        return x;
    } else {
        return -x;
    }
}

from open3d import *

if __name__ == "__main__":

    print("Testing IO for point cloud ...")
    pcd = read_point_cloud("newreal.ply")
    print(pcd)
    trans_init = np.asarray([[0.0, 0.0, 1.0, 0.0],
                            [1.0, 0.0, 0.0, 0.0],
                            [0.0, 1.0, 0.0, 0.0],
                            [0.0, 0.0, 0.0, 1.0]])
    pcd.transform(trans_init)
    draw_geometries([pcd])

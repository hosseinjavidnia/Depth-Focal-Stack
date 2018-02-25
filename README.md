# The Application of Preconditioned Alternating Direction Method of Multipliers in Depth from Focal Stack
This repository contains the code for the method presented in the following paper:

**Javidnia, H. and Corcoran, P., 2017. "The Application of Preconditioned Alternating Direction Method of Multipliers in Depth from Focal Stack". arXiv preprint arXiv:1711.07721.**

\
The code is written and compiled in MATLAB R2017a x64.
To run the code please follow these instructions:

1. Download the repository.
2. Extract the "opencv_imgproc310d.zip" file and copy the "opencv_imgproc310d.dll" file to the main directory, next to the other dlls.
3. Run the "Run.m" file in MATLAB.

\
A sample focal stack set is located in the "Data" folder.

To generate focal stack samples from .LFR light-field sets, please follow these instructions:
1. Download the .LFR files from [EPFL Light-Field Image Dataset](https://mmspg.epfl.ch/EPFL-light-field-image-dataset).
2. Download and install [Lytro Desktop Software](https://support.lytro.com/hc/en-us/articles/115003127732-Download-Lytro-Desktop).
3. Open the LFR file in Lytro Software.
4. Go to the "Animate" section on the left hand side.
5. Select and remove the first keyframe.
6. Modify the focus point of last frame (click on the furthest point of the scene).
7. Add a keyframe at the begining and modify the focus point (click on the closest point of the scene).
8. From the "Export" option in the "File" menu, save the png series.

\
Please cite the following papers when you are using this code:

**Javidnia, H. and Corcoran, P., 2017. The Application of Preconditioned Alternating Direction Method of Multipliers in Depth from Focal Stack. arXiv preprint arXiv:1711.07721.**

If you are using the [EPFL Light-Field Image Dataset](https://mmspg.epfl.ch/EPFL-light-field-image-dataset) please cite:

**Rerabek M, Ebrahimi T. New light field image dataset. Paper presented at: 8th International Conference on Quality of Multimedia Experience (QoMEX)2016.**

# Automatic-Liver-Segmentation-using-DBN

# Deep Belief Network Modelling for Automatic Liver Segmentation 

# 1. Abstract

This project presents an automated liver segmentation system designed using a Deep Belief Network (DBN) to analyze computed tomography (CT) scan images. Manual segmentation of the liver is time-consuming, subjective, and prone to human error, especially in complex medical imaging scenarios involving noise or inconsistent contrast. The proposed DBN-based architecture learns hierarchical feature representations to accurately identify and segment liver regions from abdominal CT scans. The system includes end-to-end functionality covering preprocessing, feature extraction, model training, segmentation inference, visualization, and result testing through a Flask-based interface. This automated workflow enhances diagnostic efficiency, supporting radiologists and clinicians in reliable liver assessment.

# 2. Introduction

Liver diseases are among the leading global health concerns, and accurate liver segmentation is critical for diagnosis, treatment planning, surgical navigation, and medical research. Traditional image segmentation methods often struggle with variations in organ shape, tissue density, and noise levels present in CT images. With the advancement of deep learning, generative models such as Deep Belief Networks have shown strong capability for high-level feature learning, enabling improved performance in medical image segmentation tasks.

This project investigates the application of a DBN model for precise and automated liver segmentation. The system leverages unsupervised feature learning and supervised fine-tuning to distinguish liver tissues from surrounding organs. It integrates preprocessing, image enhancement, filtering, training modules, and a user-friendly web interface to visualize segmentation results. The system aims to reduce radiologist workload and increase the accuracy of liver region identification.

# 3. Proposed System

The proposed system automatically segments the liver from CT abdominal images using a trained Deep Belief Network. The DBN model first learns low-level and high-level feature representations, followed by supervised fine-tuning. 

The system workflow includes:

Automated preprocessing to normalize, enhance, and noise-reduce CT images.
Feature extraction through stacked Restricted Boltzmann Machines (RBMs).
Pixel-wise classification to determine liver vs. non-liver regions.
Post-processing to refine segmentation boundaries.
Flask-based interface for uploading and testing CT images.
Storage of processed images and outputs in a MySQL database.


This integrated pipeline ensures high segmentation accuracy even under varying contrast levels and noisy conditions.

# 4. Object Flow Diagram

Object Flow Sequence:
1. User Input:
CT scan image is uploaded through the Flask interface.
2. Preprocessing Module:
Image normalization → contrast adjustment → noise filtering → ROI extraction.
3. Feature Learning (DBN):
RBM layers extract hierarchical features → model fine-tuning.
4. Segmentation Module:
DBN predicts pixel-wise classification → liver mask is generated.
5. Post-Processing:
Morphological operations → boundary smoothing → region refinement.
6. Output Visualization:
Original CT image + segmented liver overlay displayed to user.
7. Database Storage:
Input images, outputs, and logs stored in MySQL for audit and reuse.

# 5. System Architecture

The system architecture consists of the following layers:
1. Input Layer:
User uploads CT scan image.
2. Preprocessing Layer:
Responsible for gray-scale conversion, thresholding, filtering, region cropping.
3. DBN Feature Learning Layer:
Layer 1: Low-level feature extraction (edges, intensity patterns)
Layer 2: Intermediate feature abstraction
Layer 3: High-level liver shape representations
Fine-tuning using backpropagation
4. Segmentation Layer:
Generates binary liver masks based on learned classification patterns.
5. Post-Processing Layer:
Removes artifacts, smoothens contours, and enhances accuracy.
6. Application Layer (Flask):
Provides a front-end for testing, monitoring, visualizing output.
7. Database Layer (MySQL):
Stores user inputs, processed data, system logs.
This modular architecture ensures scalability, maintainability, and efficient deployment.

# 6. Implementation of the System

The implementation follows a structured pipeline:

Step 1: Data Acquisition
CT scan datasets collected from publicly available medical imaging sources.
Images converted into standardized format for uniform processing.

Step 2: Preprocessing
Noise reduction using Gaussian/Bilateral filters.
Intensity normalization for uniform contrast.
Histogram equalization for enhanced visibility.
Segmentation-friendly cropping and resizing.


Step 3: Model Development
Construction of stacked RBMs for feature learning.
Pretraining using unsupervised learning.
Supervised fine-tuning using backpropagation.
Training performed using PyTorch.

Step 4: Segmentation Process
DBN performs pixel-level classification.
Binary mask generated for liver region.
Post-processing improves mask shape and boundary sharpness.


Step 5: Flask Application
User uploads CT image.
Backend performs inference using trained DBN model.
Results displayed with overlay visualization.


Step 6: Database Integration
MySQL stores input images, segmented outputs, and user details.

# 7. Product Functions

The system supports the following key functionalities:

Upload CT scan images for segmentation.
Automatic preprocessing and enhancement.
Real-time inference using DBN.
Display of segmented liver region overlaid on original scan.
Option to save segmented outputs.
Database logging for future medical reference.
Simple and intuitive web UI for doctors and researchers.

# 8. Methodology Model – Deep Belief Network

A Deep Belief Network (DBN) is a generative graphical model composed of multiple stacked Restricted Boltzmann Machines (RBMs).

Working Process

1. Unsupervised Pretraining:
Each RBM learns patterns layer by layer.
Helps extract meaningful features from CT images.

2. Layer-Wise Training:
First RBM learns basic structures (edges, textures).
Subsequent RBMs learn deeper semantic representations.

3. Supervised Fine-Tuning:
Backpropagation adjusts weights to maximize segmentation accuracy.

4. Prediction:
Final model predicts liver vs. non-liver labels for every pixel. 
This methodology provides high accuracy even with limited labeled datasets.

# 9. Testing

The system is tested using:

Unit Testing: Validating preprocessing, DBN inference, and UI modules.
Segmentation Accuracy Testing:
Dice coefficient, IoU, sensitivity, and precision metrics used.
Performance Testing:
Ensuring real-time inference within acceptable latency.
Usability Testing:
Smooth user experience via Flask interface.
Test results confirm stable segmentation performance under varied image quality levels.

# 10. Technologies Used

Programming Language: Python
Deep Learning Framework: PyTorch
Computer Vision: OpenCV
Backend Framework: Flask
Database: MySQL
Libraries: Numpy, Scikit-learn, Matplotlib, PIL
Environment: Jupyter Notebook, VS Code

# 11. Expected Outcome

The expected outcomes include:

Highly accurate liver segmentation from CT images.
Robust detection even for noisy, low-contrast scans.
Reduced manual effort and improved diagnostic workflow.
End-to-end automated inference system for clinical use.
Easy-to-use interface for doctors and researchers.

# 12. Conclusion

The project successfully demonstrates the use of Deep Belief Networks for automated liver segmentation from abdominal CT scans. By integrating advanced deep learning techniques with preprocessing, segmentation logic, and a web-based interface, the system significantly improves efficiency and consistency in liver identification. This model provides a reliable solution that can support medical professionals in diagnostics and treatment planning.

# 13. Future Enhancement

Replace DBN with modern architectures (U-Net, Attention-U-Net, Transformers).
Integrate 3D segmentation for volumetric CT analysis.
Add annotation tools for manual corrections.
Develop mobile application support.
Enable real-time segmentation during live scanning.
Improve generalization using larger medical datasets.

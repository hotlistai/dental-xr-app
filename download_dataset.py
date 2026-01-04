import kagglehub

# Download latest version
path = kagglehub.dataset_download("orvile/panoramic-dental-xray-dataset")

print("Path to dataset files:", path)

/usr/src/tensorrt/bin/trtexec --onnx=./yolov5l-seg.onnx --batch=1 --saveEngine=./yolov5l-seg.trt --workspace=8192 --fp16 >> ./yolov5l-seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov5s-seg.onnx --batch=1 --saveEngine=./yolov5s-seg.trt --workspace=8192 --fp16 >> ./yolov5s-seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov5m-seg.onnx --batch=1 --saveEngine=./yolov5m-seg.trt --workspace=8192 --fp16 >> ./yolov5m-seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov5x-seg.onnx --batch=1 --saveEngine=./yolov5x-seg.trt --workspace=8192 --fp16 >> ./yolov5x-seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov5n-seg.onnx --batch=1 --saveEngine=./yolov5n-seg.trt --workspace=8192 --fp16 >> ./yolov5n-seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov6m_seg.onnx --batch=1 --saveEngine=./yolov6m_seg.trt --workspace=8192 --fp16 >> ./yolov6m_seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov6x_seg.onnx --batch=1 --saveEngine=./yolov6x_seg.trt --workspace=8192 --fp16 >> ./yolov6x_seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov6l_seg.onnx --batch=1 --saveEngine=./yolov6l_seg.trt --workspace=8192 --fp16 >> ./yolov6l_seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov7-seg.onnx --batch=1 --saveEngine=./yolov7-seg.trt --workspace=8192 --fp16 >> ./yolov7-seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov7x-seg.onnx --batch=1 --saveEngine=./yolov7x-seg.trt --workspace=8192 --fp16 >> ./yolov7x-seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov7-seg-dev.onnx --batch=1 --saveEngine=./yolov7-seg-dev.trt --workspace=8192 --fp16 >> ./yolov7-seg-dev.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov8m-seg.onnx --batch=1 --saveEngine=./yolov8m-seg.trt --workspace=8192 --fp16 >> ./yolov8m-seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov8x-seg.onnx --batch=1 --saveEngine=./yolov8x-seg.trt --workspace=8192 --fp16 >> ./yolov8x-seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov8n-seg.onnx --batch=1 --saveEngine=./yolov8n-seg.trt --workspace=8192 --fp16 >> ./yolov8n-seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov8l-seg.onnx --batch=1 --saveEngine=./yolov8l-seg.trt --workspace=8192 --fp16 >> ./yolov8l-seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov8s-seg.onnx --batch=1 --saveEngine=./yolov8s-seg.trt --workspace=8192 --fp16 >> ./yolov8s-seg.log
/usr/src/tensorrt/bin/trtexec --onnx=./yolov9-c-seg-converted.onnx --saveEngine=./yolov9-c-seg-converted.trt --workspace=12288 --fp16 >> yolov9-c-seg-converted.log
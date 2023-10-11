# Export & test [YOLOv7-Seg](https://github.com/hiennguyen9874/yolov7-seg.git)

## Download models

- Download weights from [link](https://github.com/WongKinYiu/yolov7/releases/tag/v0.1)

## Test mAP

### Export for test mAP

- YOLOv7-seg: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov7-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup`

- YOLOv7-seg-dev: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov7-seg-dev.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup`

- YOLOv7-seg-x: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov7x-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup`

### Test mAP using [YOLOv5-seg](https://github.com/hiennguyen9874/yolov5-seg-new)

- YOLOv7-seg: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov7-seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.001 --iou-thres 0.65 --max-det 300 --task val --device cpu`

- YOLOv7-seg-dev: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov7-seg-dev.onnx --batch-size 1 --imgsz 640 --conf-thres 0.001 --iou-thres 0.65 --max-det 300 --task val --device cpu`

- YOLOv7-seg-x: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov7x-seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.001 --iou-thres 0.65 --max-det 300 --task val --device cpu`

## Test FPS

### Export for test FPS

- YOLOv7-seg: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov7-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --end2end --trt --mask-resolution 56 --roi-align`

- YOLOv7-seg-dev: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov7-seg-dev.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --end2end --trt --mask-resolution 56 --roi-align`

- YOLOv7-seg-x: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov7x-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --end2end --trt --mask-resolution 56 --roi-align`

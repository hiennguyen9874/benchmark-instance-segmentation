# Export & test [YOLOv5-Seg](https://github.com/ultralytics/yolov5/releases/tag/v7.0)

## Test mAP

### Export for test mAP

- YOLOv5-seg-l: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov5l-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --dynamic-batch --simplify --opset 14 --nms --cleanup`
- YOLOv5-seg-m: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov5m-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --dynamic-batch --simplify --opset 14 --nms --cleanup`
- YOLOv5-seg-n: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov5n-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --dynamic-batch --simplify --opset 14 --nms --cleanup`
- YOLOv5-seg-s: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov5s-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --dynamic-batch --simplify --opset 14 --nms --cleanup`
- YOLOv5-seg-x: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov5x-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --dynamic-batch --simplify --opset 14 --nms --cleanup`

### Test mAP using [YOLOv5-seg](https://github.com/hiennguyen9874/yolov5-seg-new)

- YOLOv5-seg-l: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov5l-seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.001 --iou-thres 0.65 --max-det 300 --task val --device cpu`
- YOLOv5-seg-m: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov5m-seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.001 --iou-thres 0.65 --max-det 300 --task val --device cpu`
- YOLOv5-seg-n: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov5n-seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.001 --iou-thres 0.65 --max-det 300 --task val --device cpu`
- YOLOv5-seg-s: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov5s-seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.001 --iou-thres 0.65 --max-det 300 --task val --device cpu`
- YOLOv5-seg-x: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov5x-seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.001 --iou-thres 0.65 --max-det 300 --task val --device cpu`

## Test FPS

### Export for test FPS

- YOLOv5-seg-l: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov5l-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --dynamic-batch --simplify --opset 14 --nms --cleanup --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --end2end --trt --mask-resolution 56 --roi-align`
- YOLOv5-seg-m: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov5m-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --dynamic-batch --simplify --opset 14 --nms --cleanup --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --end2end --trt --mask-resolution 56 --roi-align`
- YOLOv5-seg-n: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov5n-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --dynamic-batch --simplify --opset 14 --nms --cleanup --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --end2end --trt --mask-resolution 56 --roi-align`
- YOLOv5-seg-s: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov5s-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --dynamic-batch --simplify --opset 14 --nms --cleanup --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --end2end --trt --mask-resolution 56 --roi-align`
- YOLOv5-seg-x: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov5x-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --dynamic-batch --simplify --opset 14 --nms --cleanup --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --end2end --trt --mask-resolution 56 --roi-align`

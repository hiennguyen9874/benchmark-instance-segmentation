# Export & test [YOLOv8-Seg](https://github.com/hiennguyen9874/yolov8-seg)

## Test mAP

### Export for test mAP

- YOLOv8-seg-n: `python3 export.py --weights yolov8n-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup`

- YOLOv8-seg-s: `python3 export.py --weights yolov8s-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup`

- YOLOv8-seg-m: `python3 export.py --weights yolov8m-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup`

- YOLOv8-seg-l: `python3 export.py --weights yolov8l-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup`

- YOLOv8-seg-x: `python3 export.py --weights yolov8x-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup`

### Test mAP using [YOLOv5-seg](https://github.com/hiennguyen9874/yolov5-seg-new)

- YOLOv8-seg-n: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov8n-seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.001 --iou-thres 0.65 --max-det 300 --task val --device cpu`

- YOLOv8-seg-s: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov8s-seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.001 --iou-thres 0.65 --max-det 300 --task val --device cpu`

- YOLOv8-seg-m: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov8m-seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.001 --iou-thres 0.65 --max-det 300 --task val --device cpu`

- YOLOv8-seg-l: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov8l-seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.001 --iou-thres 0.65 --max-det 300 --task val --device cpu`

- YOLOv8-seg-x: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov8x-seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.001 --iou-thres 0.65 --max-det 300 --task val --device cpu`

## Test FPS

### Export for test FPS

- YOLOv8-seg-n: `python3 export.py --weights yolov8n-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --end2end --trt --mask-resolution 56 --roi-align`

- YOLOv8-seg-s: `python3 export.py --weights yolov8s-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --end2end --trt --mask-resolution 56 --roi-align`

- YOLOv8-seg-m: `python3 export.py --weights yolov8m-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --end2end --trt --mask-resolution 56 --roi-align`

- YOLOv8-seg-l: `python3 export.py --weights yolov8l-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --end2end --trt --mask-resolution 56 --roi-align`

- YOLOv8-seg-x: `python3 export.py --weights yolov8x-seg.pt --imgsz 640 640 --batch-size 1 --device 1 --dynamic --simplify --opset 14 --dynamic-batch --cleanup --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --end2end --trt --mask-resolution 56 --roi-align`
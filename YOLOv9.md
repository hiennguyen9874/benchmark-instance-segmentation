# Export & test [YOLOv9](https://github.com/hiennguyen9874/yolov9)

## Test mAP

### Export for test mAP

- YOLOv9-c-seg: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov9-c-seg-converted.pt --img 640 640 --batch-size 1 --simplify --include onnx --cleanup --dynamic-batch --yolov5-output`

### Test mAP using [YOLOv5-seg](https://github.com/hiennguyen9874/yolov5-seg-new)

- YOLOv8-seg-x: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov9-c-seg-converted.onnx --batch-size 1 --imgsz 640 --conf-thres 0.001 --iou-thres 0.65 --max-det 300 --task val --device cpu`

## Test FPS

### Export for test FPS

- YOLOv9-c-seg: `python3 segment/export.py --data ./data/coco.yaml --weights ./weights/yolov9-c-seg-converted.pt --img 640 640 --batch-size 1 --simplify --include onnx --cleanup --dynamic-batch --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --end2end --trt --mask-resolution 56 --roi-align`

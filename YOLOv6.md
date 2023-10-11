# Export & test [YOLOv6-seg](https://github.com/hiennguyen9874/YOLOv6-seg)

## Download models

- Download weight from [YOLOv6](https://github.com/meituan/YOLOv6/tree/yolov6-seg#performance-on-mscoco)

## Test mAP

### Export for test mAP

- YOLOv6-Seg-m: `python3 deploy/ONNX-seg/export_onnx.py --weights ./weights/yolov6m_seg.pt --img-size 640 640 --batch-size 1 --simplify --dynamic-batch --device 1 --cleanup --opset 14`

- YOLOv6-Seg-l: `python3 deploy/ONNX-seg/export_onnx.py --weights ./weights/yolov6l_seg.pt --img-size 640 640 --batch-size 1 --simplify --dynamic-batch --device 1 --cleanup --opset 14`

- YOLOv6-Seg-x: `python3 deploy/ONNX-seg/export_onnx.py --weights ./weights/yolov6x_seg.pt --img-size 640 640 --batch-size 1 --simplify --dynamic-batch --device 1 --cleanup --opset 14`

### Test mAP using [YOLOv5-seg](https://github.com/hiennguyen9874/yolov5-seg-new)

- YOLOv6-Seg-m: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov6m_seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.03 --iou-thres 0.65 --max-det 300 --task val --device cpu`

- YOLOv6-Seg-l: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov6l_seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.03 --iou-thres 0.65 --max-det 300 --task val --device cpu`

- YOLOv6-Seg-x: `python3 segment/val.py --data ./data/coco.yaml --weights ./weights/yolov6x_seg.onnx --batch-size 1 --imgsz 640 --conf-thres 0.03 --iou-thres 0.65 --max-det 300 --task val --device cpu`

## Test FPS

### Export for test FPS

- YOLOv6-Seg-m: `python3 deploy/ONNX-seg/export_onnx.py --weights ./weights/yolov6m_seg.pt --img-size 640 640 --batch-size 1 --simplify --dynamic-batch --device 1 --cleanup --opset 14 --end2end --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --trt --mask-resolution 56 --roi-align`

- YOLOv6-Seg-l: `python3 deploy/ONNX-seg/export_onnx.py --weights ./weights/yolov6l_seg.pt --img-size 640 640 --batch-size 1 --simplify --dynamic-batch --device 1 --cleanup --opset 14 --end2end --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --trt --mask-resolution 56 --roi-align`

- YOLOv6-Seg-x: `python3 deploy/ONNX-seg/export_onnx.py --weights ./weights/yolov6x_seg.pt --img-size 640 640 --batch-size 1 --simplify --dynamic-batch --device 1 --cleanup --opset 14 --end2end --topk-all 100 --iou-thres 0.65 --conf-thres 0.45 --trt --mask-resolution 56 --roi-align`
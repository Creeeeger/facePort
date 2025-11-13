.class public final Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

.field public mClosestDataSetToTouch:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

.field public mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

.field public mDecelerationLastTime:J

.field public mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

.field public mDragTriggerDist:F

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

.field public mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

.field public mMatrix:Landroid/graphics/Matrix;

.field public mMinScalePointerDistance:F

.field public mSavedDist:F

.field public mSavedMatrix:Landroid/graphics/Matrix;

.field public mSavedXDist:F

.field public mSavedYDist:F

.field public mTouchMode:I

.field public mTouchPointCenter:Lcom/github/mikephil/charting/utils/MPPointF;

.field public mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

.field public mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static spacing(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public final endAction(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGestureListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChartGestureEnd  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiApClientsWeeklyBarChart"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final getTrans(FF)Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->inverted()V

    iget-object p0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p2

    iget p2, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mChartHeight:F

    iget-object v0, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mContentRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    sub-float/2addr p0, p2

    neg-float p0, p0

    invoke-static {p1, p0}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object p0

    return-object p0
.end method

.method public final inverted()V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mClosestDataSetToTouch:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mClosestDataSetToTouch:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v0, v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    :cond_1
    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 10

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->DOUBLE_TAP:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGestureListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    const-string v1, "WifiApClientsWeeklyBarChart"

    if-eqz v0, :cond_0

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    const-string v2, "onChartDoubleTapped  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-boolean v3, v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getEntryCount()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->getTrans(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v2

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-boolean v4, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3fb33333    # 1.4f

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    iget-boolean v7, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    if-eqz v7, :cond_2

    move v5, v6

    :cond_2
    iget v6, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v7, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v8, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    neg-float v7, v7

    iget-object v9, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    iget-object v8, v8, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMatrixTouch:Landroid/graphics/Matrix;

    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v9, v4, v5, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v4, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v5, v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)V

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->postInvalidate()V

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    const-string v0, "onChartScale  "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Lcom/github/mikephil/charting/utils/MPPointF;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    :cond_4
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->FLING:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGestureListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    const-string v0, "WifiApClientsWeeklyBarChart"

    const-string v1, "onChartFling  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    sget-object p1, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->LONG_PRESS:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object p1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object p0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object p0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGestureListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    const-string p0, "WifiApClientsWeeklyBarChart"

    const-string p1, "onChartLongPressed  "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->SINGLE_TAP:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGestureListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->mSingleTapEnable:Z

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    const-string v0, "WifiApClientsWeeklyBarChart"

    const-string v2, "onChartSingleTapped  "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-boolean v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighLightPerTapEnabled:Z

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/highlight/Highlight;->equalTo(Lcom/github/mikephil/charting/highlight/Highlight;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v2, v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    iput-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    :goto_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-boolean v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    const/4 v4, 0x0

    if-nez v3, :cond_4

    iget-boolean v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    :goto_0
    move v3, p1

    :goto_1
    if-nez v3, :cond_5

    iget-boolean v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    if-nez v3, :cond_5

    iget-boolean v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    if-nez v0, :cond_5

    return p1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    const-string v5, "WifiApClientsWeeklyBarChart"

    if-eqz v0, :cond_33

    const/16 v6, 0x3e8

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x2

    if-eq v0, p1, :cond_2c

    if-eq v0, v9, :cond_11

    if-eq v0, v2, :cond_10

    if-eq v0, v8, :cond_a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    goto/16 :goto_11

    :cond_6
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    sget v1, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    :goto_2
    if-ge v4, v6, :cond_9

    if-ne v4, v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    mul-float/2addr v9, v5

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    mul-float/2addr v7, v2

    add-float/2addr v7, v9

    cmpg-float v7, v7, v3

    if-gez v7, :cond_8

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_4

    :cond_8
    :goto_3
    add-int/2addr v4, p1

    goto :goto_2

    :cond_9
    :goto_4
    iput v8, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    goto/16 :goto_11

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v9, :cond_35

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_b
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->saveTouchStart(Landroid/view/MotionEvent;)V

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedXDist:F

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedYDist:F

    invoke-static {p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedDist:F

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-boolean v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    iget-boolean v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    if-eq v1, v0, :cond_d

    if-eqz v1, :cond_c

    move v2, v9

    :cond_c
    iput v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    goto :goto_5

    :cond_d
    iget v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedXDist:F

    iget v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedYDist:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    move v2, v9

    :cond_e
    iput v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchPointCenter:Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    add-float/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    iput v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    div-float/2addr p2, v1

    iput p2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    goto/16 :goto_11

    :cond_10
    iput v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->endAction(Landroid/view/MotionEvent;)V

    goto/16 :goto_11

    :cond_11
    iget v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-ne v0, p1, :cond_15

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_12
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-boolean v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v1, v1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float/2addr v0, v1

    goto :goto_6

    :cond_13
    move v0, v3

    :goto_6
    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-boolean v1, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    if-eqz v1, :cond_14

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v1, v1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float v3, p2, v1

    :cond_14
    invoke-virtual {p0, v0, v3}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->performDrag(FF)V

    goto/16 :goto_11

    :cond_15
    const/high16 v1, 0x3f800000    # 1.0f

    if-eq v0, v9, :cond_1c

    if-eq v0, v2, :cond_1c

    if-ne v0, v7, :cond_16

    goto/16 :goto_7

    :cond_16
    if-nez v0, :cond_35

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v2, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v5, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v5, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float/2addr v0, v2

    sub-float/2addr v3, v5

    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v3, v0

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDragTriggerDist:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_35

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-boolean v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    if-nez v2, :cond_17

    iget-boolean v2, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    if-eqz v2, :cond_35

    :cond_17
    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v2, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v3, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_18

    cmpl-float v2, v3, v1

    if-gtz v2, :cond_18

    move v4, p1

    :cond_18
    sget-object v2, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->DRAG:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    if-eqz v4, :cond_19

    iget v3, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    iget v4, v0, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_19

    cmpl-float v1, v4, v1

    if-gtz v1, :cond_19

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-boolean v1, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    if-eqz v1, :cond_35

    iput-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    if-eqz v1, :cond_35

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v0, v1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object p2

    if-eqz p2, :cond_35

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/highlight/Highlight;->equalTo(Lcom/github/mikephil/charting/highlight/Highlight;)Z

    move-result v0

    if-nez v0, :cond_35

    iput-object p2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastHighlighted:Lcom/github/mikephil/charting/highlight/Highlight;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0, p2, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;Z)V

    goto/16 :goto_11

    :cond_19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v1, v1, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v1, v1, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-boolean v3, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    if-nez v3, :cond_1a

    cmpl-float v3, p2, v0

    if-ltz v3, :cond_35

    :cond_1a
    iget-boolean v1, v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    if-nez v1, :cond_1b

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_35

    :cond_1b
    iput-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput p1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    goto/16 :goto_11

    :cond_1c
    :goto_7
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1d
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-boolean v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    if-nez v3, :cond_1e

    iget-boolean v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    if-eqz v0, :cond_35

    :cond_1e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v0, v9, :cond_35

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGestureListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    invoke-static {p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->spacing(Landroid/view/MotionEvent;)F

    move-result v3

    iget v6, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMinScalePointerDistance:F

    cmpl-float v6, v3, v6

    if-lez v6, :cond_35

    iget-object v6, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchPointCenter:Lcom/github/mikephil/charting/utils/MPPointF;

    iget v8, v6, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v6, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {p0, v8, v6}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->getTrans(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v6

    iget-object v8, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v10, v8, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v11, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    const-string v12, "onChartScale  "

    if-ne v11, v7, :cond_27

    sget-object p2, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->PINCH_ZOOM:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object p2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget p2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedDist:F

    div-float/2addr v3, p2

    cmpg-float p2, v3, v1

    if-gez p2, :cond_1f

    move p2, p1

    goto :goto_8

    :cond_1f
    move p2, v4

    :goto_8
    if-eqz p2, :cond_21

    iget v2, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v7, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_20

    :goto_9
    move v2, p1

    goto :goto_a

    :cond_20
    move v2, v4

    goto :goto_a

    :cond_21
    iget v2, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v7, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    cmpg-float v2, v2, v7

    if-gez v2, :cond_20

    goto :goto_9

    :goto_a
    if-eqz p2, :cond_22

    iget p2, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    iget v7, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    cmpl-float p2, p2, v7

    if-lez p2, :cond_23

    :goto_b
    move v4, p1

    goto :goto_c

    :cond_22
    iget p2, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    iget v7, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    cmpg-float p2, p2, v7

    if-gez p2, :cond_23

    goto :goto_b

    :cond_23
    :goto_c
    iget-boolean p2, v8, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    if-eqz p2, :cond_24

    move p2, v3

    goto :goto_d

    :cond_24
    move p2, v1

    :goto_d
    iget-boolean v7, v8, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    if-eqz v7, :cond_25

    move v1, v3

    :cond_25
    if-nez v4, :cond_26

    if-eqz v2, :cond_2b

    :cond_26
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget v3, v6, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v4, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v2, p2, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz v0, :cond_2b

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_27
    if-ne v11, v9, :cond_29

    iget-boolean v3, v8, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    if-eqz v3, :cond_29

    sget-object v2, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->X_ZOOM:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedXDist:F

    div-float/2addr p2, v2

    cmpg-float v2, p2, v1

    if-gez v2, :cond_28

    iget v2, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v3, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2b

    goto :goto_e

    :cond_28
    iget v2, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleX:F

    iget v3, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2b

    :goto_e
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget v3, v6, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v4, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v2, p2, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz v0, :cond_2b

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_29
    if-ne v11, v2, :cond_2b

    iget-boolean v2, v8, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    if-eqz v2, :cond_2b

    sget-object v2, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->Y_ZOOM:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedYDist:F

    div-float/2addr p2, v2

    cmpg-float v2, p2, v1

    if-gez v2, :cond_2a

    iget v2, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    iget v3, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMinScaleY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2b

    goto :goto_f

    :cond_2a
    iget v2, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mScaleY:F

    iget v3, v10, Lcom/github/mikephil/charting/utils/ViewPortHandler;->mMaxScaleY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2b

    :goto_f
    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget v3, v6, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v4, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v2, v1, p2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    if-eqz v0, :cond_2b

    sget-object p2, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_10
    sget-object p2, Lcom/github/mikephil/charting/utils/MPPointF;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {p2, v6}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    goto/16 :goto_11

    :cond_2c
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    sget v10, Lcom/github/mikephil/charting/utils/Utils;->mMaximumFlingVelocity:I

    int-to-float v10, v10

    invoke-virtual {v0, v6, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v10, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    int-to-float v10, v10

    cmpl-float v5, v5, v10

    if-gtz v5, :cond_2d

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v10, Lcom/github/mikephil/charting/utils/Utils;->mMinimumFlingVelocity:I

    int-to-float v10, v10

    cmpl-float v5, v5, v10

    if-lez v5, :cond_2e

    :cond_2d
    iget v5, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-ne v5, p1, :cond_2e

    iget-object v5, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-boolean v5, v5, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragDecelerationEnabled:Z

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iput v3, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput v3, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationLastTime:J

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationCurrentPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v3, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iput v0, v3, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput v6, v3, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_2e
    iget v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    if-eq v0, v9, :cond_2f

    if-eq v0, v2, :cond_2f

    if-eq v0, v7, :cond_2f

    if-ne v0, v8, :cond_30

    :cond_2f
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    :cond_30
    iput v4, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchMode:I

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_31
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_32
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->endAction(Landroid/view/MotionEvent;)V

    goto :goto_11

    :cond_33
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGestureListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    if-eqz v0, :cond_34

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    const-string v1, "onChartGestureStart  "

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_34
    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mDecelerationVelocity:Lcom/github/mikephil/charting/utils/MPPointF;

    iput v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iput v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->saveTouchStart(Landroid/view/MotionEvent;)V

    :cond_35
    :goto_11
    iget-object p2, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v0, p2, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p2, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)V

    iput-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    return p1
.end method

.method public final performDrag(FF)V
    .locals 2

    sget-object v0, Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;->DRAG:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iput-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mLastGesture:Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGestureListener:Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart$1;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->inverted()V

    iget-object p0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/barchart/WifiApClientsWeeklyBarChart;->STACKED_BAR_COLORS:[I

    const-string p0, "WifiApClientsWeeklyBarChart"

    const-string p1, "onChartTranslate  "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final saveTouchStart(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mSavedMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mTouchStartPoint:Lcom/github/mikephil/charting/utils/MPPointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v0, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mChart:Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    iget p1, p1, Lcom/github/mikephil/charting/highlight/Highlight;->mDataSetIndex:I

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->mClosestDataSetToTouch:Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;

    return-void
.end method

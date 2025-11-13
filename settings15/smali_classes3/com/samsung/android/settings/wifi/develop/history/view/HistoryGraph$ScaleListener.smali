.class public final Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iget v2, v1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleFactor:F

    mul-float/2addr v2, v0

    const v3, 0x47c35000    # 100000.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleFactor:F

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iget v1, v1, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleFactor:F

    cmpl-float v2, v1, v4

    if-lez v2, :cond_0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    sub-float/2addr v0, p1

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

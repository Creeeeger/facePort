.class Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "HistoryGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;-><init>(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 455
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 456
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->-$$Nest$fgetmScaleFactor(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;)F

    move-result v2

    mul-float/2addr v2, v0

    const v3, 0x47c35000    # 100000.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->-$$Nest$fputmScaleFactor(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;F)V

    .line 457
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->-$$Nest$fgetmScaleFactor(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->-$$Nest$fgetmScaleFactor(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 458
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result p1

    .line 459
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->-$$Nest$fgetmPosX(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;)F

    move-result v1

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    sub-float/2addr v0, p1

    .line 461
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->-$$Nest$fgetmPosX(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;)F

    move-result v1

    sub-float/2addr v1, v0

    invoke-static {p1, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->-$$Nest$fputmPosX(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;F)V

    .line 462
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

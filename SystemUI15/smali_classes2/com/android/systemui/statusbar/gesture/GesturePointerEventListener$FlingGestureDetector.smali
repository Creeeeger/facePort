.class public final Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mOverscroller:Landroid/widget/OverScroller;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$FlingGestureDetector;->this$0:Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Landroid/widget/OverScroller;

    iget-object p1, p1, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$FlingGestureDetector;->this$0:Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;

    iget-wide v3, v3, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mLastFlingTime:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const/16 v5, 0x1388

    int-to-long v7, v5

    add-long/2addr v3, v7

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_0
    iget-object v7, v0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    move/from16 v3, p3

    float-to-int v10, v3

    move/from16 v3, p4

    float-to-int v11, v3

    const/high16 v14, -0x80000000

    const v15, 0x7fffffff

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v12, -0x80000000

    const v13, 0x7fffffff

    invoke-virtual/range {v7 .. v15}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getDuration()I

    iget-object v0, v0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$FlingGestureDetector;->this$0:Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;

    iput-wide v1, v0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mLastFlingTime:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v6
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {p0, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_0
    return v0
.end method

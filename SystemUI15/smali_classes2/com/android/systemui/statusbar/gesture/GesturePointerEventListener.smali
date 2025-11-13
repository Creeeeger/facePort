.class public final Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$Companion;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDebugFireable:Z

.field public final mDisplayCutoutTouchableRegionSize:I

.field public final mDownPointerId:[I

.field public mDownPointers:I

.field public final mDownTime:[J

.field public final mDownX:[F

.field public final mDownY:[F

.field public mFlingGestureDetector:Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$start$2;

.field public final mGestureDetector:Lcom/android/systemui/statusbar/gesture/GesturePointerEventDetector;

.field public final mHandler:Landroid/os/Handler;

.field public mLastFlingTime:J

.field public mMouseHoveringAtBottom:Z

.field public mMouseHoveringAtLeft:Z

.field public mMouseHoveringAtRight:Z

.field public mMouseHoveringAtTop:Z

.field public final mSwipeDistanceThreshold:I

.field public mSwipeFireable:Z

.field public final mSwipeStartThreshold:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->Companion:Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/gesture/GesturePointerEventDetector;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownPointerId:[I

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownX:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownY:[F

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownTime:[J

    sget-object v1, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->Companion:Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$Companion;

    const-string v2, "context"

    invoke-static {v1, v2, p1}, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$Companion;->access$checkNull(Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$Companion;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mContext:Landroid/content/Context;

    const-string v2, "gesture detector"

    invoke-static {v1, v2, p2}, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$Companion;->access$checkNull(Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$Companion;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mGestureDetector:Lcom/android/systemui/statusbar/gesture/GesturePointerEventDetector;

    sget-boolean p2, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1050574

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    const v1, 0x1050573

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mSwipeDistanceThreshold:I

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_4

    const v1, 0x1050182

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p2, p1, p2

    if-eqz p2, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget v2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr p2, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->left:I

    :cond_1
    const/4 p2, 0x1

    aget-object p2, p1, p2

    if-eqz p2, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget v2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr p2, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->top:I

    :cond_2
    const/4 p2, 0x2

    aget-object p2, p1, p2

    if-eqz p2, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget v2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr p2, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->right:I

    :cond_3
    const/4 p2, 0x3

    aget-object p1, p1, p2

    if-eqz p1, :cond_4

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDisplayCutoutTouchableRegionSize:I

    add-int/2addr p1, p0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final captureDown(Landroid/view/MotionEvent;I)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->findIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, v1, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    aput-wide p1, p0, v0

    :cond_0
    return-void
.end method

.method public final detectSwipe(FFJI)I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownX:[F

    aget v0, v0, p5

    iget-object v1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownY:[F

    aget v1, v1, p5

    iget-object v2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownTime:[J

    aget-wide v2, v2, p5

    sub-long/2addr p3, v2

    iget-object p5, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mSwipeStartThreshold:Landroid/graphics/Rect;

    iget v2, p5, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    const-wide/16 v3, 0x1f4

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    cmp-long v2, p3, v3

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget v2, p5, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    rsub-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float p2, p2, v1

    if-gez p2, :cond_1

    cmp-long p2, p3, v3

    if-gez p2, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget p2, p5, Landroid/graphics/Rect;->right:I

    rsub-int/lit8 p2, p2, 0x0

    int-to-float p2, p2

    cmpl-float p2, v0, p2

    if-ltz p2, :cond_2

    iget p2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p2, p2

    sub-float p2, v0, p2

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    cmp-long p2, p3, v3

    if-gez p2, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    iget p2, p5, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_3

    iget p0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpl-float p0, p1, v0

    if-lez p0, :cond_3

    cmp-long p0, p3, v3

    if-gez p0, :cond_3

    const/4 v5, 0x4

    :cond_3
    return v5
.end method

.method public final findIndex(I)I
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownPointers:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownPointerId:[I

    if-ge v1, v0, :cond_1

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownPointers:I

    const/16 v1, 0x20

    const/4 v3, -0x1

    if-eq v0, v1, :cond_3

    if-ne p1, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mDownPointers:I

    aput p1, v2, v0

    return v0

    :cond_3
    :goto_1
    return v3
.end method

.method public final start()V
    .locals 4

    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$start$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$start$1;-><init>(Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mGestureDetector:Lcom/android/systemui/statusbar/gesture/GesturePointerEventDetector;

    const-string v2, "GesturePointerEventHandler"

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->addOnGestureDetectedCallback(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->startGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$FlingGestureDetector;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$FlingGestureDetector;-><init>(Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$start$2;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$start$2;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$FlingGestureDetector;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener;->mFlingGestureDetector:Lcom/android/systemui/statusbar/gesture/GesturePointerEventListener$start$2;

    return-void
.end method

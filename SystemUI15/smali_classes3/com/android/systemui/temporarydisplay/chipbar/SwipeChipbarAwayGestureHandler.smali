.class public final Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;
.super Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public viewFetcher:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;)V
    .locals 1

    const-string v0, "SwipeChipbarAway"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;Ljava/lang/String;)V

    sget-object p1, Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler$viewFetcher$1;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler$viewFetcher$1;

    iput-object p1, p0, Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;->viewFetcher:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final startOfGestureIsWithinBounds(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;->viewFetcher:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-double v1, p1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    int-to-double p0, p0

    mul-double/2addr p0, v3

    cmpg-double p0, v1, p0

    if-gtz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

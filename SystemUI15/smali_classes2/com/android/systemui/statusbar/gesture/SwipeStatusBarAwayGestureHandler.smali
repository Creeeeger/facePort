.class public final Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;
.super Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V
    .locals 1

    const-string v0, "SwipeStatusBarAway"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    return-void
.end method


# virtual methods
.method public final startOfGestureIsWithinBounds(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iget v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mBarHeight:I

    mul-int/lit8 p0, p0, 0x3

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

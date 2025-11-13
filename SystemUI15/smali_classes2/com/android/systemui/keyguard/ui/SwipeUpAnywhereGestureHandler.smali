.class public final Lcom/android/systemui/keyguard/ui/SwipeUpAnywhereGestureHandler;
.super Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;)V
    .locals 1

    const-string v0, "SwipeUpAnywhereGestureHandler"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/gesture/SwipeUpGestureHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/gesture/SwipeUpGestureLogger;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final startOfGestureIsWithinBounds(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

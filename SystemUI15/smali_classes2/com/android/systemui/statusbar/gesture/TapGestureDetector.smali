.class public final Lcom/android/systemui/statusbar/gesture/TapGestureDetector;
.super Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public gestureDetector:Landroid/view/GestureDetector;

.field public final gestureListener:Lcom/android/systemui/statusbar/gesture/TapGestureDetector$gestureListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 1

    const-class p2, Lcom/android/systemui/statusbar/gesture/TapGestureDetector;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/gesture/TapGestureDetector;->context:Landroid/content/Context;

    new-instance p1, Lcom/android/systemui/statusbar/gesture/TapGestureDetector$gestureListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/gesture/TapGestureDetector$gestureListener$1;-><init>(Lcom/android/systemui/statusbar/gesture/TapGestureDetector;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/gesture/TapGestureDetector;->gestureListener:Lcom/android/systemui/statusbar/gesture/TapGestureDetector$gestureListener$1;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/gesture/TapGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final startGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->startGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/gesture/TapGestureDetector;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/gesture/TapGestureDetector;->gestureListener:Lcom/android/systemui/statusbar/gesture/TapGestureDetector$gestureListener$1;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/gesture/TapGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public final stopGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->stopGestureListening$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/gesture/TapGestureDetector;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

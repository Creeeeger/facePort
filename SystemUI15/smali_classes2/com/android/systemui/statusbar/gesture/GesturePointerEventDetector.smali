.class public final Lcom/android/systemui/statusbar/gesture/GesturePointerEventDetector;
.super Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 0

    const-class p1, Lcom/android/systemui/statusbar/gesture/GesturePointerEventDetector;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->onGestureDetected$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/MotionEvent;)V

    return-void
.end method

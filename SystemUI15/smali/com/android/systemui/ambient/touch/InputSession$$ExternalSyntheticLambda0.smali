.class public final synthetic Lcom/android/systemui/ambient/touch/InputSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ambient/touch/InputSession;

.field public final synthetic f$1:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ambient/touch/InputSession;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/InputSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ambient/touch/InputSession;

    iput-object p2, p0, Lcom/android/systemui/ambient/touch/InputSession$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

    iput-boolean p3, p0, Lcom/android/systemui/ambient/touch/InputSession$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/InputSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ambient/touch/InputSession;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/ambient/touch/InputSession$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;->onInputEvent(Landroid/view/InputEvent;)V

    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/ambient/touch/InputSession;->mGestureDetector:Landroid/view/GestureDetector;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/ambient/touch/InputSession$$ExternalSyntheticLambda0;->f$2:Z

    if-eqz p0, :cond_1

    iget-boolean p0, v0, Lcom/android/systemui/ambient/touch/InputSession;->mPilfering:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/systemui/ambient/touch/InputSession;->mPilfering:Z

    iget-object p0, v0, Lcom/android/systemui/ambient/touch/InputSession;->mInputMonitor:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object p0, p0, Lcom/android/systemui/shared/system/InputMonitorCompat;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    :cond_1
    return-void
.end method

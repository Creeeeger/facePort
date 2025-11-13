.class public final synthetic Lcom/android/systemui/ambient/touch/ShadeTouchHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ambient/touch/ShadeTouchHandler;

.field public final synthetic f$1:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ambient/touch/ShadeTouchHandler;Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ambient/touch/ShadeTouchHandler;

    iput-object p2, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/ambient/touch/ShadeTouchHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler;->mCapture:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-static {}, Lcom/android/systemui/Flags;->communalHub()V

    iget-object v0, v0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler;->mShadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    invoke-interface {v0, v1}, Lcom/android/systemui/shade/ShadeViewController;->handleExternalTouch(Landroid/view/MotionEvent;)Z

    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/ShadeTouchHandler$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    invoke-virtual {p0}, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->pop()V

    :cond_1
    return-void
.end method

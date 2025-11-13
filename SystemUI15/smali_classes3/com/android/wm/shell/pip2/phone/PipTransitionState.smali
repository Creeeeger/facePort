.class public final Lcom/android/wm/shell/pip2/phone/PipTransitionState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallbacks:Ljava/util/List;

.field public mInSwipePipToHomeTransition:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public mPinnedTaskLeash:Landroid/view/SurfaceControl;

.field public mPipTaskToken:Landroid/window/WindowContainerToken;

.field public mState:I

.field public final mSwipePipToHomeAppBounds:Landroid/graphics/Rect;

.field public mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mSwipePipToHomeAppBounds:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mCallbacks:Ljava/util/List;

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown state: "

    invoke-static {p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "exited-pip"

    return-object p0

    :pswitch_1
    const-string p0, "exiting-pip"

    return-object p0

    :pswitch_2
    const-string p0, "changed-bounds"

    return-object p0

    :pswitch_3
    const-string p0, "changing-bounds"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "scheduled_bounds_change"

    return-object p0

    :pswitch_5
    const-string p0, "entered-pip"

    return-object p0

    :pswitch_6
    const-string p0, "entering-pip"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "swiping_to_pip"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "undefined"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addPipTransitionStateChangedListener(Lcom/android/wm/shell/pip2/phone/PipTransitionState$PipTransitionStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setState(ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No extra bundle for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mState:I

    if-eq v0, p1, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, p2}, Lcom/android/wm/shell/pip2/phone/PipTransitionState$$ExternalSyntheticLambda0;-><init>(IILandroid/os/Bundle;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iput p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mState:I

    :cond_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mState:I

    invoke-static {v0}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mInSwipePipToHomeTransition:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PipTransitionState(mState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mInSwipePipToHomeTransition="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

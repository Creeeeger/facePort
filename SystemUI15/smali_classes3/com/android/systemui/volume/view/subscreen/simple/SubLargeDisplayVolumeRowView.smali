.class public Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

.field public mIconClickable:Z

.field public mIsDualViewEnabled:Z

.field public mIsKeyDownAnimating:Z

.field public mKeyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mKeyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final mKeyUpRunnable:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;

.field public mLabelTextView:Landroid/widget/TextView;

.field public mProgressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final mRecheckCallback:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;

.field public final mResources:Landroid/content/res/Resources;

.field public mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

.field public mStartProgress:Z

.field public final mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

.field public mStream:I

.field public mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mTouchDownIcon:Z

.field public mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mVibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

.field public mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;I)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mKeyUpRunnable:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;

    new-instance p1, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;I)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mRecheckCallback:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public static isTouched$1(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v3, v2

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    cmpg-float p1, p1, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    aget v0, v0, p1

    int-to-float v2, v0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-boolean v4, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStartProgress:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mTouchDownIcon:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIconClickable:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    invoke-static {v4, v0, v3}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->isTouched$1(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget v4, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mTouchDownIcon:Z

    iput-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStartProgress:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->isTouched$1(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mTouchDownIcon:Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    invoke-virtual {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final getStreamLabel$3(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getSmartViewLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRemoteLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isDynamic()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getNameRes()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, ""

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isRemoteMic()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x6

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    const v5, 0x7f131444

    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isBtScoOn()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p0

    if-eq p0, v3, :cond_4

    const/16 p1, 0x16

    if-eq p0, p1, :cond_4

    if-eq p0, v4, :cond_4

    const/16 p1, 0x15

    if-ne p0, p1, :cond_5

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    sget-object v0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$1;->$SwitchMap$com$samsung$systemui$splugins$volume$VolumePanelState$StateType:[I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/16 v5, 0x16

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIsDualViewEnabled:Z

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isKeyDown()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mKeyUpRunnable:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIsKeyDownAnimating:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isVibrating()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/volume/util/VibratorWrapper;->startKeyHaptic()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mKeyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mKeyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_2

    iget-boolean p1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_2
    const p1, 0x3f733333    # 0.95f

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_3
    iput-boolean v6, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIsKeyDownAnimating:Z

    goto/16 :goto_2

    :cond_4
    iget-boolean p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIsKeyDownAnimating:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mKeyUpRunnable:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mKeyUpRunnable:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSeekBarTouchUpAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIsDualViewEnabled:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_5

    iget-boolean p1, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_5
    if-eqz p0, :cond_6

    const p0, 0x3f83d70a    # 1.03f

    goto :goto_1

    :cond_6
    const p0, 0x3f866666    # 1.05f

    :goto_1
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    if-ne p1, v0, :cond_9

    iput-boolean v6, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStartProgress:Z

    goto/16 :goto_2

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    goto/16 :goto_2

    :pswitch_5
    iget p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    if-ne p1, v5, :cond_7

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_6
    iget p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    if-ne p1, v5, :cond_8

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_7
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result p1

    if-ne v0, p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mRecheckCallback:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mRecheckCallback:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_2

    :pswitch_8
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result p1

    if-ne v0, p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mRecheckCallback:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mRecheckCallback:Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda8;

    invoke-virtual {p1, p0, v1, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_2

    :pswitch_9
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v1

    if-ne v0, v1, :cond_9

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :pswitch_a
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    invoke-virtual {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    invoke-virtual {p1, p0, v6}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_9
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
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

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    return-void
.end method

.method public final updateContentDescription$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f13144d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f13144e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f13144c

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-eq v0, p2, :cond_4

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isMuted()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f13144f

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f131450

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

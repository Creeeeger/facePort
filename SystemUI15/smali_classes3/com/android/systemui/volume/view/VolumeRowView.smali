.class public final Lcom/android/systemui/volume/view/VolumeRowView;
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


# instance fields
.field public bluetoothDeviceIcon:Landroid/widget/ImageView;

.field public buttonAnimatorRunnable:Ljava/lang/Runnable;

.field public earProtectLevel:I

.field public handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public icon:Lcom/android/systemui/volume/view/icon/VPVolumeIcon;

.field public isAODEnabled:Z

.field public isDualViewEnabled:Z

.field public isIconClickable:Z

.field public label:Ljava/lang/String;

.field public final progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final recheckCallback:Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

.field public seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

.field public seekBarBackground:Landroid/view/ViewGroup;

.field public springFinalPosition:I

.field public startProgress:Z

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

.field public stream:I

.field public touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public touchDownIcon:Z

.field public touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

    sget-object p1, Lcom/android/systemui/volume/view/VolumeRowView$buttonAnimatorRunnable$1;->INSTANCE:Lcom/android/systemui/volume/view/VolumeRowView$buttonAnimatorRunnable$1;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->buttonAnimatorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

    sget-object p1, Lcom/android/systemui/volume/view/VolumeRowView$buttonAnimatorRunnable$1;->INSTANCE:Lcom/android/systemui/volume/view/VolumeRowView$buttonAnimatorRunnable$1;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->buttonAnimatorRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final animateSeekBarButton(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->buttonAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/systemui/volume/view/VolumeRowView$animateSeekBarButton$1;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/volume/view/VolumeRowView$animateSeekBarButton$1;-><init>(Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;Z)V

    iput-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->buttonAnimatorRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, p0

    :goto_1
    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/volume/view/VolumeRowView;->isIconClicked(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget v4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchDownIcon:Z

    iput-boolean v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->startProgress:Z

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VPVolumeIcon;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    move-object v3, v4

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v5, v6}, Lcom/android/systemui/volume/util/ViewUtil;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchDownIcon:Z

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move-object v4, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v4, v0, v1}, Lcom/android/systemui/volume/util/ViewUtil;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_5
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSmartView(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {v2, v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/view/VolumePanelMotion;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object p1, v0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    iput-object p5, p0, Lcom/android/systemui/volume/view/VolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    const p2, 0x7f0a0e7c

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/volume/view/VolumeSeekBar;

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    iget p5, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    iput p5, p2, Lcom/android/systemui/volume/view/VolumeSeekBar;->stream:I

    const/4 p5, 0x0

    iput-boolean p5, p2, Lcom/android/systemui/volume/view/VolumeSeekBar;->isTracking:Z

    iget-object p2, p2, Lcom/android/systemui/volume/view/VolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object p1, p2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p2}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    const p2, 0x7f0a0e3b

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/volume/view/icon/VPVolumeIcon;

    iput-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VPVolumeIcon;

    invoke-virtual {p2, p1, p4, p3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    const p1, 0x7f0a0e7d

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    invoke-static {p4}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isDualViewEnabled(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isDualViewEnabled:Z

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAodVolumePanel()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isAODEnabled:Z

    invoke-static {p3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result p1

    invoke-static {p3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMaxLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->semSetMin(I)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez p1, :cond_2

    move-object p1, v1

    :cond_2
    invoke-static {p3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez p2, :cond_3

    move-object p2, v1

    :cond_3
    invoke-virtual {p2, p1}, Lcom/android/systemui/volume/view/VolumeSeekBar;->setEnabled(Z)V

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconClickable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isIconClickable:Z

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSmartView(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getSmartViewLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getSmartViewLabel()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isDynamic()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRemoteLabel()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_5
    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getNameRes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget p2, Lkotlin/Result;->$r8$clinit:I

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_0
    instance-of p2, p1, Lkotlin/Result$Failure;

    if-eqz p2, :cond_6

    const-string p1, ""

    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isRemoteMic()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isBluetoothSco(I)Z

    move-result p2

    const v2, 0x7f131444

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_7
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMusic(I)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isBtScoOn()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_8
    :goto_1
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p2

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRemoteLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMusic(I)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isDualAudio(I)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isBluetoothSco(I)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMultiSound(I)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAudioSharing(I)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isVoiceCall(I)Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_a
    :goto_2
    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->label:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    move-result p1

    if-eqz p1, :cond_12

    iget p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAccessibility(I)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VPVolumeIcon;

    if-nez p1, :cond_b

    move-object p1, v1

    :cond_b
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto :goto_5

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VPVolumeIcon;

    if-nez p1, :cond_d

    move-object p1, v1

    :cond_d
    new-instance p2, Lcom/android/systemui/volume/view/VolumeRowView$initialize$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/VolumeRowView$initialize$1;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p4, p3}, Lcom/android/systemui/volume/view/VolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VPVolumeIcon;

    if-nez p1, :cond_e

    move-object p2, v1

    goto :goto_3

    :cond_e
    move-object p2, p1

    :goto_3
    if-nez p1, :cond_f

    move-object p1, v1

    :cond_f
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isIconClickable:Z

    if-eqz p1, :cond_10

    goto :goto_4

    :cond_10
    move v0, p5

    :goto_4
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :goto_5
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez p1, :cond_11

    move-object p1, v1

    :cond_11
    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->label:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_12
    const p1, 0x7f0a0e5b

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060adb

    invoke-static {v0, p2}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p3}, Lcom/android/systemui/volume/view/VolumeRowView;->updateBluetoothDeviceIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    const p1, 0x7f0a0e7e

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0a0e4c

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result p3

    const/4 v0, 0x0

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    if-nez p3, :cond_1e

    iget-boolean p3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isDualViewEnabled:Z

    if-eqz p3, :cond_13

    goto/16 :goto_b

    :cond_13
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result p3

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    move-result v3

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    move-result v4

    const v5, 0x7f0a0e6d

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-nez p3, :cond_15

    if-eqz v3, :cond_14

    goto :goto_6

    :cond_14
    const v7, 0x7f08081f

    goto :goto_7

    :cond_15
    :goto_6
    const v7, 0x7f080b5a

    :goto_7
    invoke-virtual {v6, v7, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p3, :cond_17

    if-nez v3, :cond_17

    if-eqz v4, :cond_16

    goto :goto_8

    :cond_16
    sget-object p3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p3, 0x8

    invoke-virtual {v5, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_17
    :goto_8
    sget-object p3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, p5}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    iget-object p3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez p3, :cond_18

    move-object p3, v1

    :cond_18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0814c2

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p4}, Lcom/android/systemui/volume/view/VolumeRowView;->updateProgressDrawable(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    sget-object p3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p3

    if-nez p3, :cond_1a

    sget-boolean p3, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez p3, :cond_19

    sget-boolean p3, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz p3, :cond_1a

    :cond_19
    const p3, 0x7f0814bc

    goto :goto_a

    :cond_1a
    const p3, 0x7f0814bb

    :goto_a
    iget-object p4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    if-nez p4, :cond_1b

    move-object p4, v1

    :cond_1b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    if-nez p3, :cond_1c

    move-object p3, v1

    :cond_1c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const v2, 0x7f0717ec

    invoke-static {v2, p4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenFloat(ILandroid/content/Context;)F

    move-result p4

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->setElevation(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f0717ed    # 1.7957E38f

    invoke-static {p4, p3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const v2, 0x7f0717ee

    invoke-static {v2, p4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p4

    invoke-virtual {p1, p3, p3, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0717ab

    invoke-static {p2, p1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VPVolumeIcon;

    if-nez p2, :cond_1d

    move-object p2, v1

    :cond_1d
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto/16 :goto_d

    :cond_1e
    :goto_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const v3, 0x7f0717d3

    invoke-static {v3, p3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const v4, 0x7f0717a2

    invoke-static {v4, p3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p3

    invoke-virtual {p1, p5, p5, p5, p3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iput p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0717d5

    invoke-static {p3, p2}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const v4, 0x7f0717d4

    invoke-static {v4, p3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VPVolumeIcon;

    if-nez v4, :cond_1f

    move-object v4, v1

    :cond_1f
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0717aa

    invoke-static {v6, v5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VPVolumeIcon;

    if-nez v4, :cond_20

    move-object v4, v1

    :cond_20
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0717ad

    invoke-static {v6, v5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VPVolumeIcon;

    if-nez v4, :cond_21

    move-object v4, v1

    :cond_21
    invoke-virtual {v4, p2, v3, p2, p3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez p2, :cond_22

    move-object p2, v1

    :cond_22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v2

    if-nez v2, :cond_24

    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez v2, :cond_23

    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz v2, :cond_24

    :cond_23
    const v2, 0x7f0814c0

    goto :goto_c

    :cond_24
    const v2, 0x7f0814bf

    :goto_c
    invoke-virtual {p3, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p4}, Lcom/android/systemui/volume/view/VolumeRowView;->updateProgressDrawable(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    if-nez p2, :cond_25

    move-object p2, v1

    :cond_25
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    if-nez p2, :cond_26

    move-object p2, v1

    :cond_26
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setElevation(F)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a0e80

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    sget-object p2, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez p1, :cond_27

    move-object p1, v1

    :cond_27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez p1, :cond_28

    move-object p1, v1

    :cond_28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    const/high16 p4, 0x43e10000    # 450.0f

    invoke-virtual {p2, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    iput-object p2, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput v0, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez p2, :cond_29

    goto :goto_e

    :cond_29
    move-object v1, p2

    :goto_e
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lcom/android/systemui/volume/view/VolumeRowView$initialize$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/volume/view/VolumeRowView$initialize$3;-><init>(Lcom/android/systemui/volume/view/VolumeRowView;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    return-void
.end method

.method public final isIconClicked(FF)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->startProgress:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchDownIcon:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VPVolumeIcon;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isIconClickable:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VPVolumeIcon;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, p2}, Lcom/android/systemui/volume/util/ViewUtil;->isTouched(Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/view/VolumeRowView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v3

    if-ne v0, v3, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Landroid/widget/SeekBar;->clearFocus()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getSmartViewLabel()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, ""

    :goto_0
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f13147f

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f13147e

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isAODEnabled:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isDualViewEnabled:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez v0, :cond_7

    move-object v0, v1

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v3, :cond_8

    move-object v3, v1

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    move-object v1, v4

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSeekBarTouchUpAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    :cond_a
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/volume/view/VolumeRowView;->animateSeekBarButton(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    goto/16 :goto_8

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isAODEnabled:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isDualViewEnabled:Z

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_b
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    if-ne p1, v0, :cond_1e

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez p1, :cond_c

    move-object p1, v1

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_d

    move-object v0, v1

    :cond_d
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_e

    goto :goto_3

    :cond_e
    move-object v1, p0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_f

    iget-boolean p0, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz p0, :cond_f

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_f
    const p0, 0x3f851eb8    # 1.04f

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    if-ne v0, v1, :cond_1e

    iput-boolean v5, p0, Lcom/android/systemui/volume/view/VolumeRowView;->startProgress:Z

    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/volume/view/VolumeRowView;->animateSeekBarButton(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    goto/16 :goto_8

    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez p0, :cond_10

    goto :goto_4

    :cond_10
    move-object v1, p0

    :goto_4
    iget-object p0, v1, Lcom/android/systemui/volume/view/VolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    goto/16 :goto_8

    :pswitch_5
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result p1

    if-ne v0, p1, :cond_1e

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez p1, :cond_11

    move-object p1, v1

    :cond_11
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean v0, v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_12

    iget p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->springFinalPosition:I

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v6, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v2, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget v6, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {v2, v6}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p1

    invoke-virtual {v0, p1, v5}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez p1, :cond_13

    move-object p1, v1

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez p1, :cond_14

    goto :goto_5

    :cond_14
    move-object v1, p1

    :goto_5
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

    invoke-virtual {v1, p0, v3, v4}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_8

    :pswitch_6
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result p1

    if-ne v0, p1, :cond_1e

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez p1, :cond_15

    move-object p1, v1

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez p1, :cond_16

    goto :goto_6

    :cond_16
    move-object v1, p1

    :goto_6
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/VolumeRowView$recheckCallback$1;

    invoke-virtual {v1, p0, v3, v4}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_8

    :pswitch_7
    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v1

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto/16 :goto_8

    :pswitch_8
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isAODEnabled:Z

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v1

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto/16 :goto_8

    :pswitch_9
    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    iget v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {v0, p1, v2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isRowVisible(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {v0, p1, v2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getEarProtectLevel()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->earProtectLevel:I

    if-eq v2, v3, :cond_18

    iput v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->earProtectLevel:I

    iget-object v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez v2, :cond_17

    move-object v2, v1

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateProgressDrawable(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    iget v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {v0, p1, v2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v3, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez v3, :cond_19

    move-object v3, v1

    :cond_19
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/volume/view/VolumeSeekBar;->setEnabled(Z)V

    :cond_1a
    iget v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {v0, p1, v2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/volume/view/VolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    :cond_1b
    iget v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {v0, p1, v2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    if-eqz p1, :cond_1c

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/VolumeRowView;->updateBluetoothDeviceIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    :cond_1c
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget v2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez p0, :cond_1d

    goto :goto_7

    :cond_1d
    move-object v1, p0

    :goto_7
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    invoke-virtual {p1, p0, v5}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_1e
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    return-void
.end method

.method public final updateBluetoothDeviceIcon(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getDualBtDeviceAddress()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->isDualViewEnabled:Z

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    move-object v0, v2

    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f13144d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isHasVibrator()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f13144e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f13144c

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isMuted()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->label:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f13144f

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/volume/view/VolumeRowView;->label:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f131450

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->icon:Lcom/android/systemui/volume/view/icon/VPVolumeIcon;

    if-nez p0, :cond_5

    const/4 p0, 0x0

    :cond_5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateProgress(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 2

    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->springFinalPosition:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->springFinalPosition:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->progressBarSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    iget p0, p0, Lcom/android/systemui/volume/view/VolumeRowView;->springFinalPosition:I

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final updateProgressDrawable(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 6

    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    iget v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->stream:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/volume/view/VolumeRowView;->seekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isRoutedToBluetooth()Z

    move-result p0

    if-nez p0, :cond_1

    move p0, v3

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaDeviceOn()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaPinDeviceOn()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getEarProtectLevel()I

    move-result p1

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAudioSharing(I)Z

    move-result v5

    if-eqz v5, :cond_3

    mul-int/lit8 v4, v4, 0x64

    :cond_3
    if-gt v3, p1, :cond_4

    if-ge p1, v4, :cond_4

    if-nez p0, :cond_4

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->setShockColor(Z)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result p0

    invoke-static {v0}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMaxLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result p1

    if-ne p0, p1, :cond_5

    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->setShockColor(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->setShockColor(Z)V

    :cond_6
    :goto_1
    return-void
.end method

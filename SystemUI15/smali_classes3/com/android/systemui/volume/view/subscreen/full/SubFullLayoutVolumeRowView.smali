.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;
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

.field public icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

.field public iconClickable:Z

.field public isAODEnabled:Z

.field public isDualViewEnabled:Z

.field public label:Ljava/lang/String;

.field public final progressBarSpring$delegate:Lkotlin/Lazy;

.field public final recheckCallback:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

.field public seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

.field public seekBarBackground:Landroid/view/ViewGroup;

.field public startProgress:Z

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

.field public stream:I

.field public touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public touchDownIcon:Z

.field public touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    sget-object p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$buttonAnimatorRunnable$1;->INSTANCE:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$buttonAnimatorRunnable$1;

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->buttonAnimatorRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->progressBarSpring$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    sget-object p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$buttonAnimatorRunnable$1;->INSTANCE:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$buttonAnimatorRunnable$1;

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->buttonAnimatorRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$progressBarSpring$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->progressBarSpring$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final animateSeekBarButton$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

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

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->buttonAnimatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$animateSeekBarButton$1;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$animateSeekBarButton$1;-><init>(Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;Z)V

    iput-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->buttonAnimatorRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/util/HandlerWrapper;->post(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

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

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isIconClicked(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_VOLUME_ICON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchDownIcon:Z

    iput-boolean v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->startProgress:Z

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    iget-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

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

    iput-boolean v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchDownIcon:Z

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

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
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSmartView(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v3, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SMART_VIEW_SEEKBAR_TOUCHED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v3, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-virtual {v3, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

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

.method public final initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object p1, v0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    iput-object p5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    const p2, 0x7f0a0e7c

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    iget p5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    iput p5, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->stream:I

    const/4 p5, 0x0

    iput-boolean p5, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->isTracking:Z

    iget-object p2, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object p1, p2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p2}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    const p2, 0x7f0a0e3b

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object p1, v2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object p1, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    iput-object v0, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iput p1, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result p1

    iput p1, p2, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p2, p3, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconLayout$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    invoke-virtual {p2, p3, p5}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconState$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    invoke-virtual {p2, p4, p3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {p2, p4, p3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateEnableState$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    const p2, 0x7f0a0e7d

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isDualAudio()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isMultiSoundBt()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMultiSound(I)Z

    move-result p2

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMusic(I)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_3

    move p2, p1

    goto :goto_1

    :cond_3
    move p2, p5

    :goto_1
    iput-boolean p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isDualViewEnabled:Z

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAodVolumePanel()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isAODEnabled:Z

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p2, :cond_4

    move-object p2, v1

    :cond_4
    invoke-static {p3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->semSetMin(I)V

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p2, :cond_5

    move-object p2, v1

    :cond_5
    invoke-static {p3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMaxLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p2, :cond_6

    move-object p2, v1

    :cond_6
    invoke-static {p3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p2, :cond_7

    move-object p2, v1

    :cond_7
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->setEnabled(Z)V

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconClickable()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->iconClickable:Z

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSmartView(I)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getSmartViewLabel()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getSmartViewLabel()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isDynamic()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRemoteLabel()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_4

    :cond_9
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getNameRes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p2, ""

    :goto_2
    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isRemoteMic()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isBluetoothSco(I)Z

    move-result v0

    const v2, 0x7f131444

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_a
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMusic(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isBtScoOn()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_b
    :goto_3
    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRemoteLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMusic(I)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isDualAudio(I)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isBluetoothSco(I)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMultiSound(I)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAudioSharing(I)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isVoiceCall(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_d
    :goto_4
    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->label:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    move-result p2

    if-eqz p2, :cond_15

    iget p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-static {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAccessibility(I)Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    if-nez p2, :cond_e

    move-object p2, v1

    :cond_e
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto :goto_7

    :cond_f
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    if-nez p2, :cond_10

    move-object p2, v1

    :cond_10
    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$initialize$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$initialize$1;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p4, p3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->updateContentDescription$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    if-nez p2, :cond_11

    move-object v0, v1

    goto :goto_5

    :cond_11
    move-object v0, p2

    :goto_5
    if-nez p2, :cond_12

    move-object p2, v1

    :cond_12
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_13

    iget-boolean p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->iconClickable:Z

    if-eqz p2, :cond_13

    move p2, p1

    goto :goto_6

    :cond_13
    move p2, p5

    :goto_6
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :goto_7
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p2, :cond_14

    move-object p2, v1

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->label:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_15
    const p2, 0x7f0a0e5b

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060adb

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, p5, [I

    filled-new-array {v3}, [[I

    move-result-object v3

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->updateBluetoothDeviceIcon$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0714fb

    invoke-static {p3, p2}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p3, :cond_16

    move-object p3, v1

    :cond_16
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    if-nez p3, :cond_17

    move-object p3, v1

    :cond_17
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const p3, 0x7f0a0e5c

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result p2

    if-nez p2, :cond_19

    iget-boolean p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isDualViewEnabled:Z

    if-eqz p2, :cond_18

    goto :goto_8

    :cond_18
    move p1, p5

    :cond_19
    :goto_8
    const p2, 0x7f0a0e6d

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-nez p1, :cond_1a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060add

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, p5, [I

    filled-new-array {v2}, [[I

    move-result-object v2

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-direct {v0, v2, p3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1a
    if-nez p1, :cond_1c

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isAllSoundOff()Z

    move-result p3

    if-nez p3, :cond_1b

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isZenMode()Z

    move-result p3

    if-nez p3, :cond_1b

    invoke-virtual {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    move-result p3

    if-eqz p3, :cond_1c

    :cond_1b
    sget-object p3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_1c
    sget-object p3, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    :goto_9
    const p2, 0x7f0a0e4c

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const p3, 0x7f0714f8

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0714f0

    invoke-static {v2, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0714ef

    invoke-static {v3, v2}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v2

    iput p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    if-nez p2, :cond_1d

    move-object p2, v1

    :cond_1d
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0714cb

    invoke-static {v4, v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    iput v3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0714ce

    invoke-static {v4, v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v3

    iput v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    if-nez p2, :cond_1e

    move-object p2, v1

    :cond_1e
    invoke-virtual {p2, v0, v2, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_a

    :cond_1f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0714cc

    invoke-static {v0, p2}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    if-nez v0, :cond_20

    move-object v0, v1

    :cond_20
    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_a
    const p2, 0x7f0a0e7e

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0714c3

    invoke-static {v0, p3}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p5, p5, p5, p3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_b

    :cond_21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p2, p5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :goto_b
    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p2

    if-nez p2, :cond_23

    sget-boolean p2, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez p2, :cond_22

    sget-boolean p2, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz p2, :cond_23

    :cond_22
    const p2, 0x7f0813d7

    goto :goto_c

    :cond_23
    const p2, 0x7f0814bb

    :goto_c
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    if-nez v0, :cond_24

    move-object v0, v1

    :cond_24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_26

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBarBackground:Landroid/view/ViewGroup;

    if-nez p2, :cond_25

    move-object p2, v1

    :cond_25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    const v0, 0x7f0714f7

    invoke-static {v0, p5}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p2, p5}, Landroid/view/ViewGroup;->setElevation(F)V

    goto :goto_d

    :cond_26
    const p2, 0x7f0a0e80

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p5}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    if-eqz p1, :cond_2b

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p1

    if-nez p1, :cond_29

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez p1, :cond_27

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz p1, :cond_29

    :cond_27
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p1, :cond_28

    move-object p1, v1

    :cond_28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0813da

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    :cond_29
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p1, :cond_2a

    move-object p1, v1

    :cond_2a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0814c4

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    :cond_2b
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p1

    if-nez p1, :cond_2e

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez p1, :cond_2c

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz p1, :cond_2e

    :cond_2c
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p1, :cond_2d

    move-object p1, v1

    :cond_2d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0813d9

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    :cond_2e
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p1, :cond_2f

    move-object p1, v1

    :cond_2f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0814c6

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_e
    invoke-virtual {p0, p4}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->updateProgressDrawable$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p1, :cond_30

    move-object p1, v1

    :cond_30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p1, :cond_31

    goto :goto_f

    :cond_31
    move-object v1, p1

    :goto_f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public final isIconClicked(FF)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->startProgress:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchDownIcon:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->iconClickable:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

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
    .locals 6

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v2

    if-ne v0, v2, :cond_21

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Landroid/widget/SeekBar;->clearFocus()V

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSmartView(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getSmartViewLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_7

    const-string p1, ""

    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f13147e

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isAODEnabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isDualViewEnabled:Z

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_8
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez v0, :cond_9

    move-object v0, v1

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v2, :cond_a

    move-object v2, v1

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v3, :cond_b

    move-object v3, v1

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_d

    iget-boolean v0, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_c

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v1, v3

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_e
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->animateSeekBarButton$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    goto/16 :goto_7

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isAODEnabled:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isDualViewEnabled:Z

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_f
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez v0, :cond_10

    move-object v0, v1

    :cond_10
    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v2, :cond_11

    move-object v2, v1

    :cond_11
    iget-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v3, :cond_12

    goto :goto_2

    :cond_12
    move-object v1, v3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1, v5}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startSeekBarTouchDownAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Z)V

    :cond_13
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->animateSeekBarButton$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    goto/16 :goto_7

    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    if-ne p1, v0, :cond_21

    iput-boolean v5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->startProgress:Z

    goto/16 :goto_7

    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p0, :cond_14

    goto :goto_3

    :cond_14
    move-object v1, p0

    :goto_3
    iget-object p0, v1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    goto/16 :goto_7

    :pswitch_5
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result p1

    if-ne v0, p1, :cond_21

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez v4, :cond_15

    move-object v4, v1

    :cond_15
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    invoke-virtual {p1, v0, v5}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez p1, :cond_16

    move-object p1, v1

    :cond_16
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez p1, :cond_17

    goto :goto_4

    :cond_17
    move-object v1, p1

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_7

    :pswitch_6
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result p1

    if-ne v0, p1, :cond_21

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez p1, :cond_18

    move-object p1, v1

    :cond_18
    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez p1, :cond_19

    goto :goto_5

    :cond_19
    move-object v1, p1

    :goto_5
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->recheckCallback:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView$recheckCallback$1;

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_7

    :pswitch_7
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v1

    if-ne v0, v1, :cond_21

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->updateProgress$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto/16 :goto_7

    :pswitch_8
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isAODEnabled:Z

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v1

    if-ne v0, v1, :cond_21

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->updateProgress$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto/16 :goto_7

    :pswitch_9
    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {v0, p1, v2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isRowVisible(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result v2

    if-eqz v2, :cond_21

    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {v0, p1, v2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getEarProtectLevel()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->earProtectLevel:I

    if-eq v2, v3, :cond_1b

    iput v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->earProtectLevel:I

    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez v2, :cond_1a

    move-object v2, v1

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->updateProgressDrawable$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {v0, p1, v2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-object v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez v3, :cond_1c

    move-object v3, v1

    :cond_1c
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->setEnabled(Z)V

    :cond_1d
    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {v0, p1, v2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->updateContentDescription$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    :cond_1e
    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {v0, p1, v2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->updateBluetoothDeviceIcon$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    :cond_1f
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_CHECK_IF_NEED_TO_SET_PROGRESS:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p0, :cond_20

    goto :goto_6

    :cond_20
    move-object v1, p0

    :goto_6
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object p0

    invoke-virtual {p1, p0, v5}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    :cond_21
    :goto_7
    return-void

    nop

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

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    return-void
.end method

.method public final updateBluetoothDeviceIcon$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
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

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

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

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->isDualViewEnabled:Z

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

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    move-object v0, v2

    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->bluetoothDeviceIcon:Landroid/widget/ImageView;

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

.method public final updateContentDescription$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

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
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isHasVibrator()Z

    move-result p1

    if-eqz p1, :cond_1

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
    const/4 p1, 0x1

    if-eq v0, p1, :cond_4

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isMuted()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->label:Ljava/lang/String;

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

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->label:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f131450

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->icon:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;

    if-nez p0, :cond_5

    const/4 p0, 0x0

    :cond_5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateProgress$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 3

    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->progressBarSpring$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->progressBarSpring$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->progressBarSpring$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final updateProgressDrawable$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 6

    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->stream:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeRowView;->seekBar:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeSeekBar;

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

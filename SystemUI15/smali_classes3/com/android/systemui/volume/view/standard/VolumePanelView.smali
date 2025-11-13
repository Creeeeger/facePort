.class public final Lcom/android/systemui/volume/view/standard/VolumePanelView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/volume/view/context/ViewContext;
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/volume/view/context/ViewContext;",
        "Lcom/samsung/systemui/splugins/volume/VolumeObserver<",
        "Lcom/samsung/systemui/splugins/volume/VolumePanelState;",
        ">;"
    }
.end annotation


# instance fields
.field public activeStream:I

.field public blurEffect:Lcom/android/systemui/volume/util/BlurEffect;

.field public blurView:Landroid/widget/ImageView;

.field public currentVolume:I

.field public dialog:Landroid/app/Dialog;

.field public downX:F

.field public downY:F

.field public dualViewTitle:Landroid/widget/TextView;

.field public expandButton:Landroid/widget/ImageView;

.field public handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

.field public iDisplayManagerWrapper:Lcom/android/systemui/volume/util/IDisplayManagerWrapper;

.field public isDragging:Z

.field public isDualViewEnabled:Z

.field public isFirstTouch:Z

.field public isKeyDownAnimating:Z

.field public isLockscreen:Z

.field public isSeekBarTouching:Z

.field public isSwipe:Z

.field public isTouchDown:Z

.field public keyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public keyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final keyUpRunnable:Lcom/android/systemui/volume/view/standard/VolumePanelView$keyUpRunnable$1;

.field public panelState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field public pluginAODManagerWrapper:Lcom/android/systemui/volume/util/PluginAODManagerWrapper;

.field public powerManagerWrapper:Lcom/android/systemui/volume/util/PowerManagerWrapper;

.field public rowContainer:Landroid/view/ViewGroup;

.field public startProgress:Z

.field public store:Lcom/android/systemui/volume/store/VolumePanelStore;

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

.field public swipeDistance:F

.field public touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public touchDownExpandButton:Z

.field public touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public vibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

.field public volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

.field public volumeAODPanelView:Landroid/view/ViewGroup;

.field public volumePanelDualView:Landroid/view/ViewGroup;

.field public volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

.field public volumePanelView:Landroid/view/ViewGroup;

.field public final warningDialogController$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/view/standard/VolumePanelView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/standard/VolumePanelView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Lcom/android/systemui/volume/view/standard/VolumePanelView$keyUpRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/standard/VolumePanelView$keyUpRunnable$1;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;)V

    iput-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->keyUpRunnable:Lcom/android/systemui/volume/view/standard/VolumePanelView$keyUpRunnable$1;

    new-instance p1, Lcom/android/systemui/volume/view/standard/VolumePanelView$warningDialogController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/standard/VolumePanelView$warningDialogController$2;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->warningDialogController$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final addVolumeRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v5

    invoke-static {p1, v5}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Lkotlin/collections/ReversedListReadOnly;

    invoke-direct {v0, v2}, Lkotlin/collections/ReversedListReadOnly;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelRowExt;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addRows: rows="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VolumePanelView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d055d

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/systemui/volume/view/VolumeRowView;

    iget-object v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    if-eqz v3, :cond_4

    move-object v4, v3

    goto :goto_2

    :cond_4
    move-object v4, v1

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez v3, :cond_5

    move-object v5, v1

    goto :goto_3

    :cond_5
    move-object v5, v3

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez v3, :cond_6

    move-object v8, v1

    goto :goto_4

    :cond_6
    move-object v8, v3

    :goto_4
    move-object v3, v9

    move-object v6, v2

    move-object v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/volume/view/VolumeRowView;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/android/systemui/volume/util/HandlerWrapper;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/android/systemui/volume/view/VolumePanelMotion;)V

    iget-object v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    if-nez v3, :cond_7

    move-object v3, v1

    :cond_7
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v3

    invoke-static {p1, v3}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->activeStream:I

    :cond_8
    iget-boolean v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    const/4 v3, 0x0

    if-nez v2, :cond_9

    sget-object v2, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    const v4, 0x7f0a0e7f

    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_9
    sget-object v2, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    const v4, 0x7f0a0e80

    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_a
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v2, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    if-eq v0, v2, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->panelState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    if-eqz p1, :cond_1

    move-object v1, p1

    :cond_1
    invoke-static {v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isTouchDown:Z

    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDragging:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-static {v0, v2, p1, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->touchDownExpandButton:Z

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->startProgress:Z

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->downX:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->panelState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v5, v1

    :goto_1
    invoke-static {v5}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->downY:F

    sub-float/2addr v4, v0

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDragging:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    iget-object v5, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v5

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v5, v6}, Lcom/android/systemui/volume/util/ViewUtil;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_17

    const/high16 v0, 0x43960000    # 300.0f

    div-float/2addr v4, v0

    const v0, 0x44bb8000    # 1500.0f

    mul-float/2addr v4, v0

    iget v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->currentVolume:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    const/4 v1, 0x0

    invoke-static {v4, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v1

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(FF)F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDragging:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v5, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_UPDATE_PROGRESS_BAR:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    iget v5, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->activeStream:I

    invoke-virtual {v4, v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->stream(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->progress(I)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->isFromOutside(Z)Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;->build()Lcom/samsung/systemui/splugins/volume/VolumePanelAction;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/volume/store/StoreInteractor;->sendAction(Lcom/samsung/systemui/splugins/volume/VolumePanelAction;Z)V

    goto/16 :goto_b

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isTouchDown:Z

    if-eqz v1, :cond_17

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->swipeDistance:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->startProgress:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isLockscreen:Z

    if-nez v1, :cond_17

    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isTouchDown:Z

    iput-boolean v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isSwipe:Z

    sget-boolean v1, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->downX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    :goto_3
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v3

    goto :goto_4

    :cond_8
    iget v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->downX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    goto :goto_3

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SWIPE_COLLAPSED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    goto :goto_5

    :cond_9
    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_SWIPE_PANEL:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    :goto_5
    invoke-direct {v4, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-static {v4, v2, v1, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    goto/16 :goto_b

    :cond_a
    invoke-static {p0, p1}, Lcom/android/systemui/volume/view/VolumePanelViewExt;->isIconClickWillConsume(Lcom/android/systemui/volume/view/standard/VolumePanelView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->startProgress:Z

    if-nez v0, :cond_c

    iget-boolean v4, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->touchDownExpandButton:Z

    if-eqz v4, :cond_c

    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    iget-object v4, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    if-nez v4, :cond_b

    goto :goto_6

    :cond_b
    move-object v1, v4

    :goto_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4, v5}, Lcom/android/systemui/volume/util/ViewUtil;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v4, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_EXPAND_BUTTON_CLICKED:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v1, v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    goto :goto_7

    :cond_c
    iget-boolean v4, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isSwipe:Z

    if-nez v4, :cond_e

    iget-boolean v4, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isSeekBarTouching:Z

    if-nez v4, :cond_e

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->panelState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    if-eqz v0, :cond_d

    move-object v1, v0

    :cond_d
    invoke-static {v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance p1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {p1, v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-static {p1, v2, p0, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    return v2

    :cond_e
    :goto_7
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDragging:Z

    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isFirstTouch:Z

    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->touchDownExpandButton:Z

    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->startProgress:Z

    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isSeekBarTouching:Z

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isSwipe:Z

    if-eqz v0, :cond_17

    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isSwipe:Z

    return v2

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->panelState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    if-eqz v0, :cond_10

    goto :goto_8

    :cond_10
    move-object v0, v1

    :goto_8
    invoke-static {v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isFirstTouch:Z

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    iget-object v4, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->rowContainer:Landroid/view/ViewGroup;

    if-nez v4, :cond_11

    move-object v4, v1

    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5, v6}, Lcom/android/systemui/volume/util/ViewUtil;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_9

    :cond_12
    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;

    sget-object v1, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;->ACTION_TOUCH_OUTSIDE:Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;

    invoke-direct {v0, v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;-><init>(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$ActionType;)V

    invoke-static {v0, v2, p1, v3}, Lcom/android/systemui/volume/view/expand/VolumePanelExpandView$adjustTouchEventForOutsideTouch$1$$ExternalSyntheticOutline0;->m(Lcom/samsung/systemui/splugins/volume/VolumePanelAction$Builder;ZLcom/android/systemui/volume/store/StoreInteractor;Z)V

    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->touchDownExpandButton:Z

    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->startProgress:Z

    return v2

    :cond_13
    :goto_9
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDragging:Z

    :cond_14
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isLockscreen:Z

    if-nez v0, :cond_16

    sget-object v0, Lcom/android/systemui/volume/util/ViewUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewUtil;

    iget-object v4, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    if-nez v4, :cond_15

    goto :goto_a

    :cond_15
    move-object v1, v4

    :goto_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4, v5}, Lcom/android/systemui/volume/util/ViewUtil;->isTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_16

    iput-boolean v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->touchDownExpandButton:Z

    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->downY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->downX:F

    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isSwipe:Z

    iput-boolean v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isTouchDown:Z

    :cond_17
    :goto_b
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final getPanelState$1()Lcom/samsung/systemui/splugins/volume/VolumePanelState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->panelState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStore$1()Lcom/android/systemui/volume/store/VolumePanelStore;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVolDeps()Lcom/android/systemui/volume/VolumeDependencyBase;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volDeps:Lcom/android/systemui/volume/VolumeDependencyBase;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final initViewVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V
    .locals 4

    invoke-static {p1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    move-object v3, v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    move-object v0, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v3, :cond_4

    move-object v3, v2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    move-object v0, v2

    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    move-object v0, v2

    :cond_6
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLockscreen()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    if-nez v0, :cond_7

    move-object v0, v2

    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    if-nez v0, :cond_9

    move-object v0, v2

    :cond_9
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    if-nez v3, :cond_b

    move-object v3, v2

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    if-nez v0, :cond_c

    move-object v0, v2

    :cond_c
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    move-object v0, v2

    :cond_d
    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLockscreen()Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    if-nez p0, :cond_e

    goto :goto_1

    :cond_e
    move-object v2, p0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    goto :goto_3

    :cond_f
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    if-nez p0, :cond_10

    goto :goto_2

    :cond_10
    move-object v2, p0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iput-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->panelState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowingSubDisplayVolumePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/view/standard/VolumePanelView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v4

    invoke-virtual {v0, p1, v4}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    move-result v3

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz v3, :cond_18

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isKeyDown()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->keyUpRunnable:Lcom/android/systemui/volume/view/standard/VolumePanelView$keyUpRunnable$1;

    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isKeyDownAnimating:Z

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isVibrating()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->vibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    if-nez p1, :cond_3

    move-object p1, v1

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/volume/util/VibratorWrapper;->startKeyHaptic()V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez p1, :cond_5

    move-object p1, v1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->keyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_6

    move-object v0, v1

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->keyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v3, :cond_7

    move-object v3, v1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_9

    iget-boolean p1, v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz p1, :cond_8

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p1

    if-eqz p1, :cond_8

    move-object v1, v3

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_9
    const p1, 0x3f733333    # 0.95f

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isKeyDownAnimating:Z

    goto/16 :goto_4

    :cond_b
    iget-boolean p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isKeyDownAnimating:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez p1, :cond_c

    move-object p1, v1

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->keyUpRunnable:Lcom/android/systemui/volume/view/standard/VolumePanelView$keyUpRunnable$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/volume/util/HandlerWrapper;->remove(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->handlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    move-object v1, p1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->keyUpRunnable:Lcom/android/systemui/volume/view/standard/VolumePanelView$keyUpRunnable$1;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/systemui/volume/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_4

    :pswitch_1
    invoke-static {p1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->currentVolume:I

    goto/16 :goto_4

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->warningDialogController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->showVolumeCSD100WarningDialog()V

    goto/16 :goto_4

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->warningDialogController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->showVolumeLimiterDialog()V

    goto/16 :goto_4

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->warningDialogController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->showVolumeSafetyWarningDialog()V

    goto/16 :goto_4

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v0, :cond_e

    goto :goto_1

    :cond_e
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->activeStream:I

    invoke-static {p1, v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isActiveStream(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->addVolumeRows(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->initViewVisibility(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)V

    goto/16 :goto_4

    :pswitch_6
    iput-boolean v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isSeekBarTouching:Z

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->updateVolumeTitleView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    goto :goto_4

    :cond_f
    invoke-static {p1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez p1, :cond_10

    move-object p1, v1

    :cond_10
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_11

    move-object v0, v1

    :cond_11
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_12

    goto :goto_2

    :cond_12
    move-object v1, p0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/view/VolumePanelMotion;->startSeekBarTouchUpAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    goto :goto_4

    :pswitch_7
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isSeekBarTouching:Z

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/volume/view/standard/VolumePanelView;->updateVolumeTitleView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    goto :goto_4

    :cond_13
    invoke-static {p1}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez p1, :cond_14

    move-object p1, v1

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->touchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_15

    move-object v0, v1

    :cond_15
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->touchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p0, :cond_16

    goto :goto_3

    :cond_16
    move-object v1, p0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_17

    iget-boolean p0, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz p0, :cond_17

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_17
    const p0, 0x3f88f5c3    # 1.07f

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_4

    :pswitch_8
    iput-boolean v2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->startProgress:Z

    :cond_18
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0e71

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelView:Landroid/view/ViewGroup;

    const v0, 0x7f0a0e39

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumeAODPanelView:Landroid/view/ViewGroup;

    const v0, 0x7f0a0e60

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelDualView:Landroid/view/ViewGroup;

    return-void
.end method

.method public final startDismissAnimation()V
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/systemui/volume/view/standard/VolumePanelView$startDismissAnimation$dismissRunnable$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/view/standard/VolumePanelView$startDismissAnimation$dismissRunnable$1;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;)V

    iget-object v4, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->panelState:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-static {v4}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->isAODVolumePanel(Lcom/samsung/systemui/splugins/volume/VolumePanelState;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez v0, :cond_1

    move-object v0, v5

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, p0

    :goto_1
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/volume/view/VolumePanelMotion;->HIDE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelMotion$startAODHideAnimation$1;

    invoke-direct {v1, v0, v3}, Lcom/android/systemui/volume/view/VolumePanelMotion$startAODHideAnimation$1;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_4

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->isDualViewEnabled:Z

    if-eqz v4, :cond_6

    iget-object v3, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->blurView:Landroid/widget/ImageView;

    if-eqz v3, :cond_c

    iget-object v4, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez v4, :cond_4

    move-object v4, v5

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move-object v5, v7

    :goto_2
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    new-instance v7, Lcom/android/systemui/volume/view/standard/VolumePanelView$startDismissAnimation$1$1;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/volume/view/standard/VolumePanelView$startDismissAnimation$1$1;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;Landroid/widget/ImageView;)V

    new-instance v3, Lcom/android/systemui/volume/view/standard/VolumePanelView$startDismissAnimation$1$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/view/standard/VolumePanelView$startDismissAnimation$1$2;-><init>(Lcom/android/systemui/volume/view/standard/VolumePanelView;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result p0

    new-array v8, v0, [F

    aput p0, v8, v2

    aput v6, v8, v1

    const-string p0, "alpha"

    invoke-static {v5, p0, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v8, 0xc8

    invoke-virtual {p0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v10, Landroid/view/animation/PathInterpolator;

    const v11, 0x3ea8f5c3    # 0.33f

    const v12, 0x3f2b851f    # 0.67f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v6, v12, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p0, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Lcom/android/systemui/volume/view/VolumePanelMotion$startVolumeDualViewHideAnimation$alphaAnimator$1$1;

    invoke-direct {v10, v5, v7}, Lcom/android/systemui/volume/view/VolumePanelMotion$startVolumeDualViewHideAnimation$alphaAnimator$1$1;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v10}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v7

    new-array v0, v0, [F

    aput v7, v0, v2

    const v7, 0x3f666666    # 0.9f

    aput v7, v0, v1

    const-string/jumbo v7, "scaleX"

    invoke-static {v5, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v7, Lcom/android/systemui/volume/view/VolumePanelMotion$startVolumeDualViewHideAnimation$scaleAnimator$1$1;

    invoke-direct {v7, v5}, Lcom/android/systemui/volume/view/VolumePanelMotion$startVolumeDualViewHideAnimation$scaleAnimator$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v11, v6, v12, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v6, v1, [Landroid/animation/Animator;

    aput-object p0, v6, v2

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p0, v1, [Landroid/animation/Animator;

    aput-object v0, p0, v2

    invoke-virtual {v5, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p0, Lcom/android/systemui/volume/view/VolumePanelMotion$startVolumeDualViewHideAnimation$1$1;

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/volume/view/VolumePanelMotion$startVolumeDualViewHideAnimation$1$1;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;Ljava/lang/Runnable;)V

    invoke-virtual {v5, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->volumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-nez v0, :cond_7

    move-object v0, v5

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dialog:Landroid/app/Dialog;

    if-nez p0, :cond_8

    move-object p0, v5

    :cond_8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    iget-object v1, v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->singleShowSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_a

    iget-boolean v2, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v2, :cond_9

    move-object v5, v1

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/BasicRune;->VOLUME_LEFT_DISPLAY_VOLUME_DIALOG:Z

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    neg-int p0, p0

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    :goto_3
    int-to-float p0, p0

    invoke-virtual {v1, p0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v1, 0x15e

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/volume/view/VolumePanelMotion;->HIDE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelMotion$startVolumePanelDismissAnimation$2;

    invoke-direct {v1, v0, v3}, Lcom/android/systemui/volume/view/VolumePanelMotion$startVolumePanelDismissAnimation$2;-><init>(Lcom/android/systemui/volume/view/VolumePanelMotion;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_c
    :goto_4
    return-void
.end method

.method public final updateVolumeTitleView(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLockscreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    sget-object p2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/systemui/splugins/extensions/VolumePanelRowExt;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f13146f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    sget-object p2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v2

    invoke-virtual {p2, p1, v2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    if-nez p2, :cond_4

    move-object p2, v1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/samsung/systemui/splugins/extensions/VolumePanelRowExt;->getStreamLabel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object p2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    if-nez p2, :cond_6

    move-object p2, v1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move-object v1, p0

    :goto_2
    invoke-static {v1}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    goto :goto_4

    :cond_8
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    iget-object p2, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->dualViewTitle:Landroid/widget/TextView;

    if-nez p2, :cond_9

    move-object p2, v1

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/standard/VolumePanelView;->expandButton:Landroid/widget/ImageView;

    if-nez p0, :cond_a

    goto :goto_3

    :cond_a
    move-object v1, p0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_4
    return-void
.end method

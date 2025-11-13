.class public abstract Lcom/android/systemui/volume/view/icon/VolumeIcon;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/volume/VolumeObserver;


# instance fields
.field public currentMediaIconState:I

.field public final defaultAlpha:F

.field public final disableAlpha:F

.field public iconActiveColor:I

.field public iconColor:I

.field public iconEarShockColor:I

.field public iconMutedColor:I

.field public iconType:I

.field public iconView:Landroid/view/View;

.field public isAnimatedType:Z

.field public shouldUpdateIcon:Z

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

.field public stream:I

.field public volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/view/icon/VolumeIcon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/icon/VolumeIcon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;)V

    iput-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    const p2, 0x7f060ad7

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconActiveColor:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconMutedColor:I

    const p2, 0x7f060ad8

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconEarShockColor:I

    const p1, 0x3f59999a    # 0.85f

    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->defaultAlpha:F

    const p1, 0x3e99999a    # 0.3f

    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->disableAlpha:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->currentMediaIconState:I

    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    iget p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconActiveColor:I

    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconColor:I

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/Button;

    const-string p0, "android.widget.Button"

    return-object p0
.end method

.method public getScreenState()Lcom/android/systemui/volume/view/icon/ScreenState;
    .locals 0

    sget-object p0, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_NORMAL:Lcom/android/systemui/volume/view/icon/ScreenState;

    return-object p0
.end method

.method public inflateIconView(Z)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-static {p1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d054f

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0550

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d054e

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0552

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method public initVolumeIconColor(III)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconActiveColor:I

    iput p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconMutedColor:I

    iput p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconEarShockColor:I

    return-void
.end method

.method public final initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object p1, v0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    new-instance v0, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;-><init>(Lcom/android/systemui/volume/store/VolumePanelStore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    :cond_0
    iget p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconActiveColor:I

    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconMutedColor:I

    iget v1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconEarShockColor:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->initVolumeIconColor(III)V

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    return-void
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/volume/view/icon/VolumeIcon$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v2, v4, :cond_4

    if-eq v2, v5, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isAnimatedType:Z

    if-eqz v2, :cond_17

    iget v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v4

    if-ne v2, v4, :cond_17

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIconTargetState()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIconCurrentState()I

    move-result v1

    iget v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-static {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->setSoundIconState(IIIZ)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->setMediaIconState(IIZ)V

    goto/16 :goto_4

    :cond_2
    iget v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v4

    if-ne v2, v4, :cond_17

    sget-object v2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    iget v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-virtual {v2, v1, v4}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    goto/16 :goto_4

    :cond_3
    iget v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v3

    if-ne v2, v3, :cond_17

    sget-object v2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    iget v3, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-virtual {v2, v1, v3}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    if-eqz v1, :cond_17

    iget v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isQpVolumeBarEnabled()Z

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getVolumeRowList()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v10

    iget v11, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    if-ne v10, v11, :cond_5

    invoke-virtual {v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz v2, :cond_5

    :cond_6
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {v0, v4, v6}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    iget-boolean v7, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->shouldUpdateIcon:Z

    if-nez v7, :cond_a

    iget v7, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v8

    invoke-static {v7}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {v8}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableMediaIconType(I)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_8
    invoke-static {v7}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_2

    :cond_9
    iget v7, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    invoke-virtual {v0, v4, v6}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    :cond_b
    :goto_2
    invoke-virtual {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v7

    iget v8, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    if-eq v8, v7, :cond_15

    iget v8, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-static {v8}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v8

    if-eqz v8, :cond_15

    if-eq v7, v5, :cond_15

    iget-object v8, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    const/4 v9, 0x0

    if-nez v8, :cond_c

    move-object v8, v9

    :cond_c
    const v10, 0x7f0a0e4d

    invoke-virtual {v8, v10}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v10, :cond_d

    move-object v10, v9

    :cond_d
    const v11, 0x7f0a0e56

    invoke-virtual {v10, v11}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v16, v10

    check-cast v16, Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v10, :cond_e

    move-object v10, v9

    :cond_e
    const v11, 0x7f0a0e59

    invoke-virtual {v10, v11}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v10, :cond_f

    move-object v10, v9

    :cond_f
    const v11, 0x7f0a0e85

    invoke-virtual {v10, v11}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v10, :cond_10

    move-object v10, v9

    :cond_10
    const v11, 0x7f0a0e86

    invoke-virtual {v10, v11}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v10, :cond_11

    move-object v10, v9

    :cond_11
    const v11, 0x7f0a0e8d

    invoke-virtual {v10, v11}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->getScreenState()Lcom/android/systemui/volume/view/icon/ScreenState;

    move-result-object v18

    if-ne v7, v3, :cond_13

    iget-object v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    if-nez v10, :cond_12

    move-object v10, v9

    :cond_12
    iget v11, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    move-object/from16 v17, v8

    invoke-virtual/range {v10 .. v18}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    goto :goto_3

    :cond_13
    iget-object v10, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    if-nez v10, :cond_14

    move-object v10, v9

    :cond_14
    move-object v11, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :goto_3
    iput-boolean v6, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->shouldUpdateIcon:Z

    iput v6, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->currentMediaIconState:I

    iput v7, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    :cond_15
    invoke-virtual {v0, v4, v1, v6}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    goto/16 :goto_1

    :cond_16
    iget-object v0, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    :cond_17
    :goto_4
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    return-void
.end method

.method public final setMediaIconState(IIZ)V
    .locals 12

    if-ne p1, p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->shouldUpdateIcon:Z

    if-eqz v0, :cond_10

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_3

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    sub-int p3, p1, p2

    if-lez p3, :cond_2

    add-int/2addr p2, v0

    goto :goto_1

    :cond_2
    sub-int/2addr p2, v0

    goto :goto_1

    :cond_3
    :goto_0
    move p2, p1

    :goto_1
    iget-object p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez p3, :cond_4

    move-object p3, v1

    :cond_4
    const v2, 0x7f0a0e4d

    invoke-virtual {p3, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v10, p3

    check-cast v10, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez p3, :cond_5

    move-object p3, v1

    :cond_5
    const v2, 0x7f0a0e51

    invoke-virtual {p3, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v9, p3

    check-cast v9, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez p3, :cond_6

    move-object p3, v1

    :cond_6
    const v2, 0x7f0a0e52

    invoke-virtual {p3, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez p3, :cond_7

    move-object p3, v1

    :cond_7
    const v2, 0x7f0a0e53

    invoke-virtual {p3, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez p3, :cond_8

    move-object p3, v1

    :cond_8
    const v2, 0x7f0a0e54

    invoke-virtual {p3, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->getScreenState()Lcom/android/systemui/volume/view/icon/ScreenState;

    move-result-object v11

    if-eq p2, v0, :cond_e

    const/4 p3, 0x2

    if-eq p2, p3, :cond_c

    const/4 p3, 0x3

    if-eq p2, p3, :cond_a

    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    if-nez p2, :cond_9

    move-object v2, v1

    goto :goto_2

    :cond_9
    move-object v2, p2

    :goto_2
    iget v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    const/4 p2, 0x0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p2

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    goto :goto_6

    :cond_a
    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    if-nez p2, :cond_b

    move-object v2, v1

    goto :goto_3

    :cond_b
    move-object v2, p2

    :goto_3
    iget v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    const/4 p2, 0x0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p2

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    goto :goto_6

    :cond_c
    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    if-nez p2, :cond_d

    move-object v2, v1

    goto :goto_4

    :cond_d
    move-object v2, p2

    :goto_4
    iget v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    const/4 v8, 0x0

    move v4, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    goto :goto_6

    :cond_e
    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    if-nez p2, :cond_f

    move-object v2, v1

    goto :goto_5

    :cond_f
    move-object v2, p2

    :goto_5
    iget v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    const/4 v8, 0x0

    move v4, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    :goto_6
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->shouldUpdateIcon:Z

    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->currentMediaIconState:I

    :cond_10
    return-void
.end method

.method public final setSoundIconState(IIIZ)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v11, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-ne v11, v1, :cond_0

    iget-boolean v3, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->shouldUpdateIcon:Z

    if-nez v3, :cond_0

    iget v3, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    if-eq v3, v2, :cond_15

    :cond_0
    iput v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    const/4 v12, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_4

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    move v4, v12

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    sub-int v4, v11, v4

    if-lez v4, :cond_3

    add-int/2addr v1, v3

    goto :goto_2

    :cond_3
    sub-int/2addr v1, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v11

    :goto_2
    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    const/4 v5, 0x0

    if-nez v4, :cond_5

    move-object v4, v5

    :cond_5
    const v6, 0x7f0a0e4d

    invoke-virtual {v4, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v4, :cond_6

    move-object v4, v5

    :cond_6
    const v6, 0x7f0a0e56

    invoke-virtual {v4, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v4, :cond_7

    move-object v4, v5

    :cond_7
    const v6, 0x7f0a0e59

    invoke-virtual {v4, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v4, :cond_8

    move-object v4, v5

    :cond_8
    const v6, 0x7f0a0e85

    invoke-virtual {v4, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v4, :cond_9

    move-object v4, v5

    :cond_9
    const v6, 0x7f0a0e86

    invoke-virtual {v4, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v4, :cond_a

    move-object v4, v5

    :cond_a
    const v6, 0x7f0a0e8d

    invoke-virtual {v4, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->getScreenState()Lcom/android/systemui/volume/view/icon/ScreenState;

    move-result-object v21

    iget v4, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-static {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v11, :cond_e

    if-ne v2, v3, :cond_c

    iget-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    if-nez v1, :cond_b

    move-object v13, v5

    goto :goto_3

    :cond_b
    move-object v13, v1

    :goto_3
    iget v14, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-virtual/range {v13 .. v21}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    goto/16 :goto_6

    :cond_c
    iget-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    if-nez v1, :cond_d

    move-object v13, v5

    goto :goto_4

    :cond_d
    move-object v13, v1

    :goto_4
    move-object/from16 v14, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    invoke-virtual/range {v13 .. v19}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_6

    :cond_e
    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    iget-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    if-nez v1, :cond_f

    move-object v13, v5

    goto :goto_5

    :cond_f
    move-object v13, v1

    :goto_5
    iget v14, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-virtual/range {v13 .. v21}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    goto :goto_6

    :cond_10
    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    iget-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    if-nez v1, :cond_11

    move-object v1, v5

    :cond_11
    iget v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    move/from16 v3, p1

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    goto :goto_6

    :cond_12
    if-ne v1, v3, :cond_14

    iget-object v1, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    if-nez v1, :cond_13

    move-object v1, v5

    :cond_13
    iget v2, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    move/from16 v3, p1

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/volume/view/icon/ScreenState;)V

    :cond_14
    :goto_6
    iput-boolean v12, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->shouldUpdateIcon:Z

    iput v11, v0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->currentMediaIconState:I

    :cond_15
    return-void
.end method

.method public final updateEnableState(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->defaultAlpha:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->disableAlpha:F

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->defaultAlpha:F

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :cond_3
    return-void
.end method

.method public final updateIconLayout(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    move-result p1

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isAnimatedType:Z

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->shouldUpdateIcon:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->inflateIconView(Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    iput-boolean p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isAnimatedType:Z

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final updateIconState(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 7

    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->isAnimatedType:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-static {v0}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    const v0, 0x7f0a0e59

    invoke-virtual {p2, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    const v3, 0x7f0a0e56

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v3, :cond_3

    move-object v3, v1

    :cond_3
    const v4, 0x7f0a0e8d

    invoke-virtual {v3, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v4, :cond_4

    move-object v4, v1

    :cond_4
    const v5, 0x7f0a0e4d

    invoke-virtual {v4, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v5

    if-eq v5, v2, :cond_6

    const/4 v6, 0x5

    if-eq v5, v6, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08147d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08147e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08147f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f081483

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f081484

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result p1

    iget v5, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    if-eq v5, p1, :cond_14

    iput p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconType:I

    const/4 v5, 0x0

    if-eqz p1, :cond_a

    if-eq p1, v2, :cond_8

    const/4 p0, 0x3

    if-eq p1, p0, :cond_7

    goto/16 :goto_7

    :cond_7
    sget-object p0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-static {v4}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-static {v3}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    goto/16 :goto_7

    :cond_8
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v3}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startSplashAnimation(Landroid/view/View;)V

    goto/16 :goto_7

    :cond_a
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-static {v4}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    if-nez p0, :cond_b

    goto :goto_2

    :cond_b
    move-object v1, p0

    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->startVibrationAnimation(Landroid/view/View;)V

    goto/16 :goto_7

    :cond_c
    :goto_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMax()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-static {v1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v2, 0x64

    :cond_d
    mul-int/2addr v0, v2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->getIconState(II)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-static {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->currentMediaIconState:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->setSoundIconState(IIIZ)V

    goto :goto_7

    :cond_e
    iget p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->currentMediaIconState:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->setMediaIconState(IIZ)V

    goto :goto_7

    :cond_f
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isRoutedToBluetooth()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getDualBtDeviceAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p2}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->getServerIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_4

    :cond_10
    move-object p2, v1

    :goto_4
    if-nez p2, :cond_11

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->getDefaultIconResId(II)I

    move-result p1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_11
    iget-object p0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez p0, :cond_12

    move-object p1, v1

    goto :goto_5

    :cond_12
    move-object p1, p0

    :goto_5
    instance-of p1, p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_14

    if-nez p0, :cond_13

    goto :goto_6

    :cond_13
    move-object v1, p0

    :goto_6
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    :goto_7
    return-void
.end method

.method public final updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 9

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isLeBroadcasting()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isRoutedToBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v3

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isMuted()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconMutedColor:I

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaDeviceOn()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaPinDeviceOn()Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getEarProtectLevel()I

    move-result p2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAudioSharing(I)Z

    move-result v5

    if-eqz v5, :cond_4

    mul-int/lit8 v3, v3, 0x64

    :cond_4
    if-gt v2, p2, :cond_5

    if-ge p2, v3, :cond_5

    if-nez v0, :cond_5

    iget p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconEarShockColor:I

    goto :goto_1

    :cond_5
    iget p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconActiveColor:I

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result p1

    invoke-static {v3, p1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez p1, :cond_6

    move-object p1, v3

    :cond_6
    instance-of v4, p1, Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_2

    :cond_7
    move-object p1, v3

    :goto_2
    if-eqz p1, :cond_11

    new-array v0, v2, [Landroid/widget/ImageView;

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_3

    :cond_8
    iget p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-static {p1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    move-result p1

    const/4 v5, 0x2

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez p1, :cond_9

    move-object p1, v3

    :cond_9
    const v0, 0x7f0a0e51

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v0, :cond_a

    move-object v0, v3

    :cond_a
    const v6, 0x7f0a0e52

    invoke-virtual {v0, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v6, :cond_b

    move-object v6, v3

    :cond_b
    const v7, 0x7f0a0e53

    invoke-virtual {v6, v7}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v7, :cond_c

    move-object v7, v3

    :cond_c
    const v8, 0x7f0a0e54

    invoke-virtual {v7, v8}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/widget/ImageView;

    aput-object p1, v8, v1

    aput-object v0, v8, v2

    aput-object v6, v8, v5

    aput-object v7, v8, v4

    invoke-static {v8}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3

    :cond_d
    iget p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez p1, :cond_e

    move-object p1, v3

    :cond_e
    const v0, 0x7f0a0e59

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v0, :cond_f

    move-object v0, v3

    :cond_f
    const v6, 0x7f0a0e85

    invoke-virtual {v0, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez v6, :cond_10

    move-object v6, v3

    :cond_10
    const v7, 0x7f0a0e86

    invoke-virtual {v6, v7}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    new-array v4, v4, [Landroid/widget/ImageView;

    aput-object p1, v4, v1

    aput-object v0, v4, v2

    aput-object v6, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_11
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconView:Landroid/view/View;

    if-nez p1, :cond_12

    move-object p1, v3

    :cond_12
    const v1, 0x7f0a0e4d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_13

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconColor:I

    if-eq p1, p2, :cond_17

    iget-object v1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/VolumeIconMotion;

    if-nez v1, :cond_14

    goto :goto_4

    :cond_14
    move-object v3, v1

    :goto_4
    iget-object v1, v3, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->shockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v3, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->shockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->pause()V

    :cond_15
    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p3, :cond_16

    const-wide/16 v1, 0x0

    goto :goto_5

    :cond_16
    const-wide/16 v1, 0x1c2

    :goto_5
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, v3, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->shockValueAnimator:Landroid/animation/ValueAnimator;

    sget-object p3, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, v3, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->shockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, v3, Lcom/android/systemui/volume/view/icon/VolumeIconMotion;->shockValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startIconTintColor$1;

    invoke-direct {p3, v0}, Lcom/android/systemui/volume/view/icon/VolumeIconMotion$startIconTintColor$1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput p2, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->iconColor:I

    :cond_17
    return-void
.end method

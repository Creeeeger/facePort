.class public final Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;
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
.field public currentMediaIconState:I

.field public final iconActiveColor:Landroid/content/res/ColorStateList;

.field public final iconEarShockColor:Landroid/content/res/ColorStateList;

.field public final iconMutedColor:Landroid/content/res/ColorStateList;

.field public iconType:I

.field public iconView:Landroid/view/View;

.field public isAnimatableIcon:Z

.field public final storeInteractor$delegate:Lkotlin/Lazy;

.field public stream:I

.field public volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f060ad7

    invoke-static {p2, p1}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconActiveColor:Landroid/content/res/ColorStateList;

    invoke-static {p2, p1}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconMutedColor:Landroid/content/res/ColorStateList;

    const p2, 0x7f060ad8

    invoke-static {p2, p1}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconEarShockColor:Landroid/content/res/ColorStateList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->currentMediaIconState:I

    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    new-instance p1, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon$storeInteractor$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon$storeInteractor$2;-><init>(Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->storeInteractor$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/Button;

    const-string p0, "android.widget.Button"

    return-object p0
.end method

.method public final onChanged(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStateType()Lcom/samsung/systemui/splugins/volume/VolumePanelState$StateType;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v2, v4, :cond_4

    if-eq v2, v5, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->isAnimatableIcon:Z

    if-eqz v2, :cond_f

    iget v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v4

    if-ne v2, v4, :cond_f

    iget v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-static {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIconTargetState()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIconCurrentState()I

    move-result v1

    iget v4, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->setSoundIconState$1(IIIZ)V

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIconTargetState()I

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getIconCurrentState()I

    move-result v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->setMediaIconState$1(IIZ)V

    goto/16 :goto_6

    :cond_2
    iget v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v4

    if-ne v2, v4, :cond_f

    sget-object v2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    iget v4, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-virtual {v2, v1, v4}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconLayout$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconState$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    goto/16 :goto_6

    :cond_3
    iget v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getStream()I

    move-result v3

    if-ne v2, v3, :cond_f

    sget-object v2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    iget v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-virtual {v2, v1, v3}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v1

    if-eqz v1, :cond_f

    iget v2, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconState$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    goto/16 :goto_6

    :cond_4
    sget-object v2, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;

    iget v4, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-virtual {v2, v1, v4}, Lcom/samsung/systemui/splugins/extensions/VolumePanelStateExt;->findRow(Lcom/samsung/systemui/splugins/volume/VolumePanelState;I)Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    move-object v2, v7

    :goto_0
    if-eqz v2, :cond_f

    invoke-virtual {v0, v2, v6}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconLayout$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v8

    invoke-static {v4}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v8}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableMediaIconType(I)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_6
    invoke-static {v4}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    iget v4, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v8

    invoke-static {v4, v8}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0, v2, v6}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconState$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    :cond_8
    :goto_1
    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v4

    iget-object v8, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconView:Landroid/view/View;

    if-nez v8, :cond_9

    goto/16 :goto_5

    :cond_9
    iget v9, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    if-eq v9, v4, :cond_d

    iget v9, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-static {v9}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v9

    if-eqz v9, :cond_d

    if-eq v4, v5, :cond_d

    const v5, 0x7f0a0e4d

    invoke-virtual {v8, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v9, 0x7f0a0e56

    invoke-virtual {v8, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Landroid/widget/ImageView;

    const v9, 0x7f0a0e59

    invoke-virtual {v8, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Landroid/widget/ImageView;

    const v9, 0x7f0a0e85

    invoke-virtual {v8, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Landroid/widget/ImageView;

    const v9, 0x7f0a0e86

    invoke-virtual {v8, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Landroid/widget/ImageView;

    const v9, 0x7f0a0e8d

    invoke-virtual {v8, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    if-ne v4, v3, :cond_b

    iget-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez v3, :cond_a

    move-object v9, v7

    goto :goto_2

    :cond_a
    move-object v9, v3

    :goto_2
    iget v10, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    move-object v14, v8

    move-object/from16 v16, v5

    invoke-virtual/range {v9 .. v16}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_4

    :cond_b
    iget-object v3, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez v3, :cond_c

    move-object v9, v7

    goto :goto_3

    :cond_c
    move-object v9, v3

    :goto_3
    move-object v10, v8

    move-object v14, v15

    move-object v15, v5

    invoke-virtual/range {v9 .. v15}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :goto_4
    iput v6, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->currentMediaIconState:I

    iput v4, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    :cond_d
    :goto_5
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->updateEnableState$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    goto :goto_6

    :cond_e
    iget-object v0, v0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    :cond_f
    :goto_6
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->storeInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/store/StoreInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/volume/store/StoreInteractor;->dispose()V

    return-void
.end method

.method public final setMediaIconState$1(IIZ)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ne p1, p2, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v1, 0x1

    if-eqz p3, :cond_4

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    sub-int p3, p1, p2

    if-lez p3, :cond_3

    add-int/2addr p2, v1

    goto :goto_1

    :cond_3
    sub-int/2addr p2, v1

    goto :goto_1

    :cond_4
    :goto_0
    move p2, p1

    :goto_1
    const p3, 0x7f0a0e4d

    invoke-virtual {v0, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v10, p3

    check-cast v10, Landroid/widget/ImageView;

    const p3, 0x7f0a0e51

    invoke-virtual {v0, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v9, p3

    check-cast v9, Landroid/widget/ImageView;

    const p3, 0x7f0a0e52

    invoke-virtual {v0, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Landroid/widget/ImageView;

    const p3, 0x7f0a0e53

    invoke-virtual {v0, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v7, p3

    check-cast v7, Landroid/widget/ImageView;

    const p3, 0x7f0a0e54

    invoke-virtual {v0, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/widget/ImageView;

    const/4 p3, 0x0

    if-eq p2, v1, :cond_a

    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    const/4 v0, 0x3

    if-eq p2, v0, :cond_6

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p2, :cond_5

    move-object v2, p3

    goto :goto_2

    :cond_5
    move-object v2, p2

    :goto_2
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    const/4 p2, 0x0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p2

    move-object v8, v9

    move-object v9, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_6

    :cond_6
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p2, :cond_7

    move-object v2, p3

    goto :goto_3

    :cond_7
    move-object v2, p2

    :goto_3
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    const/4 p2, 0x0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p2

    move-object v8, v9

    move-object v9, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_6

    :cond_8
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p2, :cond_9

    move-object v2, p3

    goto :goto_4

    :cond_9
    move-object v2, p2

    :goto_4
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    const/4 v8, 0x0

    move v4, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_6

    :cond_a
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p2, :cond_b

    move-object v2, p3

    goto :goto_5

    :cond_b
    move-object v2, p2

    :goto_5
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    const/4 v8, 0x0

    move v4, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :goto_6
    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->currentMediaIconState:I

    :goto_7
    return-void
.end method

.method public final setSoundIconState$1(IIIZ)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ne p1, p2, :cond_1

    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    if-eq v1, p3, :cond_10

    :cond_1
    iput p3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    const/4 v1, 0x1

    if-eqz p4, :cond_5

    const/4 p4, -0x1

    if-eq p2, p4, :cond_5

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    const/4 p4, 0x0

    goto :goto_0

    :cond_3
    move p4, p2

    :goto_0
    sub-int p4, p1, p4

    if-lez p4, :cond_4

    add-int/2addr p2, v1

    goto :goto_2

    :cond_4
    sub-int/2addr p2, v1

    goto :goto_2

    :cond_5
    :goto_1
    move p2, p1

    :goto_2
    const p4, 0x7f0a0e4d

    invoke-virtual {v0, p4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p4

    move-object v10, p4

    check-cast v10, Landroid/widget/ImageView;

    const p4, 0x7f0a0e56

    invoke-virtual {v0, p4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p4

    move-object v9, p4

    check-cast v9, Landroid/widget/ImageView;

    const p4, 0x7f0a0e59

    invoke-virtual {v0, p4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Landroid/widget/ImageView;

    const p4, 0x7f0a0e85

    invoke-virtual {v0, p4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p4

    move-object v7, p4

    check-cast v7, Landroid/widget/ImageView;

    const p4, 0x7f0a0e86

    invoke-virtual {v0, p4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p4

    move-object v6, p4

    check-cast v6, Landroid/widget/ImageView;

    const p4, 0x7f0a0e8d

    invoke-virtual {v0, p4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p4

    move-object v8, p4

    check-cast v8, Landroid/widget/ImageView;

    iget p4, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-static {p4}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_9

    if-nez p1, :cond_9

    if-ne p3, v1, :cond_7

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p2, :cond_6

    move-object v2, v0

    goto :goto_3

    :cond_6
    move-object v2, p2

    :goto_3
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_8

    :cond_7
    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p2, :cond_8

    move-object v2, v0

    goto :goto_4

    :cond_8
    move-object v2, p2

    :goto_4
    move-object v3, v8

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object v8, v10

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_8

    :cond_9
    const/4 p3, 0x3

    if-ne p2, p3, :cond_b

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p2, :cond_a

    move-object v2, v0

    goto :goto_5

    :cond_a
    move-object v2, p2

    :goto_5
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_8

    :cond_b
    const/4 p3, 0x2

    if-ne p2, p3, :cond_d

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p2, :cond_c

    move-object v2, v0

    goto :goto_6

    :cond_c
    move-object v2, p2

    :goto_6
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    move v4, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_8

    :cond_d
    if-ne p2, v1, :cond_f

    iget-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p2, :cond_e

    move-object v2, v0

    goto :goto_7

    :cond_e
    move-object v2, p2

    :goto_7
    iget v3, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    move v4, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_f
    :goto_8
    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->currentMediaIconState:I

    :cond_10
    return-void
.end method

.method public final updateEnableState$1(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

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

.method public final updateIconLayout$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    move-result p1

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->isAnimatableIcon:Z

    if-eq p2, p1, :cond_6

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_1
    const/4 p2, 0x0

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-static {v0}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0466

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-static {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0467

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0465

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    move-object p2, v0

    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0469

    invoke-virtual {v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_5
    :goto_0
    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_6
    iput-boolean p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->isAnimatableIcon:Z

    return-void
.end method

.method public final updateIconState$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->isAnimatableIcon:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconView:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-static {v2}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_9

    iget v2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-static {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    const p2, 0x7f0a0e59

    invoke-virtual {v0, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v2, 0x7f0a0e56

    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f0a0e8d

    invoke-virtual {v0, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a0e4d

    invoke-virtual {v0, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isNotification(I)Z

    move-result v6

    if-eqz v6, :cond_2

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

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f08147f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-static {v5}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isSystem(I)Z

    move-result v5

    if-eqz v5, :cond_3

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

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result p1

    iget v5, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    if-eq v5, p1, :cond_f

    iput p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconType:I

    const/4 v5, 0x0

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_5

    const/4 p0, 0x3

    if-eq p1, p0, :cond_4

    goto/16 :goto_5

    :cond_4
    sget-object p0, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-static {v4}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_5
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v4}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startSplashAnimation(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_7
    sget-object p1, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->INSTANCE:Lcom/android/systemui/volume/util/ViewVisibilityUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-static {v2}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-static {v0}, Lcom/android/systemui/volume/util/ViewVisibilityUtil;->setGone(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->volumePanelMotion:Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    move-object v1, p0

    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumePanelMotion;->startVibrationAnimation(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMax()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-static {v1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v3, 0x64

    :cond_a
    mul-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->getIconState(II)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-static {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->currentMediaIconState:I

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->setSoundIconState$1(IIIZ)V

    goto :goto_5

    :cond_b
    iget p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->currentMediaIconState:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->setMediaIconState$1(IIZ)V

    goto :goto_5

    :cond_c
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isRoutedToBluetooth()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getDualBtDeviceAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p2}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->getServerIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_4

    :cond_d
    move-object p2, v1

    :goto_4
    if-nez p2, :cond_e

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

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconView:Landroid/view/View;

    instance-of p1, p0, Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_5
    return-void
.end method

.method public final updateIconTintColor(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isMuted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconMutedColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaDeviceOn()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isSafeMediaPinDeviceOn()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isAudioSharing(I)Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 p1, p1, 0x64

    :cond_4
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getEarProtectLevel()I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_5

    if-ge v1, p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconEarShockColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->iconActiveColor:Landroid/content/res/ColorStateList;

    :goto_0
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getIconType()I

    move-result p2

    invoke-static {v1, p2}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isAnimatableIcon(II)Z

    move-result p2

    if-nez p2, :cond_8

    instance-of p0, v0, Landroid/widget/ImageView;

    if-eqz p0, :cond_6

    move-object p0, v0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_8
    iget p2, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-static {p2}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    move-result p2

    if-eqz p2, :cond_9

    const p0, 0x7f0a0e52

    invoke-virtual {v0, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const p0, 0x7f0a0e53

    invoke-virtual {v0, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const p0, 0x7f0a0e54

    invoke-virtual {v0, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_9
    iget p0, p0, Lcom/android/systemui/volume/view/subscreen/full/SubFullLayoutVolumeIcon;->stream:I

    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f0a0e59

    invoke-virtual {v0, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const p0, 0x7f0a0e85

    invoke-virtual {v0, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const p0, 0x7f0a0e86

    invoke-virtual {v0, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_a
    :goto_2
    const p0, 0x7f0a0e4d

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_b
    return-void
.end method

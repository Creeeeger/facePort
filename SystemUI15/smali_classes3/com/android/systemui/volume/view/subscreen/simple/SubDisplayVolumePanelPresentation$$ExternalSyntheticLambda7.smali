.class public final synthetic Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

.field public final synthetic f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    iput-object p2, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda7;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iput-boolean p3, p0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda7;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;

    iget-object v2, v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda7;->f$1:Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    iget-boolean v0, v0, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation$$ExternalSyntheticLambda7;->f$2:Z

    move-object/from16 v3, p1

    check-cast v3, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    const/4 v5, 0x0

    const/16 v10, 0x14

    const v11, 0x7f0a0e79

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x7f0a0e77

    const/4 v15, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_16

    invoke-virtual {v1}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f0d0568

    invoke-virtual {v4, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;

    iget-object v7, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v12, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-object v6, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iget-boolean v8, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    move v0, v15

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    iget-object v8, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mVibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    iget-object v9, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object v7, v9, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v9}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    iput-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    iput-object v12, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iput-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVibratorWrapper:Lcom/android/systemui/volume/util/VibratorWrapper;

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isHasVibrator()Z

    move-result v6

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v8

    iput v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    move-result v8

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconEnabled()Z

    move-result v9

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconClickable()Z

    move-result v12

    iput-boolean v12, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIconClickable:Z

    iput-boolean v0, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIsDualViewEnabled:Z

    invoke-virtual {v4, v14}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    iput-object v12, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    invoke-virtual {v12, v7, v2, v3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isShowA11yStream()Z

    move-result v12

    if-eqz v12, :cond_3

    iget v12, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    const/16 v14, 0xa

    if-ne v12, v14, :cond_1

    iget-object v12, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto :goto_2

    :cond_1
    iget-object v12, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    new-instance v14, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda11;

    invoke-direct {v14, v4}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;)V

    invoke-virtual {v12, v14}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v12, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    iget-boolean v14, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIconClickable:Z

    if-eqz v14, :cond_2

    move v14, v15

    goto :goto_1

    :cond_2
    move v14, v5

    :goto_1
    invoke-virtual {v12, v14}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :cond_3
    :goto_2
    if-nez v8, :cond_5

    iget-object v12, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    invoke-virtual {v12, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v12, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    const v13, 0x3ecccccd    # 0.4f

    :goto_3
    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_4

    :cond_5
    iget-object v9, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    invoke-virtual {v9, v15}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v9, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    invoke-virtual {v9, v13}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_4
    invoke-virtual {v4, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/volume/view/VolumeSeekBar;

    iput-object v9, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    iget v11, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    iput v11, v9, Lcom/android/systemui/volume/view/VolumeSeekBar;->stream:I

    iput-boolean v5, v9, Lcom/android/systemui/volume/view/VolumeSeekBar;->isTracking:Z

    iget-object v9, v9, Lcom/android/systemui/volume/view/VolumeSeekBar;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object v7, v9, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v9}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    iget v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mStream:I

    if-ne v7, v10, :cond_6

    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v7, v15}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    :cond_6
    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-static {v3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/SeekBar;->semSetMin(I)V

    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-static {v3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMaxLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-static {v3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v7, v8}, Lcom/android/systemui/volume/view/VolumeSeekBar;->setEnabled(Z)V

    const v7, 0x7f0a0e76

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->getStreamLabel$3(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v7

    const/16 v8, 0x16

    if-eq v7, v8, :cond_8

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v5

    goto :goto_5

    :cond_7
    const/16 v7, 0x8

    :goto_5
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_8
    const v7, 0x7f0a0c34

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    move v8, v5

    goto :goto_6

    :cond_9
    const/16 v8, 0x8

    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v7, 0x7f0a0e7d

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-boolean v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mIsDualViewEnabled:Z

    const-class v9, Lcom/android/systemui/util/SettingsHelper;

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v7, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v7, v9}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0813e2

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_a
    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0813d2

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_b
    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v8, v9}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0813e3

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0813e1

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_c
    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0813d1    # 1.808779E38f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0813e0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    const v7, 0x7f0a0e7e

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/android/systemui/volume/view/subscreen/simple/CoverDisplayLayoutHelper;->INSTANCE:Lcom/android/systemui/volume/view/subscreen/simple/CoverDisplayLayoutHelper;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    sget-object v12, Lcom/android/systemui/volume/view/subscreen/simple/CoverDisplayLayoutHelper;->INSTANCE:Lcom/android/systemui/volume/view/subscreen/simple/CoverDisplayLayoutHelper;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v0, :cond_d

    const v13, 0x7f071816

    goto :goto_8

    :cond_d
    const v13, 0x7f071821

    :goto_8
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v12

    sget-object v13, Lcom/android/systemui/volume/util/SettingHelper;->INSTANCE:Lcom/android/systemui/volume/util/SettingHelper;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "show_navigation_for_subscreen"

    invoke-static {v13, v14, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v15, :cond_10

    sget-object v13, Lcom/android/systemui/volume/VolumeDependency;->Companion:Lcom/android/systemui/volume/VolumeDependency$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/android/systemui/volume/VolumeDependency;->sInstance:Lcom/android/systemui/volume/VolumeDependency;

    if-eqz v13, :cond_e

    goto :goto_9

    :cond_e
    const/4 v13, 0x0

    :goto_9
    const-class v14, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {v13, v14}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {v13}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontSubDisplay()Landroid/view/Display;

    move-result-object v13

    if-eqz v13, :cond_10

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v13, v14}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v15, v14, Landroid/graphics/Point;->x:I

    iget v14, v14, Landroid/graphics/Point;->y:I

    if-ge v15, v14, :cond_10

    invoke-virtual {v13}, Landroid/view/Display;->getRotation()I

    move-result v13

    if-eqz v13, :cond_10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v0, :cond_f

    const v12, 0x7f071817

    goto :goto_a

    :cond_f
    const v12, 0x7f071822

    :goto_a
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v12

    :cond_10
    mul-float/2addr v11, v12

    invoke-static {v11}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    if-eqz v0, :cond_11

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f071815

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v10

    goto :goto_b

    :cond_11
    const/4 v10, 0x0

    :goto_b
    mul-float/2addr v11, v10

    invoke-static {v11}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3, v6}, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->updateContentDescription$1(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mSeekBar:Lcom/android/systemui/volume/view/VolumeSeekBar;

    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v6

    const/16 v8, 0x16

    if-ne v6, v8, :cond_12

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_12
    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-eqz v0, :cond_13

    move-object v8, v6

    goto :goto_c

    :cond_13
    move-object v8, v4

    :goto_c
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v7

    iput-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mTouchDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    if-eqz v0, :cond_14

    goto :goto_d

    :cond_14
    move-object v6, v4

    :goto_d
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mTouchUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarKeyDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mKeyDownAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mVolumePanelMotion:Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/systemui/volume/view/VolumePanelMotion;->getSeekBarKeyUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubLargeDisplayVolumeRowView;->mKeyUpAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getActiveStream()I

    move-result v2

    if-ne v0, v2, :cond_15

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    iput v0, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mActiveStream:I

    :cond_15
    iget-boolean v0, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    if-nez v0, :cond_21

    const v0, 0x7f0a0e7f

    invoke-virtual {v1, v0}, Landroid/app/Presentation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_13

    :cond_16
    invoke-virtual {v1}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0d0562

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;

    iget-object v6, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mStore:Lcom/android/systemui/volume/store/VolumePanelStore;

    iget-object v7, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    iget-boolean v8, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mIsDualAudio:Z

    if-eqz v8, :cond_17

    if-eqz v0, :cond_17

    move v0, v15

    goto :goto_e

    :cond_17
    move v0, v5

    :goto_e
    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStoreInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object v6, v8, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v8}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    iput-object v7, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mHandlerWrapper:Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-virtual {v2}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isHasVibrator()Z

    move-result v7

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v8

    iput v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getRealLevel()I

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMin()I

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getLevelMax()I

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isSliderEnabled()Z

    move-result v8

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isIconEnabled()Z

    move-result v9

    if-eqz v0, :cond_18

    const v6, 0x7f0a0e78

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_10

    :cond_18
    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    iput-object v12, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    invoke-virtual {v12, v6, v2, v3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->initialize(Lcom/android/systemui/volume/store/VolumePanelStore;Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)V

    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setClickable(Z)V

    if-nez v8, :cond_1a

    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    if-eqz v9, :cond_19

    move v12, v13

    goto :goto_f

    :cond_19
    const v12, 0x3ecccccd    # 0.4f

    :goto_f
    invoke-virtual {v6, v12}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_10

    :cond_1a
    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    invoke-virtual {v6, v15}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIcon:Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    invoke-virtual {v6, v13}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_10
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v9, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v9, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIconActiveBgColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v9, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mIconActiveColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f060970

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f060971

    invoke-virtual {v11, v13, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v11

    invoke-virtual {v6, v9, v11}, Landroid/widget/SeekBar;->setDualModeOverlapColor(II)V

    iget v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mStream:I

    if-ne v6, v10, :cond_1b

    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v15}, Landroid/widget/SeekBar;->setTouchDisabled(Z)V

    :cond_1b
    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v9, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;

    invoke-direct {v9, v4, v5}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;I)V

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMinLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->semSetMin(I)V

    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewMaxLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v3}, Lcom/android/systemui/volume/view/ViewLevelConverter;->viewRealLevel(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getEarProtectLevel()I

    move-result v6

    iget v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mEarProtectLevel:I

    if-eq v6, v8, :cond_1c

    iput v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mEarProtectLevel:I

    iget-object v8, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v8, v6}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    :cond_1c
    const v6, 0x7f0a0e76

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->getStreamLabel$2(Lcom/samsung/systemui/splugins/volume/VolumePanelState;Lcom/samsung/systemui/splugins/volume/VolumePanelRow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v2

    const/16 v6, 0x16

    if-eq v2, v6, :cond_1e

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1d

    move v2, v5

    goto :goto_11

    :cond_1d
    const/16 v2, 0x8

    :goto_11
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1e
    const v2, 0x7f0a0c34

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1f

    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/view/icon/SubVolumeIcon;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_12

    :cond_1f
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_12
    invoke-virtual {v4, v3, v7}, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->updateContentDescription(Lcom/samsung/systemui/splugins/volume/VolumePanelRow;Z)V

    iget-object v0, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, v4, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumeRowView;->mLabelTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    invoke-virtual {v3}, Lcom/samsung/systemui/splugins/volume/VolumePanelRow;->getStreamType()I

    move-result v0

    const/16 v2, 0x16

    if-ne v0, v2, :cond_20

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_20
    iget-object v0, v1, Lcom/android/systemui/volume/view/subscreen/simple/SubDisplayVolumePanelPresentation;->mRowContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_21
    :goto_13
    return-void
.end method

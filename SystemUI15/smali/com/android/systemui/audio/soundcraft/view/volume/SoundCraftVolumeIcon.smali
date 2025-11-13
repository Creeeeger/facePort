.class public final Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;


# instance fields
.field public final context:Landroid/content/Context;

.field public currentMediaIconState:I

.field public icon:Landroid/view/View;

.field public iconColor:I

.field public init:Z

.field public isAnimateType:Z

.field public shouldUpdateIcon:Z

.field public stream:I

.field public final viewModel$delegate:Lkotlin/Lazy;

.field public final volumeIconMotion:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->context:Landroid/content/Context;

    sget-object p2, Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;->INSTANCE:Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftViewModelExt;

    sget-object p2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$special$$inlined$lazyViewModel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon$special$$inlined$lazyViewModel$1;-><init>(Lcom/android/systemui/audio/soundcraft/di/vm/component/SoundCraftVMComponent;)V

    invoke-static {p2, v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->viewModel$delegate:Lkotlin/Lazy;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->init:Z

    const p2, 0x7f06003b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->iconColor:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->currentMediaIconState:I

    new-instance p2, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;

    invoke-direct {p2, p1}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->volumeIconMotion:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;

    return-void
.end method


# virtual methods
.method public final getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    return-object p0
.end method

.method public final updateLayout$3(I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->shouldUpdateIcon:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->getSupportAnimatedIcon()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0d0450

    goto :goto_0

    :cond_2
    const v3, 0x7f0d0452

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->icon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_1
    iget-boolean v2, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->shouldUpdateIcon:Z

    const/4 v3, 0x1

    const v4, 0x7f0a0e54

    const v5, 0x7f0a0e53

    const v6, 0x7f0a0e52

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->isAnimateType:Z

    if-eqz v2, :cond_13

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->getSupportAnimatedIcon()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-double v10, v1

    const-wide v12, 0x4052c00000000000L    # 75.0

    cmpl-double v2, v10, v12

    if-lez v2, :cond_4

    move v2, v7

    goto :goto_2

    :cond_4
    const-wide v12, 0x4042c00000000000L    # 37.5

    cmpl-double v2, v10, v12

    if-lez v2, :cond_5

    move v2, v8

    goto :goto_2

    :cond_5
    if-lez v1, :cond_6

    move v2, v3

    goto :goto_2

    :cond_6
    move v2, v9

    :goto_2
    iget v10, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->currentMediaIconState:I

    if-ne v2, v10, :cond_7

    iget-boolean v11, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->shouldUpdateIcon:Z

    if-eqz v11, :cond_13

    :cond_7
    const/4 v11, -0x1

    if-eq v10, v11, :cond_a

    if-ne v2, v10, :cond_8

    goto :goto_3

    :cond_8
    sub-int v12, v2, v10

    if-lez v12, :cond_9

    add-int/lit8 v12, v10, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v12, v10, -0x1

    goto :goto_4

    :cond_a
    :goto_3
    move v12, v2

    :goto_4
    iget-object v13, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->icon:Landroid/view/View;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v14, 0x7f0a0e4d

    invoke-virtual {v13, v14}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v20, v13

    check-cast v20, Landroid/widget/ImageView;

    iget-object v13, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->icon:Landroid/view/View;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v14, 0x7f0a0e51

    invoke-virtual {v13, v14}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v19, v13

    check-cast v19, Landroid/widget/ImageView;

    iget-object v13, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->icon:Landroid/view/View;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v13, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Landroid/widget/ImageView;

    iget-object v13, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->icon:Landroid/view/View;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v13, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v17, v13

    check-cast v17, Landroid/widget/ImageView;

    iget-object v13, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->icon:Landroid/view/View;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v13, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v16, v13

    check-cast v16, Landroid/widget/ImageView;

    if-eq v10, v11, :cond_c

    if-ne v10, v2, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v21, v9

    goto :goto_6

    :cond_c
    :goto_5
    move/from16 v21, v3

    :goto_6
    if-eq v12, v3, :cond_f

    if-eq v12, v8, :cond_e

    if-eq v12, v7, :cond_d

    iget-object v14, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->volumeIconMotion:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v21}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->startMuteAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_7

    :cond_d
    iget-object v14, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->volumeIconMotion:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v21}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->startMaxAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_7

    :cond_e
    iget-object v10, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->volumeIconMotion:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;

    iget v11, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->stream:I

    const/16 v18, 0x0

    move v12, v2

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move/from16 v19, v21

    invoke-virtual/range {v10 .. v19}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_7

    :cond_f
    iget-object v10, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->volumeIconMotion:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;

    iget v11, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->stream:I

    const/16 v18, 0x0

    move v12, v2

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move/from16 v19, v21

    invoke-virtual/range {v10 .. v19}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :goto_7
    iput-boolean v9, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->shouldUpdateIcon:Z

    iput v2, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->currentMediaIconState:I

    goto :goto_9

    :cond_10
    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->icon:Landroid/view/View;

    if-eqz v2, :cond_13

    instance-of v10, v2, Landroid/widget/ImageView;

    if-eqz v10, :cond_13

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->context:Landroid/content/Context;

    invoke-virtual {v10}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->getIconType()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    const v12, 0x7f080814

    goto :goto_8

    :pswitch_0
    iget-object v12, v10, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    iget-boolean v12, v12, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteSpeakerConnected:Z

    if-eqz v12, :cond_11

    const v12, 0x7f081479

    goto :goto_8

    :cond_11
    const v12, 0x7f081478

    goto :goto_8

    :pswitch_1
    const v12, 0x7f081473

    goto :goto_8

    :pswitch_2
    const v12, 0x7f08092a

    goto :goto_8

    :pswitch_3
    const v12, 0x7f080846

    goto :goto_8

    :pswitch_4
    const v12, 0x7f080845

    goto :goto_8

    :pswitch_5
    const v12, 0x7f08146d

    goto :goto_8

    :pswitch_6
    const v12, 0x7f080b83

    :goto_8
    invoke-virtual {v11, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->getIconType()I

    move-result v13

    const/16 v14, 0x9

    if-ne v13, v14, :cond_12

    iget-object v10, v10, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    invoke-virtual {v10}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    if-eqz v10, :cond_12

    sget-object v13, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v10, v9}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->getServerIconDrawableWithDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_12

    move-object v12, v10

    :cond_12
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    :goto_9
    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->isVolumeShocked(I)Z

    move-result v1

    if-eqz v1, :cond_14

    const v1, 0x7f060ad8

    goto :goto_a

    :cond_14
    const v1, 0x7f06003b

    :goto_a
    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->icon:Landroid/view/View;

    if-eqz v2, :cond_17

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/volume/VolumeBarViewModel;->getSupportAnimatedIcon()Z

    move-result v11

    if-nez v11, :cond_15

    instance-of v4, v2, Landroid/widget/ImageView;

    if-eqz v4, :cond_16

    new-array v3, v3, [Landroid/widget/ImageView;

    aput-object v2, v3, v9

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_b

    :cond_15
    invoke-virtual {v2, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-array v4, v7, [Landroid/widget/ImageView;

    aput-object v6, v4, v9

    aput-object v5, v4, v3

    aput-object v2, v4, v8

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    :cond_16
    :goto_b
    iget v2, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->iconColor:I

    if-eq v2, v1, :cond_17

    iget-object v3, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->volumeIconMotion:Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;

    iget-boolean v4, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->init:Z

    invoke-virtual {v3, v10, v2, v1, v4}, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIconMotion;->startIconTintColor(Ljava/util/ArrayList;IIZ)V

    iput v1, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->iconColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_17
    iput-boolean v9, v0, Lcom/android/systemui/audio/soundcraft/view/volume/SoundCraftVolumeIcon;->init:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

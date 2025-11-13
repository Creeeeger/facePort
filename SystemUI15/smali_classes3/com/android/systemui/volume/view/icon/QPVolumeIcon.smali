.class public final Lcom/android/systemui/volume/view/icon/QPVolumeIcon;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

.field public currentMediaIconState:I

.field public device:I

.field public icon:Landroid/view/View;

.field public iconAnimationType:Z

.field public iconType:I

.field public isShocked:Z

.field public seekBarEnabled:Z

.field public shouldUpdateIcon:Z

.field public stream:I

.field public final volumeIconMotion:Lcom/android/systemui/volume/view/icon/QPVolumeIconMotion;

.field public volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/icon/QPVolumeIcon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->iconType:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->currentMediaIconState:I

    new-instance p2, Lcom/android/systemui/volume/view/icon/QPVolumeIconMotion;

    invoke-direct {p2, p1}, Lcom/android/systemui/volume/view/icon/QPVolumeIconMotion;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/QPVolumeIconMotion;

    return-void
.end method


# virtual methods
.method public final initialize(IIIZZZLcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;)V
    .locals 6

    iput-object p7, p0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    iput-object p8, p0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    iput p2, p0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->device:I

    const/4 v0, 0x1

    const/16 v1, 0x80

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/16 v4, 0x9

    const/4 v5, 0x3

    if-eq p2, v1, :cond_8

    const p7, 0x8000

    if-eq p2, p7, :cond_7

    const/high16 p7, 0x4000000

    if-eq p2, p7, :cond_6

    const/high16 p7, 0x8000000

    if-eq p2, p7, :cond_5

    iget-object p2, p8, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->volumeModel:Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;

    iget-boolean p2, p2, Lcom/android/systemui/audio/soundcraft/model/common/VolumeModel;->isBroadcast:Z

    if-eqz p2, :cond_4

    iget-object p2, p8, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeDevices()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget-object p2, p2, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->bluetoothAdapterWrapper:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p2}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeDevices()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_c

    sget-object p7, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isNextBudsModel(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p7

    if-eqz p7, :cond_1

    :goto_0
    move v2, v4

    goto :goto_2

    :cond_1
    invoke-static {p2}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isBuds3(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p7

    if-eqz p7, :cond_2

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isBuds(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v5

    :goto_2
    move v5, v2

    goto :goto_3

    :cond_4
    move v5, v0

    goto :goto_3

    :cond_5
    const/4 v5, 0x7

    goto :goto_3

    :cond_6
    const/4 v5, 0x2

    goto :goto_3

    :cond_7
    const/16 v5, 0x8

    goto :goto_3

    :cond_8
    invoke-virtual {p7}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_c

    sget-object p7, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isNextBudsModel(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p7

    if-eqz p7, :cond_9

    goto :goto_0

    :cond_9
    invoke-static {p2}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isBuds3(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p7

    if-eqz p7, :cond_a

    goto :goto_1

    :cond_a
    invoke-static {p2}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isBuds(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p7

    if-eqz p7, :cond_b

    goto :goto_2

    :cond_b
    invoke-static {p2}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->isHomeMini(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v2, 0x6

    goto :goto_2

    :cond_c
    :goto_3
    if-nez p6, :cond_e

    iget-boolean p2, p0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->iconAnimationType:Z

    if-ne p2, p5, :cond_e

    iget p2, p0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->iconType:I

    if-eq p2, v5, :cond_d

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->shouldUpdateIcon:Z

    iput v5, p0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->iconType:I

    iput p1, p0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->stream:I

    iput-boolean p4, p0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->seekBarEnabled:Z

    iput-boolean p5, p0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->iconAnimationType:Z

    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    const p1, 0x3f59999a    # 0.85f

    goto :goto_5

    :cond_f
    const p1, 0x3ecccccd    # 0.4f

    :goto_5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0, p3}, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->updateLayout(I)V

    return-void
.end method

.method public final updateLayout(I)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->shouldUpdateIcon:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v4, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->device:I

    if-nez v4, :cond_2

    const v4, 0x7f0d0317

    goto :goto_0

    :cond_2
    const v4, 0x7f0d0552

    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->icon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_1
    iget-boolean v2, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->shouldUpdateIcon:Z

    const/4 v4, 0x1

    const v5, 0x7f0a0e54

    const v6, 0x7f0a0e53

    const v7, 0x7f0a0e52

    const v8, 0x7f0a0e51

    const v9, 0x7f0a0e4d

    const/4 v10, 0x0

    if-nez v2, :cond_3

    iget-boolean v11, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->iconAnimationType:Z

    if-eqz v11, :cond_15

    :cond_3
    iget v11, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->device:I

    if-nez v11, :cond_10

    int-to-double v11, v1

    const-wide v13, 0x4052c00000000000L    # 75.0

    cmpl-double v3, v11, v13

    const/4 v13, 0x2

    const/4 v14, 0x3

    if-lez v3, :cond_4

    move v3, v14

    goto :goto_2

    :cond_4
    const-wide v15, 0x4042c00000000000L    # 37.5

    cmpl-double v3, v11, v15

    if-lez v3, :cond_5

    move v3, v13

    goto :goto_2

    :cond_5
    if-lez v1, :cond_6

    move v3, v4

    goto :goto_2

    :cond_6
    move v3, v10

    :goto_2
    iget v11, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->currentMediaIconState:I

    if-ne v3, v11, :cond_7

    if-eqz v2, :cond_15

    :cond_7
    const/4 v2, -0x1

    if-eq v11, v2, :cond_a

    if-ne v3, v11, :cond_8

    goto :goto_3

    :cond_8
    sub-int v12, v3, v11

    if-lez v12, :cond_9

    add-int/lit8 v12, v11, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v12, v11, -0x1

    goto :goto_4

    :cond_a
    :goto_3
    move v12, v3

    :goto_4
    iget-object v15, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->icon:Landroid/view/View;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v23, v15

    check-cast v23, Landroid/widget/ImageView;

    iget-object v15, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->icon:Landroid/view/View;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15, v8}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v22, v15

    check-cast v22, Landroid/widget/ImageView;

    iget-object v15, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->icon:Landroid/view/View;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15, v7}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v18, v15

    check-cast v18, Landroid/widget/ImageView;

    iget-object v15, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->icon:Landroid/view/View;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v20, v15

    check-cast v20, Landroid/widget/ImageView;

    iget-object v15, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->icon:Landroid/view/View;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v19, v15

    check-cast v19, Landroid/widget/ImageView;

    if-eq v11, v2, :cond_c

    if-ne v11, v3, :cond_b

    goto :goto_5

    :cond_b
    move v2, v10

    goto :goto_6

    :cond_c
    :goto_5
    move v2, v4

    :goto_6
    if-eq v12, v4, :cond_f

    if-eq v12, v13, :cond_e

    if-eq v12, v14, :cond_d

    iget-object v11, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/QPVolumeIconMotion;

    const/4 v12, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v12

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move/from16 v23, v2

    invoke-virtual/range {v16 .. v23}, Lcom/android/systemui/volume/view/icon/QPVolumeIconMotion;->startMuteAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_7

    :cond_d
    iget-object v11, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/QPVolumeIconMotion;

    const/4 v12, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v12

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move/from16 v23, v2

    invoke-virtual/range {v16 .. v23}, Lcom/android/systemui/volume/view/icon/QPVolumeIconMotion;->startMaxAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_7

    :cond_e
    iget-object v15, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/QPVolumeIconMotion;

    iget v11, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->stream:I

    const/16 v21, 0x0

    move/from16 v16, v11

    move/from16 v17, v3

    move/from16 v24, v2

    invoke-virtual/range {v15 .. v24}, Lcom/android/systemui/volume/view/icon/QPVolumeIconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_7

    :cond_f
    iget-object v15, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->volumeIconMotion:Lcom/android/systemui/volume/view/icon/QPVolumeIconMotion;

    iget v11, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->stream:I

    const/16 v21, 0x0

    move/from16 v16, v11

    move/from16 v17, v3

    move/from16 v24, v2

    invoke-virtual/range {v15 .. v24}, Lcom/android/systemui/volume/view/icon/QPVolumeIconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :goto_7
    iput-boolean v10, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->shouldUpdateIcon:Z

    iput v3, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->currentMediaIconState:I

    goto/16 :goto_a

    :cond_10
    iget-object v2, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->icon:Landroid/view/View;

    if-eqz v2, :cond_15

    instance-of v11, v2, Landroid/widget/ImageView;

    if-eqz v11, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->iconType:I

    packed-switch v12, :pswitch_data_0

    const v12, 0x7f080814

    goto :goto_8

    :pswitch_0
    iget-object v12, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->volumeManager:Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;

    if-nez v12, :cond_11

    move-object v12, v3

    :cond_11
    iget-boolean v12, v12, Lcom/android/systemui/audio/soundcraft/interfaces/volume/VolumeManager;->remoteSpeakerConnected:Z

    if-eqz v12, :cond_12

    const v12, 0x7f081479

    goto :goto_8

    :cond_12
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
    invoke-virtual {v11, v12, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget v12, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->iconType:I

    const/16 v13, 0x9

    if-ne v12, v13, :cond_14

    iget-object v12, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->bluetoothDeviceManager:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;

    if-nez v12, :cond_13

    goto :goto_9

    :cond_13
    move-object v3, v12

    :goto_9
    invoke-virtual {v3}, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/BluetoothDeviceManager;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_14

    sget-object v12, Lcom/android/systemui/volume/util/BluetoothIconUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconUtil;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v3, v10}, Lcom/android/systemui/volume/util/BluetoothIconUtil;->getServerIconDrawableWithDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_14

    move-object v11, v3

    :cond_14
    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->iconType:I

    const v11, 0x7f060ad8

    if-eq v3, v4, :cond_16

    iget-boolean v3, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->seekBarEnabled:Z

    if-eqz v3, :cond_16

    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v3

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0xa

    if-lez v3, :cond_16

    if-ge v3, v1, :cond_16

    move v1, v11

    goto :goto_b

    :cond_16
    const v1, 0x7f06003b

    :goto_b
    if-ne v1, v11, :cond_17

    goto :goto_c

    :cond_17
    move v4, v10

    :goto_c
    iput-boolean v4, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->isShocked:Z

    invoke-static {v1, v2}, Lcom/android/systemui/volume/util/ColorUtils;->getSingleColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->icon:Landroid/view/View;

    if-eqz v2, :cond_19

    iget v0, v0, Lcom/android/systemui/volume/view/icon/QPVolumeIcon;->device:I

    if-nez v0, :cond_18

    invoke-virtual {v2, v9}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_d

    :cond_18
    instance-of v0, v2, Landroid/widget/ImageView;

    if-eqz v0, :cond_19

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_19
    :goto_d
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

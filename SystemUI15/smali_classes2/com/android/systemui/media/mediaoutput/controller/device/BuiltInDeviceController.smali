.class public final Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;
.super Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion;


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final context:Landroid/content/Context;

.field public final localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public updateJob:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;->audioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "init() - currentDeviceType = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BuiltInDeviceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, p3, p3, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final adjustVolume(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustVolume() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BuiltInDeviceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;->INSTANCE:Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-virtual {p1}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->getNeedEarProtect()Z

    move-result p1

    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$adjustVolume$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$adjustVolume$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, p2, v2}, Lcom/android/systemui/media/mediaoutput/common/DeviceUtils;->checkVolumeLimiter(Landroid/content/ContentResolver;ZILkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->close()V

    const-string p0, "BuiltInDeviceController"

    const-string v0, "close()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 2

    const-string/jumbo v0, "transfer() - "

    const-string v1, "BuiltInDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;->audioManager:Landroid/media/AudioManager;

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/android/systemui/media/mediaoutput/ext/AudioManagerExtKt;->setDeviceForced(Landroid/media/AudioManager;Landroid/media/AudioDeviceInfo;)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->setDualPlayMode(Z)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateDevices$1(Ljava/util/List;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$updateDevices$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$updateDevices$1;

    iget v3, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$updateDevices$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$updateDevices$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$updateDevices$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$updateDevices$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$updateDevices$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$updateDevices$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$updateDevices$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    move-object/from16 v4, p1

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_3

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "\t"

    const-string v12, "BuiltInDeviceController"

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioDeviceInfo;

    sget-object v13, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->toLogText(Landroid/media/AudioDeviceInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10, v12}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Landroid/media/AudioDeviceInfo;

    sget-object v14, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v1}, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->isValidDeviceTypeForMedia(Landroid/media/AudioDeviceInfo;Z)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v10}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    :cond_a
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x3

    if-eqz v6, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioDeviceInfo;

    sget-object v10, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->Companion:Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v10

    const/16 v13, 0x13

    const-string v14, "BuiltIn_"

    if-eq v10, v13, :cond_12

    const/16 v13, 0x16

    const v15, 0x7f13074c

    const/4 v5, 0x2

    if-eq v10, v13, :cond_11

    const/16 v13, 0x17

    if-eq v10, v13, :cond_10

    const/16 v13, 0x1a

    if-eq v10, v13, :cond_f

    const/16 v13, 0x1b

    if-eq v10, v13, :cond_f

    packed-switch v10, :pswitch_data_0

    const v9, 0x7f130748

    packed-switch v10, :pswitch_data_1

    move-object v10, v7

    goto/16 :goto_a

    :pswitch_0
    new-instance v10, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v13

    invoke-static {v13, v14}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    new-instance v13, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    invoke-direct {v13, v9, v7, v5, v7}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/device/DockKt;->Dock$delegate:Lkotlin/Lazy;

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v20

    const/16 v26, 0x1f4

    const/16 v27, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, v10

    move-object/from16 v18, v13

    invoke-direct/range {v16 .. v27}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_1
    new-instance v10, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v5

    invoke-static {v5, v14}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/device/UsbKt;->Usb$delegate:Lkotlin/Lazy;

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v32

    const/16 v38, 0x1f4

    const/16 v39, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v28, v10

    invoke-direct/range {v28 .. v39}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_2
    new-instance v10, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v13

    invoke-static {v13, v14}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    invoke-direct {v15, v9, v7, v5, v7}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/device/HdmiKt;->Hdmi$delegate:Lkotlin/Lazy;

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v17

    const/16 v23, 0x1f4

    const/16 v24, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v13, v10

    invoke-direct/range {v13 .. v24}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_3
    new-instance v10, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/device/SoundAccessoryKt;->SoundAccessory$delegate:Lkotlin/Lazy;

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v29

    const/16 v35, 0x1f4

    const/16 v36, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v25, v10

    invoke-direct/range {v25 .. v36}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_4
    new-instance v10, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v13

    invoke-static {v13, v14}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v13, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    if-ne v8, v9, :cond_c

    goto :goto_7

    :cond_c
    const v15, 0x7f13074a

    :goto_7
    invoke-direct {v13, v15, v7, v5, v7}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object v8, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v8, Lcom/android/systemui/media/mediaoutput/icons/device/LevelUKt;->LevelU$delegate:Lkotlin/Lazy;

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v17

    const/16 v23, 0xf4

    const/16 v24, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v5, v13

    move-object v13, v10

    move-object v15, v5

    move/from16 v22, p2

    invoke-direct/range {v13 .. v24}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :pswitch_5
    new-instance v10, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v8

    invoke-static {v8, v14}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    new-instance v8, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_d

    const v9, 0x7f13133c

    goto :goto_8

    :cond_d
    const v9, 0x7f130dac

    :goto_8
    invoke-direct {v8, v9, v7, v5, v7}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_e

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/device/TabletKt;->Tablet$delegate:Lkotlin/Lazy;

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_9

    :cond_e
    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/device/MobileDeviceKt;->MobileDevice$delegate:Lkotlin/Lazy;

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v29

    const/16 v35, 0x1f4

    const/16 v36, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v25, v10

    move-object/from16 v27, v8

    invoke-direct/range {v25 .. v36}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :cond_f
    new-instance v10, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v14

    new-instance v8, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    invoke-direct {v8, v15, v7, v5, v7}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/device/LevelUKt;->LevelU$delegate:Lkotlin/Lazy;

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v17

    const/16 v23, 0xf4

    const/16 v24, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v10

    move-object v15, v8

    move/from16 v22, p2

    invoke-direct/range {v13 .. v24}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_a

    :cond_10
    new-instance v10, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v5

    invoke-static {v5, v14}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object v8, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v8, Lcom/android/systemui/media/mediaoutput/icons/device/HearingAidsKt;->HearingAids$delegate:Lkotlin/Lazy;

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v29

    const/16 v35, 0x1f4

    const/16 v36, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v25, v10

    invoke-direct/range {v25 .. v36}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :cond_11
    :pswitch_6
    new-instance v10, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v8

    invoke-static {v8, v14}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v8, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    invoke-direct {v8, v15, v7, v5, v7}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v9, Lcom/android/systemui/media/mediaoutput/icons/device/LevelUKt;->LevelU$delegate:Lkotlin/Lazy;

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v17

    const/16 v23, 0xf4

    const/16 v24, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v10

    move-object v15, v8

    move/from16 v22, p2

    invoke-direct/range {v13 .. v24}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_a

    :cond_12
    :pswitch_7
    new-instance v10, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v5

    invoke-static {v5, v14}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    sget-object v5, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object v8, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v8, Lcom/android/systemui/media/mediaoutput/icons/device/LineKt;->Line$delegate:Lkotlin/Lazy;

    invoke-interface {v8}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v29

    const/16 v35, 0x1f4

    const/16 v36, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v25, v10

    invoke-direct/range {v25 .. v36}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_a
    if-eqz v10, :cond_13

    iput-object v6, v10, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    move-object v7, v10

    :cond_13
    if-eqz v7, :cond_14

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    const/4 v5, 0x1

    const/16 v8, 0xa

    goto/16 :goto_6

    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    iget-object v6, v5, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    if-eqz v6, :cond_16

    goto :goto_c

    :cond_16
    move-object v6, v7

    :goto_c
    sget-object v8, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;

    iget-object v10, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    invoke-virtual {v10}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v10

    if-ne v10, v8, :cond_17

    goto :goto_d

    :cond_17
    move-object v6, v7

    :goto_d
    if-eqz v6, :cond_18

    iget-object v6, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v6

    sget-object v8, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    const/16 v10, 0x15f

    invoke-static {v5, v7, v6, v8, v10}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;Landroidx/compose/ui/graphics/vector/ImageVector;ILcom/android/systemui/media/mediaoutput/entity/State;I)Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->deepCopy$1(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V

    move-object v5, v6

    :cond_18
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1a
    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->devicesFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object v1, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$updateDevices$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v2, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$updateDevices$1;->label:I

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1b

    return-object v3

    :cond_1b
    :goto_f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

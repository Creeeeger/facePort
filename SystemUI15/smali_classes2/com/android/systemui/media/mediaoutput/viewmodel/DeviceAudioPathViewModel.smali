.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/viewmodel/AudioPathInteraction;


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion;


# instance fields
.field public final _audioDevices:Landroidx/lifecycle/MutableLiveData;

.field public final audioDevices:Landroidx/lifecycle/MutableLiveData;

.field public final deviceId:Ljava/lang/String;

.field public final mediaSdkManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

.field public numOfAudioOutputChanges:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->Companion:Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;Landroidx/lifecycle/SavedStateHandle;)V
    .locals 4

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->mediaSdkManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->_audioDevices:Landroidx/lifecycle/MutableLiveData;

    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->audioDevices:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->numOfAudioOutputChanges:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceAudioPathViewModel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const-string v1, "deviceId"

    invoke-virtual {p2, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->deviceId:Ljava/lang/String;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->deviceId:Ljava/lang/String;

    const-string v2, "deviceId changed : "

    const-string v3, " -> "

    invoke-static {v2, v1, v3, p2, v0}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->deviceId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->updateDevices()V

    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p2, p1, p1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final adjustVolume(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;I)V
    .locals 0

    return-void
.end method

.method public final getAudioDevices()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->audioDevices:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final onCleared()V
    .locals 1

    const-string p0, "DeviceAudioPathViewModel"

    const-string v0, "onCleared()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/TvConnectedDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->deviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/TvConnectedDevice;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/entity/TvConnectedDevice;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->mediaSdkManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    iget-object v2, v2, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object v2, v2, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->mediaOutputSelectedOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;->selectMediaOutput(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$ChangeAudioOutputOnTv;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$ChangeAudioOutputOnTv;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/TvConnectedDevice;->name:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget v2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->numOfAudioOutputChanges:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, v2}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;Ljava/lang/String;Ljava/lang/Long;)V

    iget p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->numOfAudioOutputChanges:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->numOfAudioOutputChanges:I

    :cond_1
    return-void
.end method

.method public final updateDevices()V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "DeviceAudioPathViewModel"

    const-string/jumbo v2, "updateDevices()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->deviceId:Ljava/lang/String;

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->mediaSdkManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    iget-object v3, v2, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object v3, v3, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->mediaOutputSelectedOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;

    invoke-virtual {v3, v4}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;->getCurrentMediaOutput(Ljava/lang/String;)Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceDomain;

    move-result-object v3

    iget-object v2, v2, Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;->mediaSdkOperationManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;

    iget-object v2, v2, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/MediaSdkOperationManager;->mediaOutputSelectedOperationImpl:Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;

    invoke-virtual {v2, v4}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputSelectedOperationImpl;->getMediaOutputDevice(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceDomain;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\t"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceDomain;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/entity/TvConnectedDevice;->Companion:Lcom/android/systemui/media/mediaoutput/entity/TvConnectedDevice$Companion;

    iget-object v8, v5, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceDomain;->deviceId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v9, v3, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceDomain;->deviceId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v9, v6

    :goto_2
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v5, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceDomain;->description:Ljava/lang/String;

    if-eqz v7, :cond_3

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    move-object v13, v7

    goto :goto_3

    :cond_3
    move-object v13, v6

    :goto_3
    sget-object v6, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    iget-object v7, v5, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceDomain;->deviceType:Ljava/lang/String;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v9, "QSYM"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_4

    :cond_4
    sget-object v7, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/icons/device/GroupSpeakerKt;->GroupSpeaker$delegate:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_5

    :sswitch_1
    const-string v9, "HDMI"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    sget-object v7, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/icons/device/HdmiKt;->Hdmi$delegate:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_5

    :sswitch_2
    const-string v9, "USB"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    sget-object v7, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/icons/device/UsbKt;->Usb$delegate:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_5

    :sswitch_3
    const-string v9, "TV"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    sget-object v7, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    invoke-static {}, Lcom/android/systemui/media/mediaoutput/icons/device/TvKt;->getTv()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v7

    goto :goto_5

    :sswitch_4
    const-string v9, "BT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_4

    :cond_8
    sget-object v7, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/icons/device/SoundAccessoryKt;->SoundAccessory$delegate:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_5

    :sswitch_5
    const-string v9, "OPTICAL"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_4

    :cond_9
    sget-object v7, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/icons/device/LineKt;->Line$delegate:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_5

    :cond_a
    :goto_4
    sget-object v7, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v7, Lcom/android/systemui/media/mediaoutput/icons/device/LevelBoxKt;->LevelBox$delegate:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v14

    if-eqz v8, :cond_b

    sget-object v6, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    :goto_6
    move-object/from16 v16, v6

    goto :goto_7

    :cond_b
    sget-object v6, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    goto :goto_6

    :goto_7
    new-instance v6, Lcom/android/systemui/media/mediaoutput/entity/TvConnectedDevice;

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v11, v5, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceDomain;->deviceId:Ljava/lang/String;

    iget-object v12, v5, Lcom/samsung/android/smartthingsmediasdk/mediasdk/manager/mediasdkoperations/mediaoutputselection/MediaOutputDeviceDomain;->deviceName:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v19, 0xd0

    const/16 v20, 0x0

    move-object v10, v6

    invoke-direct/range {v10 .. v20}, Lcom/android/systemui/media/mediaoutput/entity/TvConnectedDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;Lcom/android/systemui/media/mediaoutput/entity/State;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    move-object v1, v6

    :goto_8
    if-nez v1, :cond_e

    sget-object v1, Lcom/android/systemui/media/mediaoutput/entity/TvConnectedDevice;->Companion:Lcom/android/systemui/media/mediaoutput/entity/TvConnectedDevice$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/entity/TvConnectedDevice;

    new-instance v5, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    const/4 v2, 0x2

    const v3, 0x7f1313da

    invoke-direct {v5, v3, v6, v2, v6}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    invoke-static {}, Lcom/android/systemui/media/mediaoutput/icons/device/TvKt;->getTv()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v7

    sget-object v9, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    const/16 v12, 0xd4

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lcom/android/systemui/media/mediaoutput/entity/TvConnectedDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;Lcom/android/systemui/media/mediaoutput/entity/State;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_e
    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/viewmodel/DeviceAudioPathViewModel;->_audioDevices:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1fae1c28 -> :sswitch_5
        0x852 -> :sswitch_4
        0xa82 -> :sswitch_3
        0x14964 -> :sswitch_2
        0x21c398 -> :sswitch_1
        0x2614b6 -> :sswitch_0
    .end sparse-switch
.end method

.class public final Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2;->this$0:Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Landroid/media/AudioDeviceInfo;

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2;->this$0:Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    iget-object v4, p2, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;->deviceIconInteractor:Lcom/android/systemui/volume/domain/interactor/DeviceIconInteractor;

    if-eqz v2, :cond_5

    iget-object v2, p2, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;->localBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v2, :cond_5

    iget-object v5, p2, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v2, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance p1, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$Bluetooth;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-boolean v6, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    const-string/jumbo v6, "settings_ui"

    const-string v7, "bt_advanced_header_enabled"

    invoke-static {v6, v7, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "BluetoothUtils"

    if-nez v6, :cond_3

    const-string v5, "isAdvancedDetailsHeader: advancedEnabled is false"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "isAdvancedDetailsHeader: untetheredHeadset is true"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v4, Lcom/android/systemui/volume/domain/interactor/DeviceIconInteractor;->context:Landroid/content/Context;

    const v5, 0x7f080914

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/android/settingslib/flags/Flags;->FEATURE_FLAGS:Lcom/android/settingslib/flags/FeatureFlagsImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iget-object v4, v4, Lcom/android/systemui/volume/domain/interactor/DeviceIconInteractor;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-direct {p1, p2, v4, v2}, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$Bluetooth;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    new-instance p2, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$Wired;

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    iget-object v5, v4, Lcom/android/systemui/volume/domain/interactor/DeviceIconInteractor;->context:Landroid/content/Context;

    iget-object v4, v4, Lcom/android/systemui/volume/domain/interactor/DeviceIconInteractor;->iconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/media/DeviceIconUtil;->getIconResIdFromAudioDeviceType(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p2, v2, p1}, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$Wired;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object p1, p2

    goto :goto_3

    :cond_6
    new-instance v2, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$BuiltIn;

    iget-object p2, p2, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/media/PhoneMediaDevice;->getMediaTransferThisDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    iget-object v5, v4, Lcom/android/systemui/volume/domain/interactor/DeviceIconInteractor;->context:Landroid/content/Context;

    iget-object v4, v4, Lcom/android/systemui/volume/domain/interactor/DeviceIconInteractor;->iconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/media/DeviceIconUtil;->getIconResIdFromAudioDeviceType(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v2, p2, p1}, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$BuiltIn;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v2

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    iput v3, v0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/volume/domain/interactor/AudioOutputInteractor$currentAudioDevice$lambda$2$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

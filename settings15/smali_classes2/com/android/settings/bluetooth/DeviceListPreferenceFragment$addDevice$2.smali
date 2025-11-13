.class final Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field label:I

.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;->$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;->$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;-><init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iget-object p1, p1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    const/16 v1, 0xc

    if-eq p1, v1, :cond_2

    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iget-object v4, p1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->scanType:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$ScanType;

    sget-object v5, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$ScanType;->LE:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$ScanType;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$ScanType;->CLASSIC:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$ScanType;

    if-ne v4, v5, :cond_7

    iget-object p1, p1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->filter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;->$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;->this$0:Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;->$cachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iput v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$addDevice$2;->label:I

    iget-object v3, p1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceCategory;

    const-string v5, "DeviceListPreferenceFragment"

    if-nez v3, :cond_5

    const-string p0, "Trying to create a device preference before the list group/category exists!"

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    move-object p0, v2

    goto :goto_1

    :cond_5
    iget-object v3, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v1, :cond_6

    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isExclusivelyManagedBluetoothDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p0, "Trying to create preference for a exclusively managed device"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iget-object v1, p1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->devicePreferenceMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$createDevicePreference$preference$1;

    invoke-direct {v3, p1, v4}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$createDevicePreference$preference$1;-><init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "computeIfAbsent(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v3, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v4, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$createDevicePreference$2;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v1, v5}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$createDevicePreference$2;-><init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    return-object v2
.end method

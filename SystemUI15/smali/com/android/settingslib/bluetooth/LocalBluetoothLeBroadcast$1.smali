.class public final Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 7

    const-string v0, "Bluetooth service connected: "

    const-string v1, "LocalBluetoothLeBroadcast"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1a

    const/4 v2, 0x1

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-boolean v3, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mIsBroadcastProfileReady:Z

    if-nez v3, :cond_4

    check-cast p2, Landroid/bluetooth/BluetoothLeBroadcast;

    iput-object p2, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    iput-boolean v2, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mIsBroadcastProfileReady:Z

    iget-object p1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p2, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    if-nez p1, :cond_0

    const-string p1, "The BluetoothLeBroadcast is null."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->updateBroadcastInfoFromBroadcastMetadata(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object p2, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mContentResolver:Landroid/content/ContentResolver;

    if-nez p2, :cond_2

    const-string p1, "mContentResolver is null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    sget-object p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->SETTINGS_URIS:[Landroid/net/Uri;

    array-length v2, p2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, p2, v3

    iget-object v5, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mSettingsObserver:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$BroadcastSettingsObserver;

    invoke-virtual {v5, v4, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onServiceConnected: register mCachedBroadcastCallbackExecutorMap = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mCachedBroadcastCallbackExecutorMap:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mCachedBroadcastCallbackExecutorMap:Ljava/util/Map;

    new-instance p2, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;)V

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    goto :goto_3

    :cond_4
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-boolean p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mIsBroadcastAssistantProfileReady:Z

    if-nez p1, :cond_6

    iput-boolean v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mIsBroadcastAssistantProfileReady:Z

    check-cast p2, Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcastAssistant:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastAssistantCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$3;

    if-nez p2, :cond_5

    const-string p0, "registerBroadcastAssistantCallback failed, the BluetoothLeBroadcastAssistant is null."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    :try_start_0
    invoke-virtual {p2, p1, p0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "registerBroadcastAssistantCallback failed. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method public final onServiceDisconnected(I)V
    .locals 4

    const-string v0, "Bluetooth service disconnected: "

    const-string v1, "LocalBluetoothLeBroadcast"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1a

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-boolean v3, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mIsBroadcastProfileReady:Z

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iput-boolean v2, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mIsBroadcastProfileReady:Z

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->-$$Nest$mnotifyBroadcastStateChange(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;I)V

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v3, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$2;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mCachedBroadcastCallbackExecutorMap:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-boolean v0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mIsBroadcastAssistantProfileReady:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mIsBroadcastAssistantProfileReady:Z

    iget-object v0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastAssistantCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$3;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcastAssistant:Landroid/bluetooth/BluetoothLeBroadcastAssistant;

    if-nez p1, :cond_1

    const-string/jumbo p1, "unregisterBroadcastAssistantCallback, the BluetoothLeBroadcastAssistant is null."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeBroadcastAssistant;->unregisterCallback(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregisterBroadcastAssistantCallback failed. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-boolean p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mIsBroadcastAssistantProfileReady:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mIsBroadcastProfileReady:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mContentResolver:Landroid/content/ContentResolver;

    if-nez p1, :cond_3

    const-string p0, "mContentResolver is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mSettingsObserver:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$BroadcastSettingsObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    :goto_1
    return-void
.end method

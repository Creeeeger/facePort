.class public final Lcom/android/systemui/volume/util/BroadcastReceiverManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiverItemMap:Ljava/util/Map;

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->DISPLAY_MANAGER:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    sget-object v3, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->INSTANCE:Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->ALLSOUND_OFF:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    invoke-static {v1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->MIRROR_LINK:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    invoke-static {v1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->BUDS_TOGETHER:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    invoke-static {v1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->MUSIC_SHARE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    invoke-static {v1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->DUAL_AUDIO_MODE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    invoke-static {v1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->HEADSET_CONNECTION:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    invoke-static {v1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->A2DP_ACTIVE_DEVICE_CHANGE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    invoke-static {v1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->BUDS_ICON_SERVER_CHANGE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    invoke-static {v1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->UNINSTALL_PACKAGE:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    invoke-static {v1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->HDMI_CONNECTION:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    new-instance v2, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    invoke-static {v1}, Lcom/android/systemui/volume/util/BroadcastReceiverIntentFilterFactory;->create(Lcom/android/systemui/volume/util/BroadcastReceiverType;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v3

    filled-new-array/range {v6 .. v16}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final registerHeadsetConnectionAction(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastReceiverItemMap:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/volume/util/BroadcastReceiverType;->HEADSET_CONNECTION:Lcom/android/systemui/volume/util/BroadcastReceiverType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;

    if-eqz v0, :cond_0

    new-instance v9, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerHeadsetConnectionAction$1$1;

    invoke-direct {v9, p1, p2}, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerHeadsetConnectionAction$1$1;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iget-object v3, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->intentFilter:Landroid/content/IntentFilter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x3c

    move-object v2, v9

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iput-object v9, v0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$BroadcastReceiverItem;->receiver:Landroid/content/BroadcastReceiver;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    return-void
.end method

.class public final Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->setListening(Z)V

    iget-object v1, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    iget-object v1, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mLatinNetworkNameProvider:Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;

    check-cast v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->DISPLAY_CBCH50:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-interface {v6, v3, v4, v5}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v10, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v15, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-virtual {v10, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.location.MODE_CHANGED"

    invoke-virtual {v10, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/16 v16, 0x3c

    iget-object v8, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v9, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastReceiver:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v15

    move/from16 v15, v16

    invoke-static/range {v8 .. v15}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iget-object v8, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    iget-object v8, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastReceiver:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;

    if-eqz v5, :cond_0

    iget-object v9, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {v8, v9, v5}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    iget-object v5, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v5, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {v8, v5, v2}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v6, v3, v4, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.telephony.action.AREA_INFO_UPDATED"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/16 v15, 0x3c

    iget-object v8, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v9, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->broadcastReceiver:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$broadcastReceiver$1;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v15}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iget-object v2, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellBroadcastService:Landroid/telephony/ICellBroadcastService;

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v2, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.telephony.CellBroadcastService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/32 v5, 0x100000

    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const-string v5, "LatinNetworkNameProvider"

    const/4 v6, 0x1

    if-eq v3, v6, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const-string v6, "getCellBroadcastServicePackageName: found "

    invoke-static {v3, v6, v5}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_4

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v8, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v6, v8, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v8, "getCellBroadcastServicePackageName: "

    if-nez v6, :cond_5

    invoke-static {v8, v3, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v3

    goto :goto_1

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not have READ_PRIVILEGED_PHONE_STATE permission"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string v2, "getCellBroadcastServicePackageName: package name not found"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v7, :cond_7

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellBroadcastServiceConnection:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v4, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "Unable to bind to service"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    iget-object v2, v1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    iget-object v0, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    iget-object v0, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mQuickStarHelper:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;

    iget-boolean v1, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mIsRegistered:Z

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    const-string v2, "ShadeCarrierGroup"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mIsRegistered:Z

    :cond_8
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->setListening(Z)V

    iget-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    iget-object p1, p1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mLatinNetworkNameProvider:Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;

    check-cast p1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->DISPLAY_CBCH50:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->unregisterLocationListener()V

    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellBroadcastServiceConnection:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mQuickStarHelper:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;

    iget-boolean p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mIsRegistered:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast p1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    const-string v1, "ShadeCarrierGroup"

    invoke-virtual {p1, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->unregisterSubscriber(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mIsRegistered:Z

    :cond_2
    return-void
.end method

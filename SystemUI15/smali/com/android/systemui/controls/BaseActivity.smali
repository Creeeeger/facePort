.class public abstract Lcom/android/systemui/controls/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;

.field public final callback:Lcom/android/systemui/controls/BaseActivity$callback$1;

.field public final controller:Lcom/android/systemui/controls/controller/ControlsController;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/BaseActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/BaseActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p2, p0, Lcom/android/systemui/controls/BaseActivity;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    iput-object p3, p0, Lcom/android/systemui/controls/BaseActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p4, p0, Lcom/android/systemui/controls/BaseActivity;->executor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;-><init>(Lcom/android/systemui/controls/BaseActivity;)V

    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity;->broadcastReceiver:Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;

    new-instance p1, Lcom/android/systemui/controls/BaseActivity$callback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/BaseActivity$callback$1;-><init>(Lcom/android/systemui/controls/BaseActivity;)V

    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity;->callback:Lcom/android/systemui/controls/BaseActivity$callback$1;

    new-instance p1, Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;-><init>(Lcom/android/systemui/controls/BaseActivity;)V

    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity;->userTrackerCallback:Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;

    return-void
.end method


# virtual methods
.method public getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/BaseActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BaseActivity"

    return-object p0
.end method

.method public onBackKeyPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onBackKeyPressed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object v0

    const/4 v4, 0x0

    const/16 v7, 0x3c

    iget-object v1, p0, Lcom/android/systemui/controls/BaseActivity;->broadcastReceiver:Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iget-object p1, p0, Lcom/android/systemui/controls/BaseActivity;->executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/android/systemui/controls/BaseActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/BaseActivity;->userTrackerCallback:Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/controls/BaseActivity;->callback:Lcom/android/systemui/controls/BaseActivity$callback$1;

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/BaseActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/BaseActivity;->userTrackerCallback:Lcom/android/systemui/controls/BaseActivity$userTrackerCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/BaseActivity;->broadcastReceiver:Lcom/android/systemui/controls/BaseActivity$broadcastReceiver$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "broadcastReceiver not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onHomeKeyPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onHomeKeyPressed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecentAppsKeyPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onRecentAppsKeyPressed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

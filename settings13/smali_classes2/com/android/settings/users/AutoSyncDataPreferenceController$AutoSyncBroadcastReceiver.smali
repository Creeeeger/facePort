.class Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoSyncDataPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AutoSyncDataPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoSyncBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AutoSyncDataPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/users/AutoSyncDataPreferenceController;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->this$0:Lcom/android/settings/users/AutoSyncDataPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/users/AutoSyncDataPreferenceController;Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;-><init>(Lcom/android/settings/users/AutoSyncDataPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 360
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoSyncDataController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v0, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot handle received broadcast: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 363
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->this$0:Lcom/android/settings/users/AutoSyncDataPreferenceController;

    iget-object p2, p1, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-nez p2, :cond_2

    .line 364
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 366
    :cond_2
    iget-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->this$0:Lcom/android/settings/users/AutoSyncDataPreferenceController;

    invoke-static {p1}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->-$$Nest$fgetmSwitchPreference(Lcom/android/settings/users/AutoSyncDataPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 367
    iget-object p1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->this$0:Lcom/android/settings/users/AutoSyncDataPreferenceController;

    invoke-static {p1}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->-$$Nest$fgetmSwitchPreference(Lcom/android/settings/users/AutoSyncDataPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$AutoSyncBroadcastReceiver;->this$0:Lcom/android/settings/users/AutoSyncDataPreferenceController;

    iget-object p0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {p0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 2

    .line 375
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 376
    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    .line 382
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

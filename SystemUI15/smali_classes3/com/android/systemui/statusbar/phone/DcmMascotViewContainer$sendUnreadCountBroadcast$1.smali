.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "exception "

    const-string v1, "com.nttdocomo.android.screenlockservice"

    const-string/jumbo v2, "unread count: "

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "sendUnreadCountBroadcast"

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->blockingQueue:Ljava/util/concurrent/BlockingDeque;

    check-cast v4, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DCM_SCREEN_LOCK_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->serviceConnection:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->blockingQueue:Ljava/util/concurrent/BlockingDeque;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    check-cast v1, Ljava/util/concurrent/LinkedBlockingDeque;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;

    invoke-virtual {v1}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;->getUnreadCount()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE_LOCAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "spcnt"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move v3, v6

    goto :goto_1

    :catch_1
    move-exception v1

    move v3, v6

    goto :goto_2

    :catch_2
    move v3, v6

    goto :goto_3

    :cond_0
    :goto_0
    move v3, v6

    goto :goto_4

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const-string v2, "failed to bind service"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_2

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    goto :goto_4

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    goto :goto_4

    :catch_5
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "no package exists: com.nttdocomo.android.screenlockservice"

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    :goto_4
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->serviceConnection:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$serviceConnection$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    return-void
.end method

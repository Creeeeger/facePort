.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const-string v1, "onReceive "

    invoke-static {v1, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->DEBUG:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_1

    :sswitch_1
    const-string p2, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iget-object v0, p2, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;

    invoke-direct {v1, p2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;-><init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    :sswitch_2
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iput-boolean v2, p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isBootCompleted:Z

    iget-boolean p2, p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isWaitingForBootComplete:Z

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isWaitingForBootComplete:Z

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string p1, "RemoteViews"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mascotView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_1

    :sswitch_4
    const-string v0, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "eventType"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "eventType "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->log(Ljava/lang/String;)V

    if-ltz p2, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->MASCOT_ACTION:[Ljava/lang/String;

    array-length v1, v0

    if-ge p2, v1, :cond_5

    aget-object v0, v0, p2

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->activityStart:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.nttdocomo.android.mascot"

    const-string v3, "com.nttdocomo.android.mascot.application.MascotApplicationProxy"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {p0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x51c44600 -> :sswitch_4
        -0x133a78b0 -> :sswitch_3
        0x2f94f923 -> :sswitch_2
        0x351fef70 -> :sswitch_1
        0x4f50c6c0 -> :sswitch_0
    .end sparse-switch
.end method

.class public final Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$onReceive$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$onReceive$1;->$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$onReceive$1;->this$0:Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;

    iput-object p3, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$onReceive$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$onReceive$1;->$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecSTQuickControlRequestReceiver"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x5f7d24c8

    if-eq v3, v4, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v3, "com.android.systemui.qs.action.ST_QUICK_CONTROL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$onReceive$1;->this$0:Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;

    iget-object v3, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$onReceive$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$onReceive$1;->$intent:Landroid/content/Intent;

    sget v4, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "REMOTE_VIEWS"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    iput-object v4, v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->newRemoteView:Landroid/widget/RemoteViews;

    iget-object v4, v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->isShowingSupplier:Ljava/util/function/Supplier;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    :cond_1
    iget-object v4, v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->newRemoteView:Landroid/widget/RemoteViews;

    sget-object v5, Lcom/android/systemui/util/ViewUtil;->INSTANCE:Lcom/android/systemui/util/ViewUtil;

    invoke-virtual {v5, v0}, Lcom/android/systemui/util/ViewUtil;->toShortIdSting(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onReceiveForRemoteViews intent = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", newRemoteView = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", this = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isShowing = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->newRemoteView:Landroid/widget/RemoteViews;

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->showBarRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->hideBarRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    iget-object p0, v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->expandedSupplier:Ljava/util/function/Supplier;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_b

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->updateRemoteView(Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$onReceive$1;->this$0:Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;

    iget-object p0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver$onReceive$1;->$intent:Landroid/content/Intent;

    sget v3, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    move-object v3, v2

    :goto_3
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onReceiveForPackage action = "

    const-string v6, ", pkgName = "

    invoke-static {v5, v4, v6, v3, v1}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.samsung.android.oneconnect"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string p0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_5

    :sswitch_1
    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_5

    :sswitch_2
    const-string p0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_5

    :sswitch_3
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    const-string v1, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    iget-object p0, v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->hideBarRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    :sswitch_4
    const-string p0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_5

    :sswitch_5
    const-string p0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_4

    :sswitch_6
    const-string p0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    iget-object p0, v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->hideBarRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_a
    :goto_5
    iput-object v2, v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->newRemoteView:Landroid/widget/RemoteViews;

    iput-object v2, v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->currentRemoteView:Landroid/widget/RemoteViews;

    :cond_b
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3bb3e592 -> :sswitch_6
        -0x304ed112 -> :sswitch_5
        -0x2d2ad030 -> :sswitch_4
        0xa480416 -> :sswitch_3
        0xff13fb5 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x4cef8b35 -> :sswitch_0
    .end sparse-switch
.end method

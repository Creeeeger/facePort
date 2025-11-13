.class public Lcom/android/systemui/edgelighting/EdgeLightingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mHandler:Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;


# direct methods
.method public static -$$Nest$mregisterBroadcastReceiver(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "semeventdelegator"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class p2, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 p2, 0x0

    const/high16 v1, 0xa000000

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->registerIntentFilter(Landroid/content/IntentFilter;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    return-void
.end method

.method public static getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EdgeLightingReceiver"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.app.edgelighting.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "pkg_name"

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_0
    const-string v1, "com.samsung.android.app.edgelighting.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.android.app.edgelighting.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo p2, "sec.app.policy.UPDATE.EdgeLighting"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_0
    return-void
.end method

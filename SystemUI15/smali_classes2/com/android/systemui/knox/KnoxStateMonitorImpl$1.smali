.class public final Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.ucs.ucsservice.stateblocked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mUcmMonitor:Lcom/android/systemui/knox/UcmMonitor;

    iget-object p1, p1, Lcom/android/systemui/knox/UcmMonitor;->mUCMVendor:Ljava/lang/String;

    const-string v0, "UCS_CSNAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "KnoxStateMonitorImpl"

    const-string p2, "com.samsung.ucs.ucsservice.stateblocked intent!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$1;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 p1, 0x138d

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

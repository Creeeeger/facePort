.class public Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;->mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_EDGELIGHTING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ACTION"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;->mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "EdgeLightingBRReceiver"

    const-string p2, "Cancel request"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;->mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mHandler:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRReceiver;->mKiesThread:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

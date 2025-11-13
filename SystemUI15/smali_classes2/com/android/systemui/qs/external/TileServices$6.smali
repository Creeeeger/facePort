.class public final Lcom/android/systemui/qs/external/TileServices$6;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/external/TileServices;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServices;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$6;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mBootCompleteReceiver : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TileServices"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/external/TileServices$6;->this$0:Lcom/android/systemui/qs/external/TileServices;

    iget-object p1, p1, Lcom/android/systemui/qs/external/TileServices;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/qs/external/TileServices$6$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/external/TileServices$6$1;-><init>(Lcom/android/systemui/qs/external/TileServices$6;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

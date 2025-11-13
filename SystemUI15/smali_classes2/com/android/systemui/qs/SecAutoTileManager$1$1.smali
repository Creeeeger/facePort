.class public final Lcom/android/systemui/qs/SecAutoTileManager$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qs/SecAutoTileManager$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecAutoTileManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$1$1;->this$1:Lcom/android/systemui/qs/SecAutoTileManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$1$1;->this$1:Lcom/android/systemui/qs/SecAutoTileManager$1;

    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager$1;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    iget-object v1, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$1$1;->this$1:Lcom/android/systemui/qs/SecAutoTileManager$1;

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$1;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager;->mPreInstallerFinishedReceiver:Landroid/content/BroadcastReceiver;

    const-string p0, "AutoTileManager"

    const-string/jumbo v0, "unregister PreInstallerFinished"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

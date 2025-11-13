.class public final Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$isDemoMode$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/demomode/DemoMode;


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$isDemoMode$1$callback$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$isDemoMode$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onDemoModeFinished()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$isDemoMode$1$callback$1;->this$0:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher;->demoImpl:Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;

    iget-object v0, v0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/DemoWifiRepository;->demoCommandJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/WifiRepositorySwitcher$isDemoMode$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

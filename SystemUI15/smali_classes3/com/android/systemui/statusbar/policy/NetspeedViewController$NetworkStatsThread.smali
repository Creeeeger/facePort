.class public final Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;
.super Ljava/lang/Thread;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const-string v2, "NetspeedViewController"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "Couldn\'t get connectivity manager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Network is not connected,NetworkInfo.mDetailedState = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "There is not active network"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStats:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkStatsThread-mNetworkStats = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStats:Z

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mNetworkStatsHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->mUpdateRunnable:Lcom/android/systemui/statusbar/policy/NetspeedViewController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

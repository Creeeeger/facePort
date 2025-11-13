.class public final Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;
.super Ljava/util/Observable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static volatile sInstance:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;


# instance fields
.field public final mHandler:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    new-instance p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->mHandler:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;

    return-void
.end method

.method public static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->sInstance:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->sInstance:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    if-nez v1, :cond_0

    const-string v1, "NetworkSpeedManager"

    const-string v2, "getInstance == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->sInstance:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->sInstance:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    return-object p0
.end method


# virtual methods
.method public final addObserver(Ljava/util/Observer;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/Observable;->countObservers()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->mHandler:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-super {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public final deleteObserver(Ljava/util/Observer;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    invoke-virtual {p0}, Ljava/util/Observable;->countObservers()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->mHandler:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

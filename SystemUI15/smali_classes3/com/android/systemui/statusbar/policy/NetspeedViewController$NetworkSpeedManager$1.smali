.class public final Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBeforeSpd:J

.field public mBeforeVPNConnected:Z

.field public mSpd:J

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeVPNConnected:Z

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x2

    if-eq p1, v0, :cond_7

    if-eq p1, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mSpd:J

    sget-boolean p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sVpnConnected:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sActiveInterface:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    sget-object p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sActiveInterface:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v6, v4

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mSpd:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mSpd:J

    :cond_1
    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mSpd:J

    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeSpd:J

    sub-long v6, v4, v6

    long-to-float p1, v6

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeSpd:J

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeVPNConnected:Z

    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sVpnConnected:Z

    if-eq v0, v4, :cond_2

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeVPNConnected:Z

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_2
    float-to-double v4, p1

    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_3

    const-string p1, "0\nK/s"

    goto :goto_0

    :cond_3
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%.2f\nK/s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-wide v6, 0x408f400000000000L    # 1000.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%.1f\nK/s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-wide/high16 v6, 0x40f9000000000000L    # 102400.0

    cmpg-double p1, v4, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    if-gez p1, :cond_6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%.2f\nM/s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%.1f\nM/s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;

    invoke-virtual {v0}, Ljava/util/Observable;->countObservers()I

    move-result v4

    if-lez v4, :cond_9

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;->access$100(Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager;)V

    invoke-virtual {v0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_7
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeSpd:J

    sget-boolean p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sVpnConnected:Z

    if-eqz p1, :cond_8

    sget-object p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sActiveInterface:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v4

    sget-object p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sActiveInterface:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v6, v4

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeSpd:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeSpd:J

    :cond_8
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/NetspeedViewController;->sVpnConnected:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedViewController$NetworkSpeedManager$1;->mBeforeVPNConnected:Z

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    :goto_1
    return-void
.end method

.class public final synthetic Lcom/android/wifitrackerlib/ScanResultUpdater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wifitrackerlib/ScanResultUpdater;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wifitrackerlib/ScanResultUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/ScanResultUpdater$$ExternalSyntheticLambda0;->f$0:Lcom/android/wifitrackerlib/ScanResultUpdater;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    iget-object p0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater$$ExternalSyntheticLambda0;->f$0:Lcom/android/wifitrackerlib/ScanResultUpdater;

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/ScanResult;

    iget-wide v2, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    iget-wide p0, p0, Lcom/android/wifitrackerlib/ScanResultUpdater;->mMaxScanAgeMillis:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

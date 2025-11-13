.class public final synthetic Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$$ExternalSyntheticLambda1;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats$$ExternalSyntheticLambda1;->f$0:J

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;

    iget-wide p0, p1, Lcom/samsung/android/settings/wifi/develop/history/model/UsabilityStats;->mTimeStampMillis:J

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.class public final synthetic Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(JLjava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda1;->f$0:J

    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda1;->f$1:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-wide v0, p0, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda1;->f$0:J

    iget-object p0, p0, Lcom/android/settingslib/wifi/AccessPoint$$ExternalSyntheticLambda1;->f$1:Ljava/util/Iterator;

    check-cast p1, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    iget-wide v2, p1, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->mUpdatedTimestampMillis:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-void
.end method

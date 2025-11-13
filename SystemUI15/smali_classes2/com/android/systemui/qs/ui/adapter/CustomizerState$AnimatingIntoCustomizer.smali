.class public final Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingIntoCustomizer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/ui/adapter/CustomizerState$Animating;


# instance fields
.field public final animationDuration:J

.field public final isCustomizing:Z


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingIntoCustomizer;->animationDuration:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingIntoCustomizer;->isCustomizing:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingIntoCustomizer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingIntoCustomizer;

    iget-wide v3, p0, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingIntoCustomizer;->animationDuration:J

    iget-wide p0, p1, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingIntoCustomizer;->animationDuration:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getAnimationDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingIntoCustomizer;->animationDuration:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingIntoCustomizer;->animationDuration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final isCustomizing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingIntoCustomizer;->isCustomizing:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimatingIntoCustomizer(animationDuration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingIntoCustomizer;->animationDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

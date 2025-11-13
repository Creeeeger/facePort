.class public final Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/common/shared/model/PackageChangeModel;


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final packageUid:I

.field public final timeMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->packageUid:I

    iput-wide p3, p0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->timeMillis:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;

    iget-object v1, p1, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->packageName:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->packageUid:I

    iget v3, p1, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->packageUid:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->timeMillis:J

    iget-wide p0, p1, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->timeMillis:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageUid()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->packageUid:I

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->packageUid:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-wide v1, p0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->timeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Installed(packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->packageUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/common/shared/model/PackageChangeModel$Installed;->timeMillis:J

    const-string p0, ")"

    invoke-static {v1, v2, p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

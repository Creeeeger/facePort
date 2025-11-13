.class public final Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isAirplaneMode:Z

.field public final noServiceType:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;->isAirplaneMode:Z

    iput p2, p0, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;->noServiceType:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;->isAirplaneMode:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;->isAirplaneMode:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;->noServiceType:I

    iget p1, p1, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;->noServiceType:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;->isAirplaneMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;->noServiceType:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoverScreenNetworkSignalModel(isAirplaneMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;->isAirplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", noServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenNetworkSignalModel;->noServiceType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

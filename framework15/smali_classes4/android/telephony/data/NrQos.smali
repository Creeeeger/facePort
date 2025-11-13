.class public final Landroid/telephony/data/NrQos;
.super Landroid/telephony/data/Qos;
.source "NrQos.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/NrQos;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist averagingWindowMs:I

.field blacklist fiveQi:I

.field blacklist qosFlowId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/data/NrQos$1;

    invoke-direct {v0}, Landroid/telephony/data/NrQos$1;-><init>()V

    sput-object v0, Landroid/telephony/data/NrQos;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/data/Qos;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NrQos;->qosFlowId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NrQos;->fiveQi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NrQos;->averagingWindowMs:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/NrQos-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/NrQos;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;III)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/telephony/data/Qos;-><init>(ILandroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;)V

    iput p3, p0, Landroid/telephony/data/NrQos;->qosFlowId:I

    iput p4, p0, Landroid/telephony/data/NrQos;->fiveQi:I

    iput p5, p0, Landroid/telephony/data/NrQos;->averagingWindowMs:I

    return-void
.end method

.method public static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/data/NrQos;
    .locals 1

    new-instance v0, Landroid/telephony/data/NrQos;

    invoke-direct {v0, p0}, Landroid/telephony/data/NrQos;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    instance-of v2, p1, Landroid/telephony/data/NrQos;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/NrQos;

    invoke-super {p0, v2}, Landroid/telephony/data/Qos;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    iget v3, p0, Landroid/telephony/data/NrQos;->qosFlowId:I

    iget v4, v2, Landroid/telephony/data/NrQos;->qosFlowId:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/data/NrQos;->fiveQi:I

    iget v4, v2, Landroid/telephony/data/NrQos;->fiveQi:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/data/NrQos;->averagingWindowMs:I

    iget v4, v2, Landroid/telephony/data/NrQos;->averagingWindowMs:I

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public blacklist get5Qi()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/NrQos;->fiveQi:I

    return v0
.end method

.method public blacklist getAveragingWindow()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/NrQos;->averagingWindowMs:I

    return v0
.end method

.method public blacklist getQfi()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/NrQos;->qosFlowId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    invoke-super {p0}, Landroid/telephony/data/Qos;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NrQos;->qosFlowId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/NrQos;->fiveQi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/data/NrQos;->averagingWindowMs:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NrQos { fiveQi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NrQos;->fiveQi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " downlink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/NrQos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uplink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/NrQos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " qosFlowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NrQos;->qosFlowId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " averagingWindowMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/NrQos;->averagingWindowMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-super {p0, v0, p1, p2}, Landroid/telephony/data/Qos;->writeToParcel(ILandroid/os/Parcel;I)V

    iget v0, p0, Landroid/telephony/data/NrQos;->qosFlowId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/NrQos;->fiveQi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/NrQos;->averagingWindowMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

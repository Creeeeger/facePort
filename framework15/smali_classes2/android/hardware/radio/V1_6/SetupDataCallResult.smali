.class public final Landroid/hardware/radio/V1_6/SetupDataCallResult;
.super Ljava/lang/Object;
.source "SetupDataCallResult.java"


# instance fields
.field public blacklist active:I

.field public blacklist addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist cause:I

.field public blacklist cid:I

.field public blacklist defaultQos:Landroid/hardware/radio/V1_6/Qos;

.field public blacklist dnses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist gateways:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist handoverFailureMode:B

.field public blacklist ifname:Ljava/lang/String;

.field public blacklist mtuV4:I

.field public blacklist mtuV6:I

.field public blacklist pcscf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist pduSessionId:I

.field public blacklist qosSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/QosSession;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

.field public blacklist suggestedRetryTime:J

.field public blacklist trafficDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    iput v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    iput v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    iput v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    iput v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    iput v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    new-instance v1, Landroid/hardware/radio/V1_6/Qos;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/Qos;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    iput v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    new-instance v0, Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/SetupDataCallResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xd8

    int-to-long v5, v3

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    new-instance v5, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/SetupDataCallResult;-><init>()V

    mul-int/lit16 v6, v4, 0xd8

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xd8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    mul-int/lit16 v5, v3, 0xd8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    iget v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    iget v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget-wide v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    iget-wide v5, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v1

    :cond_4
    iget v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    iget v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    iget v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    iget v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    if-eq v3, v4, :cond_6

    return v1

    :cond_6
    iget v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    iget v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    if-eq v3, v4, :cond_7

    return v1

    :cond_7
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v1

    :cond_8
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v1

    :cond_9
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v1

    :cond_a
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v1

    :cond_b
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v1

    :cond_c
    iget v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    iget v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    if-eq v3, v4, :cond_d

    return v1

    :cond_d
    iget v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    iget v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    if-eq v3, v4, :cond_e

    return v1

    :cond_e
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    return v1

    :cond_f
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    return v1

    :cond_10
    iget-byte v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    if-eq v3, v4, :cond_11

    return v1

    :cond_11
    iget v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    iget v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    if-eq v3, v4, :cond_12

    return v1

    :cond_12
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return v1

    :cond_13
    iget-object v3, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    return v1

    :cond_14
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-byte v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v2 .. v19}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-wide/16 v11, 0x0

    add-long v1, p3, v11

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    const-wide/16 v13, 0x8

    add-long v1, p3, v13

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    const-wide/16 v1, 0x10

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    const-wide/16 v1, 0x14

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    const-wide/16 v1, 0x18

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    const-wide/16 v1, 0x20

    add-long v3, p3, v1

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    iget-object v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    const/4 v15, 0x0

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v15

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v1, 0x30

    add-long v3, p3, v1

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    mul-int/lit8 v3, v15, 0x28

    int-to-long v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    const/16 v16, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v15, :cond_0

    new-instance v3, Landroid/hardware/radio/V1_5/LinkAddress;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/LinkAddress;-><init>()V

    mul-int/lit8 v4, v2, 0x28

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/radio/V1_5/LinkAddress;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v4, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x40

    add-long v3, p3, v1

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    mul-int/lit8 v3, v15, 0x10

    int-to-long v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    const/16 v16, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v8

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v6, v1

    :goto_1
    if-ge v6, v15, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    mul-int/lit8 v2, v6, 0x10

    int-to-long v2, v2

    invoke-virtual {v8, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v7

    nop

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    mul-int/lit8 v1, v6, 0x10

    add-int/lit8 v1, v1, 0x0

    int-to-long v11, v1

    const/16 v17, 0x0

    move-object/from16 v1, p1

    move/from16 v18, v6

    move-object v13, v7

    move-wide v6, v11

    move-object v11, v8

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v18, 0x1

    move-object v8, v11

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x8

    goto :goto_1

    :cond_1
    move/from16 v18, v6

    move-object v11, v8

    const-wide/16 v1, 0x50

    add-long v3, p3, v1

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v3, v11, 0x10

    int-to-long v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    const-wide/16 v7, 0x0

    add-long v12, v1, v7

    const/4 v8, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v12

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v12

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v13, v1

    :goto_2
    if-ge v13, v11, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    mul-int/lit8 v2, v13, 0x10

    int-to-long v2, v2

    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v14

    nop

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    mul-int/lit8 v1, v13, 0x10

    add-int/lit8 v1, v1, 0x0

    int-to-long v6, v1

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v1, 0x60

    add-long v3, p3, v1

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v3, v11, 0x10

    int-to-long v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    const-wide/16 v7, 0x0

    add-long v12, v1, v7

    const/4 v8, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v12

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v12

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v13, v1

    :goto_3
    if-ge v13, v11, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    mul-int/lit8 v2, v13, 0x10

    int-to-long v2, v2

    invoke-virtual {v12, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v14

    nop

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    mul-int/lit8 v1, v13, 0x10

    add-int/lit8 v1, v1, 0x0

    int-to-long v6, v1

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v1, 0x70

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    const-wide/16 v1, 0x74

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    const-wide/16 v2, 0x78

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/radio/V1_6/Qos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v1, 0x98

    add-long v3, p3, v1

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v3, v11, 0x30

    int-to-long v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    const-wide/16 v7, 0x0

    add-long v12, v1, v7

    const/4 v8, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v12

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v11, :cond_4

    new-instance v3, Landroid/hardware/radio/V1_6/QosSession;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/QosSession;-><init>()V

    mul-int/lit8 v4, v2, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/radio/V1_6/QosSession;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v4, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    const-wide/16 v1, 0xa8

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    const-wide/16 v1, 0xac

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    const-wide/16 v2, 0xb0

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v1, 0xc8

    add-long v3, p3, v1

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    mul-int/lit8 v3, v11, 0x30

    int-to-long v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    const-wide/16 v7, 0x0

    add-long/2addr v7, v1

    const/4 v12, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v12

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v11, :cond_5

    new-instance v3, Landroid/hardware/radio/V1_6/TrafficDescriptor;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/TrafficDescriptor;-><init>()V

    mul-int/lit8 v4, v2, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/radio/V1_6/TrafficDescriptor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v4, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0xd8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    invoke-static {v1}, Landroid/hardware/radio/V1_6/DataCallFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .suggestedRetryTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/DataConnActiveStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/PdpProtocolType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .ifname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .addresses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .dnses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .gateways = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .pcscf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .mtuV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .mtuV6 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .defaultQos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .qosSessions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .handoverFailureMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    invoke-static {v1}, Landroid/hardware/radio/V1_6/HandoverFailureMode;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .pduSessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .sliceInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .trafficDescriptors = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    iget-wide v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v6, 0x10

    add-long v6, p2, v6

    iget v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x14

    add-long v6, p2, v6

    iget v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x18

    add-long v6, p2, v6

    iget v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x20

    add-long v6, p2, v6

    iget-object v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    iget-object v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x30

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x28

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v6, :cond_0

    iget-object v14, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_5/LinkAddress;

    mul-int/lit8 v15, v10, 0x28

    int-to-long v11, v15

    invoke-virtual {v14, v9, v11, v12}, Landroid/hardware/radio/V1_5/LinkAddress;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v11, 0xc

    goto :goto_0

    :cond_0
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x40

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x10

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v6, :cond_1

    mul-int/lit8 v11, v10, 0x10

    int-to-long v11, v11

    iget-object v14, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v9, v11, v12, v14}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x50

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x10

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v6, :cond_2

    mul-int/lit8 v11, v10, 0x10

    int-to-long v11, v11

    iget-object v14, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v9, v11, v12, v14}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x60

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x10

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v6, :cond_3

    mul-int/lit8 v11, v10, 0x10

    int-to-long v11, v11

    iget-object v14, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v9, v11, v12, v14}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_3
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v6, 0x70

    add-long v6, p2, v6

    iget v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x74

    add-long v6, p2, v6

    iget v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    const-wide/16 v7, 0x78

    add-long v7, p2, v7

    invoke-virtual {v6, v1, v7, v8}, Landroid/hardware/radio/V1_6/Qos;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x98

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v9, p2, v7

    const-wide/16 v11, 0xc

    add-long/2addr v9, v11

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v6, 0x30

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v6, :cond_4

    iget-object v11, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_6/QosSession;

    mul-int/lit8 v12, v10, 0x30

    int-to-long v14, v12

    invoke-virtual {v11, v9, v14, v15}, Landroid/hardware/radio/V1_6/QosSession;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_4
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v6, 0xa8

    add-long v6, p2, v6

    iget-byte v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v6, 0xac

    add-long v6, p2, v6

    iget v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    const-wide/16 v7, 0xb0

    add-long v7, p2, v7

    invoke-virtual {v6, v1, v7, v8}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0xc8

    add-long v9, p2, v7

    add-long/2addr v9, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v4, p2, v7

    const-wide/16 v9, 0xc

    add-long/2addr v4, v9

    invoke-virtual {v1, v4, v5, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v6, 0x30

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v6, :cond_5

    iget-object v9, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/radio/V1_6/TrafficDescriptor;

    mul-int/lit8 v10, v5, 0x30

    int-to-long v10, v10

    invoke-virtual {v9, v4, v10, v11}, Landroid/hardware/radio/V1_6/TrafficDescriptor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    add-long v7, p2, v7

    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xd8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

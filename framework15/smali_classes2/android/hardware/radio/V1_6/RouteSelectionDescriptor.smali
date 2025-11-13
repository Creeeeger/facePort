.class public final Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;
.super Ljava/lang/Object;
.source "RouteSelectionDescriptor.java"


# instance fields
.field public blacklist dnn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist precedence:B

.field public blacklist sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

.field public blacklist sliceInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/SliceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    new-instance v0, Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    new-instance v0, Landroid/hardware/radio/V1_6/OptionalSscMode;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalSscMode;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;",
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

    mul-int/lit8 v3, v2, 0x30

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

    new-instance v5, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;

    invoke-direct {v5}, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;-><init>()V

    mul-int/lit8 v6, v4, 0x30

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;",
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

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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
    .locals 5

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

    const-class v3, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;

    iget-byte v3, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    iget-object v3, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    iget-object v3, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .locals 5

    iget-byte v0, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    invoke-static {v4}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-wide/16 v11, 0x0

    add-long v1, p3, v11

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    iget-object v1, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    const-wide/16 v2, 0x4

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v1, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    const-wide/16 v2, 0xc

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/hardware/radio/V1_6/OptionalSscMode;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v1, 0x10

    add-long v3, p3, v1

    const-wide/16 v13, 0x8

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    mul-int/lit8 v3, v15, 0x14

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

    iget-object v2, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v15, :cond_0

    new-instance v3, Landroid/hardware/radio/V1_6/SliceInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/SliceInfo;-><init>()V

    mul-int/lit8 v4, v2, 0x14

    int-to-long v4, v4

    invoke-virtual {v3, v9, v1, v4, v5}, Landroid/hardware/radio/V1_6/SliceInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v4, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x20

    add-long v3, p3, v1

    add-long/2addr v3, v13

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    mul-int/lit8 v3, v13, 0x10

    int-to-long v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    const/4 v11, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v11

    iget-object v1, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v12, v1

    :goto_1
    if-ge v12, v13, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    mul-int/lit8 v2, v12, 0x10

    int-to-long v2, v2

    invoke-virtual {v11, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v14

    nop

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    invoke-virtual {v11}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    mul-int/lit8 v1, v12, 0x10

    add-int/lit8 v1, v1, 0x0

    int-to-long v6, v1

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    iget-object v1, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".precedence = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .sessionType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .sscMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .sliceInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .dnn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

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

    iget-byte v6, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->precedence:B

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    iget-object v4, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sessionType:Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;

    const-wide/16 v5, 0x4

    add-long v5, p2, v5

    invoke-virtual {v4, v1, v5, v6}, Landroid/hardware/radio/V1_6/OptionalPdpProtocolType;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v4, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sscMode:Landroid/hardware/radio/V1_6/OptionalSscMode;

    const-wide/16 v5, 0xc

    add-long v7, p2, v5

    invoke-virtual {v4, v1, v7, v8}, Landroid/hardware/radio/V1_6/OptionalSscMode;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    iget-object v4, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v7, 0x10

    add-long v9, p2, v7

    const-wide/16 v11, 0x8

    add-long/2addr v9, v11

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v9, p2, v7

    add-long/2addr v9, v5

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v9, Landroid/os/HwBlob;

    mul-int/lit8 v10, v4, 0x14

    invoke-direct {v9, v10}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v4, :cond_0

    iget-object v14, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_6/SliceInfo;

    mul-int/lit8 v15, v10, 0x14

    int-to-long v5, v15

    invoke-virtual {v14, v9, v5, v6}, Landroid/hardware/radio/V1_6/SliceInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v5, 0xc

    goto :goto_0

    :cond_0
    add-long v5, p2, v7

    add-long/2addr v5, v2

    invoke-virtual {v1, v5, v6, v9}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    iget-object v4, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x20

    add-long v7, p2, v5

    add-long/2addr v7, v11

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v7, p2, v5

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v4, 0x10

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_1

    mul-int/lit8 v9, v8, 0x10

    int-to-long v9, v9

    iget-object v11, v0, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->dnn:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-long v5, p2, v5

    add-long/2addr v5, v2

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/RouteSelectionDescriptor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

.class public final Landroid/hardware/location/NanoAppMessage;
.super Ljava/lang/Object;
.source "NanoAppMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG_LOG_NUM_BYTES:I = 0x10


# instance fields
.field private greylist-max-o mIsBroadcasted:Z

.field private blacklist mIsReliable:Z

.field private greylist-max-o mMessageBody:[B

.field private blacklist mMessageSequenceNumber:I

.field private greylist-max-o mMessageType:I

.field private greylist-max-o mNanoAppId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/location/NanoAppMessage$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoAppMessage$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JI[BZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    iput p3, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    iput-object p4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    iput-boolean p5, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    iput-boolean p6, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    iput p7, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v3, v0, [B

    iput-object v3, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    iget-object v3, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppMessage-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoAppMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createMessageFromNanoApp(JI[BZ)Landroid/hardware/location/NanoAppMessage;
    .locals 9

    new-instance v8, Landroid/hardware/location/NanoAppMessage;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-wide v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/NanoAppMessage;-><init>(JI[BZZI)V

    return-object v8
.end method

.method public static whitelist createMessageFromNanoApp(JI[BZZI)Landroid/hardware/location/NanoAppMessage;
    .locals 9

    new-instance v8, Landroid/hardware/location/NanoAppMessage;

    move-object v0, v8

    move-wide v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/NanoAppMessage;-><init>(JI[BZZI)V

    return-object v8
.end method

.method public static whitelist createMessageToNanoApp(JI[B)Landroid/hardware/location/NanoAppMessage;
    .locals 9

    new-instance v8, Landroid/hardware/location/NanoAppMessage;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-wide v1, p0

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/hardware/location/NanoAppMessage;-><init>(JI[BZZI)V

    return-object v8
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    instance-of v2, p1, Landroid/hardware/location/NanoAppMessage;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Landroid/hardware/location/NanoAppMessage;

    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->isBroadcastMessage()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->isReliable()Z

    move-result v3

    iget-boolean v4, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    if-ne v3, v4, :cond_3

    :cond_1
    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessage()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/hardware/location/NanoAppMessage;->getMessageSequenceNumber()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    if-ne v3, v4, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_4
    return v1
.end method

.method public whitelist getMessageBody()[B
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    return-object v0
.end method

.method public whitelist getMessageSequenceNumber()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    return v0
.end method

.method public whitelist getMessageType()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    return v0
.end method

.method public whitelist getNanoAppId()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    return-wide v0
.end method

.method public whitelist isBroadcastMessage()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    return v0
.end method

.method public whitelist isReliable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    return v0
.end method

.method public blacklist setIsReliable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    return-void
.end method

.method public blacklist setMessageSequenceNumber(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NanoAppMessage[type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    if-eqz v2, :cond_0

    const-string v2, "broadcast"

    goto :goto_0

    :cond_0
    const-string v2, "unicast"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nanoapp = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isReliable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    if-eqz v2, :cond_1

    const-string v2, "true"

    goto :goto_1

    :cond_1
    const-string v2, "false"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", messageSequenceNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-lez v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v2, v4, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    aget-byte v4, v4, v2

    const/4 v5, 0x1

    invoke-static {v4, v5}, Llibcore/util/HexEncoding;->encodeToString(BZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-le v0, v3, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/NanoAppMessage;->mNanoAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsBroadcasted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageBody:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-boolean v0, p0, Landroid/hardware/location/NanoAppMessage;->mIsReliable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/NanoAppMessage;->mMessageSequenceNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

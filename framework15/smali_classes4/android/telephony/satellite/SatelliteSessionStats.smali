.class public Landroid/telephony/satellite/SatelliteSessionStats;
.super Ljava/lang/Object;
.source "SatelliteSessionStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SatelliteSessionStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCountOfSuccessfulUserMessages:I

.field private blacklist mCountOfTimedOutUserMessagesWaitingForAck:I

.field private blacklist mCountOfTimedOutUserMessagesWaitingForConnection:I

.field private blacklist mCountOfUnsuccessfulUserMessages:I

.field private blacklist mCountOfUserMessagesInQueueToBeSent:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteSessionStats$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SatelliteSessionStats$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SatelliteSessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSessionStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SatelliteSessionStats-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SatelliteSessionStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfSuccessfulUserMessages(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfUnsuccessfulUserMessages(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfTimedOutUserMessagesWaitingForConnection(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfTimedOutUserMessagesWaitingForAck(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    invoke-static {p1}, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->-$$Nest$fgetmCountOfUserMessagesInQueueToBeSent(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    return-void
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

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/satellite/SatelliteSessionStats;

    iget v3, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    iget v4, v2, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    iget v4, v2, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    iget v4, v2, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    iget v4, v2, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    iget v4, v2, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getCountOfSuccessfulUserMessages()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    return v0
.end method

.method public blacklist getCountOfTimedOutUserMessagesWaitingForAck()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    return v0
.end method

.method public blacklist getCountOfTimedOutUserMessagesWaitingForConnection()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    return v0
.end method

.method public blacklist getCountOfUnsuccessfulUserMessages()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    return v0
.end method

.method public blacklist getCountOfUserMessagesInQueueToBeSent()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "countOfSuccessfulUserMessages:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "countOfUnsuccessfulUserMessages:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "countOfTimedOutUserMessagesWaitingForConnection:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "countOfTimedOutUserMessagesWaitingForAck:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "countOfUserMessagesInQueueToBeSent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfSuccessfulUserMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUnsuccessfulUserMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfTimedOutUserMessagesWaitingForAck:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/satellite/SatelliteSessionStats;->mCountOfUserMessagesInQueueToBeSent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

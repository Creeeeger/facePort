.class public final Landroid/telephony/satellite/SatelliteSessionStats$Builder;
.super Ljava/lang/Object;
.source "SatelliteSessionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/SatelliteSessionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCountOfSuccessfulUserMessages:I

.field private blacklist mCountOfTimedOutUserMessagesWaitingForAck:I

.field private blacklist mCountOfTimedOutUserMessagesWaitingForConnection:I

.field private blacklist mCountOfUnsuccessfulUserMessages:I

.field private blacklist mCountOfUserMessagesInQueueToBeSent:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCountOfSuccessfulUserMessages(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfSuccessfulUserMessages:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfTimedOutUserMessagesWaitingForAck(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfTimedOutUserMessagesWaitingForAck:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfTimedOutUserMessagesWaitingForConnection(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfUnsuccessfulUserMessages(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfUnsuccessfulUserMessages:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfUserMessagesInQueueToBeSent(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfUserMessagesInQueueToBeSent:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/satellite/SatelliteSessionStats;
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteSessionStats;

    invoke-direct {v0, p0}, Landroid/telephony/satellite/SatelliteSessionStats;-><init>(Landroid/telephony/satellite/SatelliteSessionStats$Builder;)V

    return-object v0
.end method

.method public blacklist setCountOfSuccessfulUserMessages(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfSuccessfulUserMessages:I

    return-object p0
.end method

.method public blacklist setCountOfTimedOutUserMessagesWaitingForAck(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfTimedOutUserMessagesWaitingForAck:I

    return-object p0
.end method

.method public blacklist setCountOfTimedOutUserMessagesWaitingForConnection(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfTimedOutUserMessagesWaitingForConnection:I

    return-object p0
.end method

.method public blacklist setCountOfUnsuccessfulUserMessages(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfUnsuccessfulUserMessages:I

    return-object p0
.end method

.method public blacklist setCountOfUserMessagesInQueueToBeSent(I)Landroid/telephony/satellite/SatelliteSessionStats$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/satellite/SatelliteSessionStats$Builder;->mCountOfUserMessagesInQueueToBeSent:I

    return-object p0
.end method

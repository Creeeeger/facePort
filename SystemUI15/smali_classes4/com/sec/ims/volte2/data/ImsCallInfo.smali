.class public Lcom/sec/ims/volte2/data/ImsCallInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/volte2/data/ImsCallInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallId:I

.field private mCallType:I

.field private mCmcCallTime:Ljava/lang/String;

.field private mCmcDeviceId:Ljava/lang/String;

.field private mDirection:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mIsConferenceCall:Z

.field private mIsDowngradedAtEstablish:Z

.field private mIsDowngradedVideoCall:Z

.field private mIsSamsungMdmnCall:Z

.field private mNumberPlus:Ljava/lang/String;

.field private mPeerUri:Ljava/lang/String;

.field private mRatInfo:I

.field private mVideoBearerState:I

.field private mVideoNGbrBearerState:I

.field private mVoiceBearerState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/ims/volte2/data/ImsCallInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/ImsCallInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZZIIIILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mNumberPlus:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcCallTime:Ljava/lang/String;

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mRatInfo:I

    iput p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    iput p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    iput-boolean p3, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    iput-boolean p4, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    iput p5, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    iput p6, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    iput p7, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    iput p8, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    iput-object p9, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    iput-object p10, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    iput p11, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    iput-boolean p12, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    const/4 v2, 0x3

    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    const-string v2, ""

    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    iput v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mNumberPlus:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcCallTime:Ljava/lang/String;

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mRatInfo:I

    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

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
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mRatInfo:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCallId()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    return p0
.end method

.method public getCallType()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    return p0
.end method

.method public getCmcCallTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcCallTime:Ljava/lang/String;

    return-object p0
.end method

.method public getCmcDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDedicatedBearerState(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    :goto_0
    return p0
.end method

.method public getDirection()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    return p0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getPeerUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    return-object p0
.end method

.method public getRatInfo()I
    .locals 0

    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mRatInfo:I

    return p0
.end method

.method public isConferenceCall()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    return p0
.end method

.method public isDowngradedAtEstablish()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    return p0
.end method

.method public isDowngradedVideoCall()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    return p0
.end method

.method public isMOCall()Z
    .locals 1

    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMTCall()Z
    .locals 2

    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isSamsungMdmnCall()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    return p0
.end method

.method public setCmcCallTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcCallTime:Ljava/lang/String;

    return-void
.end method

.method public setCmcDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setNumberPlus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mNumberPlus:Ljava/lang/String;

    return-void
.end method

.method public setRatInfo(I)V
    .locals 0

    iput p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mRatInfo:I

    return-void
.end method

.method public setSamsungMdmnCall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callId: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    const-string v2, "], callType: ["

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    const-string v2, "UNKNOWN"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    invoke-static {v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "CALL_TYPE_VIDEO"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "CALL_TYPE_VOICE"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "], Direction: ["

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    invoke-static {v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "PULLED_MT"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v1, "PULLED_MO"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v1, "MT"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v1, "MO"

    invoke-static {v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "], isDowngradedVideoCall : ["

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], isDowngradedAtEstablish : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], VoiceBearerState : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], VideoBearerState : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], VideoNGbrBearerState : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], isConferenceCall : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], mIsSamsungMdmnCall : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], mRatInfo : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mRatInfo:I

    const-string v1, "]"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mRatInfo:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

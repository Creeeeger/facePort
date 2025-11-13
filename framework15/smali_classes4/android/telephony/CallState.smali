.class public final Landroid/telephony/CallState;
.super Ljava/lang/Object;
.source "CallState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CallState$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CALL_CLASSIFICATION_BACKGROUND:I = 0x2

.field public static final blacklist CALL_CLASSIFICATION_FOREGROUND:I = 0x1

.field public static final blacklist CALL_CLASSIFICATION_MAX:I = 0x3

.field public static final blacklist CALL_CLASSIFICATION_RINGING:I = 0x0

.field public static final blacklist CALL_CLASSIFICATION_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CallState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallClassification:I

.field private final blacklist mCallQuality:Landroid/telephony/CallQuality;

.field private blacklist mImsCallId:Ljava/lang/String;

.field private blacklist mImsCallServiceType:I

.field private blacklist mImsCallType:I

.field private final blacklist mNetworkType:I

.field private final blacklist mPreciseCallState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CallState$1;

    invoke-direct {v0}, Landroid/telephony/CallState$1;-><init>()V

    sput-object v0, Landroid/telephony/CallState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILandroid/telephony/CallQuality;ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/CallState;->mPreciseCallState:I

    iput p2, p0, Landroid/telephony/CallState;->mNetworkType:I

    iput-object p3, p0, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    iput p4, p0, Landroid/telephony/CallState;->mCallClassification:I

    iput-object p5, p0, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    iput p6, p0, Landroid/telephony/CallState;->mImsCallServiceType:I

    iput p7, p0, Landroid/telephony/CallState;->mImsCallType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/telephony/CallQuality;ILjava/lang/String;IILandroid/telephony/CallState-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/telephony/CallState;-><init>(IILandroid/telephony/CallQuality;ILjava/lang/String;II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallState;->mPreciseCallState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallState;->mNetworkType:I

    const-class v0, Landroid/telephony/CallQuality;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CallQuality;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CallQuality;

    iput-object v0, p0, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallState;->mCallClassification:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallState;->mImsCallServiceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallState;->mImsCallType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CallState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CallState;-><init>(Landroid/os/Parcel;)V

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

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Landroid/telephony/CallState;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/telephony/CallState;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/CallState;

    iget v3, p0, Landroid/telephony/CallState;->mPreciseCallState:I

    iget v4, v2, Landroid/telephony/CallState;->mPreciseCallState:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CallState;->mNetworkType:I

    iget v4, v2, Landroid/telephony/CallState;->mNetworkType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    iget-object v4, v2, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/CallState;->mCallClassification:I

    iget v4, v2, Landroid/telephony/CallState;->mCallClassification:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/CallState;->mImsCallType:I

    iget v4, v2, Landroid/telephony/CallState;->mImsCallType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CallState;->mImsCallServiceType:I

    iget v4, v2, Landroid/telephony/CallState;->mImsCallServiceType:I

    if-ne v3, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public blacklist getCallClassification()I
    .locals 1

    iget v0, p0, Landroid/telephony/CallState;->mCallClassification:I

    return v0
.end method

.method public whitelist getCallQuality()Landroid/telephony/CallQuality;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    return-object v0
.end method

.method public whitelist getCallState()I
    .locals 1

    iget v0, p0, Landroid/telephony/CallState;->mPreciseCallState:I

    return v0
.end method

.method public whitelist getImsCallServiceType()I
    .locals 1

    iget v0, p0, Landroid/telephony/CallState;->mImsCallServiceType:I

    return v0
.end method

.method public whitelist getImsCallSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getImsCallType()I
    .locals 1

    iget v0, p0, Landroid/telephony/CallState;->mImsCallType:I

    return v0
.end method

.method public whitelist getNetworkType()I
    .locals 1

    iget v0, p0, Landroid/telephony/CallState;->mNetworkType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget v0, p0, Landroid/telephony/CallState;->mPreciseCallState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CallState;->mNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    iget v0, p0, Landroid/telephony/CallState;->mCallClassification:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    iget v0, p0, Landroid/telephony/CallState;->mImsCallServiceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/telephony/CallState;->mImsCallType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPreciseCallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallState;->mPreciseCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallState;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCallQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCallClassification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallState;->mCallClassification:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mImsCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mImsCallServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallState;->mImsCallServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mImsCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CallState;->mImsCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/CallState;->mPreciseCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallState;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/CallState;->mCallQuality:Landroid/telephony/CallQuality;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telephony/CallState;->mCallClassification:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/CallState;->mImsCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/CallState;->mImsCallServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CallState;->mImsCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.class public Landroid/telephony/IccOpenLogicalChannelResponse;
.super Ljava/lang/Object;
.source "IccOpenLogicalChannelResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/IccOpenLogicalChannelResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INVALID_CHANNEL:I = -0x1

.field public static final whitelist STATUS_MISSING_RESOURCE:I = 0x2

.field public static final whitelist STATUS_NO_ERROR:I = 0x1

.field public static final whitelist STATUS_NO_SUCH_ELEMENT:I = 0x3

.field public static final whitelist STATUS_UNKNOWN_ERROR:I = 0x4


# instance fields
.field private final greylist-max-o mChannel:I

.field private final greylist-max-o mSelectResponse:[B

.field private final greylist-max-o mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/IccOpenLogicalChannelResponse$1;

    invoke-direct {v0}, Landroid/telephony/IccOpenLogicalChannelResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    iput p2, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    iput-object p3, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    iget-object v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/IccOpenLogicalChannelResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getChannel()I
    .locals 1

    iget v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    return v0
.end method

.method public whitelist getSelectResponse()[B
    .locals 1

    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    return-object v0
.end method

.method public whitelist getStatus()I
    .locals 1

    iget v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.class public final Landroid/media/tv/TvInputHardwareInfo;
.super Ljava/lang/Object;
.source "TvInputHardwareInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputHardwareInfo$Builder;,
        Landroid/media/tv/TvInputHardwareInfo$CableConnectionStatus;
    }
.end annotation


# static fields
.field public static final whitelist CABLE_CONNECTION_STATUS_CONNECTED:I = 0x1

.field public static final whitelist CABLE_CONNECTION_STATUS_DISCONNECTED:I = 0x2

.field public static final whitelist CABLE_CONNECTION_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o TAG:Ljava/lang/String; = "TvInputHardwareInfo"

.field public static final whitelist TV_INPUT_TYPE_COMPONENT:I = 0x6

.field public static final whitelist TV_INPUT_TYPE_COMPOSITE:I = 0x3

.field public static final whitelist TV_INPUT_TYPE_DISPLAY_PORT:I = 0xa

.field public static final whitelist TV_INPUT_TYPE_DVI:I = 0x8

.field public static final whitelist TV_INPUT_TYPE_HDMI:I = 0x9

.field public static final whitelist TV_INPUT_TYPE_OTHER_HARDWARE:I = 0x1

.field public static final whitelist TV_INPUT_TYPE_SCART:I = 0x5

.field public static final whitelist TV_INPUT_TYPE_SVIDEO:I = 0x4

.field public static final whitelist TV_INPUT_TYPE_TUNER:I = 0x2

.field public static final whitelist TV_INPUT_TYPE_VGA:I = 0x7


# instance fields
.field private greylist-max-o mAudioAddress:Ljava/lang/String;

.field private greylist-max-o mAudioType:I

.field private greylist-max-o mCableConnectionStatus:I

.field private greylist-max-o mDeviceId:I

.field private greylist-max-o mHdmiPortId:I

.field private greylist-max-o mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioType(Landroid/media/tv/TvInputHardwareInfo;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAudioAddress(Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAudioType(Landroid/media/tv/TvInputHardwareInfo;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCableConnectionStatus(Landroid/media/tv/TvInputHardwareInfo;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeviceId(Landroid/media/tv/TvInputHardwareInfo;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHdmiPortId(Landroid/media/tv/TvInputHardwareInfo;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmType(Landroid/media/tv/TvInputHardwareInfo;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/TvInputHardwareInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvInputHardwareInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/TvInputHardwareInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/TvInputHardwareInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAudioAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAudioType()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return v0
.end method

.method public whitelist getCableConnectionStatus()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    return v0
.end method

.method public whitelist getDeviceId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    return v0
.end method

.method public whitelist getHdmiPortId()I
    .locals 2

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist getType()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    return-void
.end method

.method public blacklist toBuilder()Landroid/media/tv/TvInputHardwareInfo$Builder;
    .locals 3

    new-instance v0, Landroid/media/tv/TvInputHardwareInfo$Builder;

    invoke-direct {v0}, Landroid/media/tv/TvInputHardwareInfo$Builder;-><init>()V

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->deviceId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->type(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->audioType(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->audioAddress(Ljava/lang/String;)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->cableConnectionStatus(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->hdmiPortId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    :cond_0
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "TvInputHardwareInfo {id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audio_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audio_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const-string v1, ", hdmi_port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", cable_connection_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

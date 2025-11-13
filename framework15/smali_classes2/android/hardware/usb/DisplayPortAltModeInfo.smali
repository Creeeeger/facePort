.class public final Landroid/hardware/usb/DisplayPortAltModeInfo;
.super Ljava/lang/Object;
.source "DisplayPortAltModeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/DisplayPortAltModeInfo$LinkTrainingStatus;,
        Landroid/hardware/usb/DisplayPortAltModeInfo$DisplayPortAltModeStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/DisplayPortAltModeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISPLAYPORT_ALT_MODE_STATUS_CAPABLE_DISABLED:I = 0x2

.field public static final whitelist DISPLAYPORT_ALT_MODE_STATUS_ENABLED:I = 0x3

.field public static final whitelist DISPLAYPORT_ALT_MODE_STATUS_NOT_CAPABLE:I = 0x1

.field public static final whitelist DISPLAYPORT_ALT_MODE_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist LINK_TRAINING_STATUS_FAILURE:I = 0x2

.field public static final whitelist LINK_TRAINING_STATUS_SUCCESS:I = 0x1

.field public static final whitelist LINK_TRAINING_STATUS_UNKNOWN:I


# instance fields
.field private final blacklist mCableStatus:I

.field private final blacklist mHotPlugDetect:Z

.field private final blacklist mLinkTrainingStatus:I

.field private final blacklist mNumLanes:I

.field private final blacklist mPartnerSinkStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/usb/DisplayPortAltModeInfo$1;

    invoke-direct {v0}, Landroid/hardware/usb/DisplayPortAltModeInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/DisplayPortAltModeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    iput v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    iput v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    iput-boolean v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    iput v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    return-void
.end method

.method public constructor blacklist <init>(IIIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    iput p2, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    iput p3, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    iput-boolean p4, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    iput p5, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    return-void
.end method

.method private blacklist displayPortAltModeStatusToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "unknown"

    return-object v0

    :pswitch_0
    const-string v0, "enabled"

    return-object v0

    :pswitch_1
    const-string v0, "capable disabled"

    return-object v0

    :pswitch_2
    const-string v0, "not capable"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist linkTrainingStatusToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "unknown"

    return-object v0

    :pswitch_0
    const-string v0, "failure"

    return-object v0

    :pswitch_1
    const-string v0, "success"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    instance-of v1, p1, Landroid/hardware/usb/DisplayPortAltModeInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/hardware/usb/DisplayPortAltModeInfo;

    iget v3, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    iget v4, v1, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    iget v4, v1, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    iget v4, v1, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    iget-boolean v4, v1, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    iget v4, v1, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getCableStatus()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    return v0
.end method

.method public whitelist getLinkTrainingStatus()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    return v0
.end method

.method public whitelist getNumberOfLanes()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    return v0
.end method

.method public whitelist getPartnerSinkStatus()I
    .locals 1

    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget v4, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isHotPlugDetectActive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayPortAltModeInfo{partnerSink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    invoke-direct {p0, v1}, Landroid/hardware/usb/DisplayPortAltModeInfo;->displayPortAltModeStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    invoke-direct {p0, v1}, Landroid/hardware/usb/DisplayPortAltModeInfo;->displayPortAltModeStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numLanes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotPlugDetect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkTrainingStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    invoke-direct {p0, v1}, Landroid/hardware/usb/DisplayPortAltModeInfo;->linkTrainingStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mPartnerSinkStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mCableStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mNumLanes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mHotPlugDetect:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/hardware/usb/DisplayPortAltModeInfo;->mLinkTrainingStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

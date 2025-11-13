.class public Landroid/hardware/display/SemWifiDisplayParameter;
.super Ljava/lang/Object;
.source "SemWifiDisplayParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EMPTY_ARRAY:[Landroid/hardware/display/SemWifiDisplayParameter;

.field public static final whitelist GET_PARAMETER:Ljava/lang/String; = "getparams"

.field public static final whitelist INIT_PARAMETER:Ljava/lang/String; = "initparams"

.field public static final whitelist KEY_DMR_SUPPORT:Ljava/lang/String; = "wfd_sec_dmr_support"

.field public static final blacklist KEY_DMR_SUPPORT_TYPE:Ljava/lang/String; = "wfd_sec_dmr_support_type"

.field public static final blacklist KEY_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final whitelist KEY_HIGH_RESOLUTION_MODE:Ljava/lang/String; = "high_resolution_mode"

.field public static final blacklist KEY_LOW_LATENCY_MODE:Ljava/lang/String; = "wfd_sec_low_latency_mode"

.field public static final whitelist KEY_MIRRORING_MODE:Ljava/lang/String; = "wfd_sec_mirroring_mode"

.field public static final blacklist KEY_MIRRORING_UUID:Ljava/lang/String; = "wfd_sec_mirroring_uuid"

.field public static final whitelist KEY_POINTER_ICON_INDEX:Ljava/lang/String; = "wfd_sec_pointer_icon_idx"

.field public static final whitelist KEY_SCAMBLE_SUPPORT:Ljava/lang/String; = "scramble_support"

.field public static final whitelist KEY_SOURCE_DISPLAY_ORIENTATION:Ljava/lang/String; = "wfd_sec_source_display_orientation"

.field public static final whitelist KEY_TIZEN_VERSION:Ljava/lang/String; = "tizenVer"

.field public static final whitelist KEY_TV_BLE_MAC:Ljava/lang/String; = "wfd_sec_tv_ble_mac"

.field public static final whitelist KEY_VIEW_MODE:Ljava/lang/String; = "wfd_sec_view_mode"

.field public static final whitelist KEY_VOIP_MODE:Ljava/lang/String; = "wfd_sec_voip_mode"

.field public static final whitelist KEY_WIRELESS_DEX_SUPPORT:Ljava/lang/String; = "wfd_sec_wirelessdex_support"

.field public static final whitelist SET_PARAMETER:Ljava/lang/String; = "setparams"

.field private static final blacklist TAG:Ljava/lang/String; = "SemWifiDisplayParameter"

.field public static final whitelist VALUE_DISABLE:Ljava/lang/String; = "disable"

.field public static final blacklist VALUE_DMR_SUPPORT_TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final blacklist VALUE_DMR_SUPPORT_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final blacklist VALUE_DMR_SUPPORT_TYPE_VIDEO_HEVC_SUPER_SLOW_MOTION:Ljava/lang/String; = "video_hevc_super_slow_motion"

.field public static final whitelist VALUE_ENABLE:Ljava/lang/String; = "enable"

.field public static final whitelist VALUE_MIRRORING_MODE_DEX:Ljava/lang/String; = "dex"

.field public static final whitelist VALUE_MIRRORING_MODE_MIRRORING:Ljava/lang/String; = "mirroring"

.field public static final whitelist VALUE_NO:Ljava/lang/String; = "no"

.field public static final whitelist VALUE_NONE:Ljava/lang/String; = "none"

.field public static final whitelist VALUE_OFF:Ljava/lang/String; = "off"

.field public static final whitelist VALUE_ON:Ljava/lang/String; = "on"

.field public static final whitelist VALUE_SOURCE_DISPLAY_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final whitelist VALUE_SOURCE_DISPLAY_ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final whitelist VALUE_SOURCE_DISPLAY_ORIENTATION_PRESENTATION_OFF:Ljava/lang/String; = "presentation=off"

.field public static final whitelist VALUE_SOURCE_DISPLAY_ORIENTATION_PRESENTATION_ON:Ljava/lang/String; = "presentation=on"

.field public static final whitelist VALUE_SUPPORT:Ljava/lang/String; = "support"

.field public static final whitelist VALUE_VIEW_MODE_FULL:Ljava/lang/String; = "full"

.field public static final whitelist VALUE_VIEW_MODE_MULTI:Ljava/lang/String; = "multi"

.field public static final whitelist VALUE_YES:Ljava/lang/String; = "yes"


# instance fields
.field private blacklist mKey:Ljava/lang/String;

.field private blacklist mValue:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 270
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/display/SemWifiDisplayParameter;

    sput-object v0, Landroid/hardware/display/SemWifiDisplayParameter;->EMPTY_ARRAY:[Landroid/hardware/display/SemWifiDisplayParameter;

    .line 275
    new-instance v0, Landroid/hardware/display/SemWifiDisplayParameter$1;

    invoke-direct {v0}, Landroid/hardware/display/SemWifiDisplayParameter$1;-><init>()V

    sput-object v0, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    .line 313
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    .line 297
    iput-object p2, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    .line 321
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    .line 322
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 402
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/hardware/display/SemWifiDisplayParameter;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    move-object v0, p1

    check-cast v0, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 406
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getValue()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 382
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public whitelist setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 394
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 337
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    return-void
.end method

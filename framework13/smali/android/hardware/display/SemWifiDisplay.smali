.class public final Landroid/hardware/display/SemWifiDisplay;
.super Ljava/lang/Object;
.source "SemWifiDisplay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/SemWifiDisplay;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EMPTY_ARRAY:[Landroid/hardware/display/SemWifiDisplay;

.field public static final whitelist FEATURE_HIGH_RESOLUTION_MODE:Ljava/lang/String; = "high_resolution_mode"

.field public static final whitelist SCREEN_SHARING_AP_CONNECTED:I = 0x3

.field public static final whitelist SCREEN_SHARING_AP_NOT_CONNECTED:I = 0x1

.field public static final whitelist SCREEN_SHARING_NOT_SUPPORTED:I = 0x0

.field public static final whitelist VIEW_MODE_FULL:Ljava/lang/String; = "full"

.field public static final whitelist VIEW_MODE_MULTI:Ljava/lang/String; = "multi"

.field public static final whitelist VIEW_MODE_NONE:Ljava/lang/String; = "none"


# instance fields
.field private blacklist mWfd:Landroid/hardware/display/WifiDisplay;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/display/SemWifiDisplay;

    sput-object v0, Landroid/hardware/display/SemWifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/SemWifiDisplay;

    .line 53
    new-instance v0, Landroid/hardware/display/SemWifiDisplay$1;

    invoke-direct {v0}, Landroid/hardware/display/SemWifiDisplay$1;-><init>()V

    sput-object v0, Landroid/hardware/display/SemWifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .param p1, "wfd"    # Landroid/hardware/display/WifiDisplay;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    .line 69
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "wfd"    # Landroid/os/Parcelable;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    instance-of v0, p1, Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_0

    .line 79
    move-object v0, p1

    check-cast v0, Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    goto :goto_0

    .line 80
    :cond_0
    instance-of v0, p1, Landroid/hardware/display/SemWifiDisplay;

    if-eqz v0, :cond_1

    .line 81
    move-object v0, p1

    check-cast v0, Landroid/hardware/display/SemWifiDisplay;

    iget-object v0, v0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parameter must be WifiDisplay type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist compareTo(Landroid/hardware/display/SemWifiDisplay;)I
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/SemWifiDisplay;

    .line 281
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist equals(Landroid/hardware/display/SemWifiDisplay;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/SemWifiDisplay;

    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 224
    instance-of v0, p1, Landroid/hardware/display/SemWifiDisplay;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/display/SemWifiDisplay;

    invoke-virtual {p0, v0}, Landroid/hardware/display/SemWifiDisplay;->equals(Landroid/hardware/display/SemWifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getBluetoothMacAddress()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getBluetoothMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceAddress()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceInfo()I
    .locals 1

    .line 325
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceInfo()I

    move-result v0

    return v0
.end method

.method public whitelist getDeviceName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFriendlyDisplayName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIconIndex()I
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getIconIdx()I

    move-result v0

    return v0
.end method

.method public whitelist getPrimaryDeviceType()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getViewMode()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getViewMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 241
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist isAvailable()Z
    .locals 1

    .line 172
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public whitelist isDmrSupported()Z
    .locals 1

    .line 191
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->isDmrSupported()Z

    move-result v0

    return v0
.end method

.method public whitelist isDmrSupportedType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 199
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->isDmrSupportedType(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isEmptySurface()Z
    .locals 1

    .line 181
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->isEmptySurface()Z

    move-result v0

    return v0
.end method

.method public blacklist isHighResolutionModeSupported()Z
    .locals 1

    .line 209
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->isHighResolutionModeSupported()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 253
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplay;->mWfd:Landroid/hardware/display/WifiDisplay;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 254
    return-void
.end method

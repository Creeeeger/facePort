.class public final Landroid/hardware/display/WifiDisplayStatus;
.super Ljava/lang/Object;
.source "WifiDisplayStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/WifiDisplayStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-r DISPLAY_STATE_CONNECTED:I = 0x2

.field public static final greylist-max-r DISPLAY_STATE_CONNECTING:I = 0x1

.field public static final blacklist DISPLAY_STATE_DISCONNECTING:I = 0x3

.field public static final greylist-max-r DISPLAY_STATE_NOT_CONNECTED:I = 0x0

.field public static final greylist-max-o FEATURE_STATE_DISABLED:I = 0x1

.field public static final greylist-max-o FEATURE_STATE_OFF:I = 0x2

.field public static final greylist-max-r FEATURE_STATE_ON:I = 0x3

.field public static final greylist-max-o FEATURE_STATE_UNAVAILABLE:I = 0x0

.field public static final greylist-max-r SCAN_STATE_NOT_SCANNING:I = 0x0

.field public static final greylist-max-o SCAN_STATE_SCANNING:I = 0x1


# instance fields
.field private final greylist-max-r mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field private final greylist-max-o mActiveDisplayState:I

.field private final greylist-max-r mDisplays:[Landroid/hardware/display/WifiDisplay;

.field private final greylist-max-o mFeatureState:I

.field private final greylist-max-o mScanState:I

.field private final greylist-max-o mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Landroid/hardware/display/WifiDisplayStatus$1;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplayStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/display/WifiDisplayStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 7

    .line 108
    sget-object v5, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 110
    return-void
.end method

.method public constructor greylist-max-o <init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplaySessionInfo;)V
    .locals 2
    .param p1, "featureState"    # I
    .param p2, "scanState"    # I
    .param p3, "activeDisplayState"    # I
    .param p4, "activeDisplay"    # Landroid/hardware/display/WifiDisplay;
    .param p5, "displays"    # [Landroid/hardware/display/WifiDisplay;
    .param p6, "sessionInfo"    # Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    if-eqz p5, :cond_1

    .line 118
    iput p1, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    .line 119
    iput p2, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    .line 120
    iput p3, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    .line 121
    iput-object p4, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    .line 122
    iput-object p5, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 124
    if-eqz p6, :cond_0

    move-object v0, p6

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 125
    return-void

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displays must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getActiveDisplay()Landroid/hardware/display/WifiDisplay;
    .locals 1

    .line 167
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public greylist getActiveDisplayState()I
    .locals 1

    .line 158
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    return v0
.end method

.method public blacklist getConnectedState()I
    .locals 1

    .line 189
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getMode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public greylist getDisplays()[Landroid/hardware/display/WifiDisplay;
    .locals 1

    .line 177
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public greylist getFeatureState()I
    .locals 1

    .line 137
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    return v0
.end method

.method public greylist getScanState()I
    .locals 1

    .line 147
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    return v0
.end method

.method public greylist-max-o getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiDisplayStatus{featureState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scanState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activeDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 227
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 195
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mFeatureState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mScanState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplayState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    :goto_0
    iget-object v0, p0, Landroid/hardware/display/WifiDisplayStatus;->mDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, [Landroid/hardware/display/WifiDisplay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/WifiDisplay;

    .line 207
    .local v0, "clone":[Landroid/hardware/display/WifiDisplay;
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 209
    .local v3, "display":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/WifiDisplay;->writeToParcel(Landroid/os/Parcel;I)V

    .line 208
    .end local v3    # "display":Landroid/hardware/display/WifiDisplay;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_1
    iget-object v1, p0, Landroid/hardware/display/WifiDisplayStatus;->mSessionInfo:Landroid/hardware/display/WifiDisplaySessionInfo;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/display/WifiDisplaySessionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 213
    return-void
.end method

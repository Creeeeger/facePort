.class public Landroid/hardware/display/SemWifiDisplayStatus;
.super Ljava/lang/Object;
.source "SemWifiDisplayStatus.java"


# static fields
.field public static final whitelist DISPLAY_STATE_CONNECTED:I = 0x2

.field public static final whitelist DISPLAY_STATE_CONNECTING:I = 0x1

.field public static final whitelist DISPLAY_STATE_DISCONNECTING:I = 0x3

.field public static final whitelist DISPLAY_STATE_NOT_CONNECTED:I = 0x0

.field public static final whitelist FEATURE_STATE_DISABLED:I = 0x1

.field public static final whitelist FEATURE_STATE_OFF:I = 0x2

.field public static final whitelist FEATURE_STATE_ON:I = 0x3

.field public static final whitelist FEATURE_STATE_UNAVAILABLE:I = 0x0

.field public static final blacklist SCREEN_SHARING_STATE_LANDSCAPE:I = 0x8

.field public static final whitelist SCREEN_SHARING_STATE_PAUSED:I = 0x7

.field public static final blacklist SCREEN_SHARING_STATE_PORTRAIT:I = 0x9

.field public static final whitelist SCREEN_SHARING_STATE_RESUMED:I = 0x6


# instance fields
.field private final blacklist mWds:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/display/WifiDisplayStatus;)V
    .locals 0
    .param p1, "wds"    # Landroid/hardware/display/WifiDisplayStatus;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    .line 115
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "wds"    # Landroid/os/Parcelable;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    instance-of v0, p1, Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_0

    .line 125
    move-object v0, p1

    check-cast v0, Landroid/hardware/display/WifiDisplayStatus;

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    .line 128
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parameter must be WifiDisplayStatus type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;
    .locals 2

    .line 230
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 231
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_0

    .line 232
    new-instance v1, Landroid/hardware/display/SemWifiDisplay;

    invoke-direct {v1, v0}, Landroid/hardware/display/SemWifiDisplay;-><init>(Landroid/hardware/display/WifiDisplay;)V

    return-object v1

    .line 233
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getActiveDisplayState()I
    .locals 1

    .line 218
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    return v0
.end method

.method public whitelist getConnectedState()I
    .locals 1

    .line 243
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v0

    return v0
.end method

.method public whitelist getDisplays()[Landroid/hardware/display/SemWifiDisplay;
    .locals 8

    .line 141
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 145
    .local v0, "displays":[Landroid/hardware/display/WifiDisplay;
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 146
    array-length v1, v0

    new-array v1, v1, [Landroid/hardware/display/SemWifiDisplay;

    .line 148
    .local v1, "sWfdArray":[Landroid/hardware/display/SemWifiDisplay;
    const/4 v3, 0x0

    .line 150
    .local v3, "idx":I
    array-length v4, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 151
    .local v5, "display":Landroid/hardware/display/WifiDisplay;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "idx":I
    .local v6, "idx":I
    new-instance v7, Landroid/hardware/display/SemWifiDisplay;

    invoke-direct {v7, v5}, Landroid/hardware/display/SemWifiDisplay;-><init>(Landroid/hardware/display/WifiDisplay;)V

    aput-object v7, v1, v3

    .line 150
    .end local v5    # "display":Landroid/hardware/display/WifiDisplay;
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    .line 153
    .end local v6    # "idx":I
    :cond_0
    goto :goto_1

    .line 154
    .end local v1    # "sWfdArray":[Landroid/hardware/display/SemWifiDisplay;
    :cond_1
    new-array v1, v2, [Landroid/hardware/display/SemWifiDisplay;

    .line 157
    .restart local v1    # "sWfdArray":[Landroid/hardware/display/SemWifiDisplay;
    :goto_1
    return-object v1
.end method

.method public whitelist getFeatureState()I
    .locals 1

    .line 207
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    return v0
.end method

.method public whitelist getGroupId()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSessionId()I
    .locals 1

    .line 176
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result v0

    return v0
.end method

.method public whitelist getSessionSummary()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isScanning()Z
    .locals 2

    .line 196
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayStatus;->mWds:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

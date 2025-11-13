.class public Landroid/hardware/display/IDisplayManager$Default;
.super Ljava/lang/Object;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist acquireLowRefreshRateToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist acquireRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "refreshRate"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "refreshRate"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist areUserDisabledHdrTypesAllowed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 364
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist connectWifiDisplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist connectWifiDisplayWithConfig(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V
    .locals 0
    .param p1, "wifidisplayConfig"    # Landroid/hardware/display/SemWifiDisplayConfig;
    .param p2, "callback"    # Landroid/hardware/display/IWifiDisplayConnectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    return-void
.end method

.method public blacklist convertToBrightness(F)I
    .locals 1
    .param p1, "nits"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I
    .locals 1
    .param p1, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p2, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p3, "projectionToken"    # Landroid/media/projection/IMediaProjection;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disconnectWifiDisplay()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist fitToActiveDisplay(Z)V
    .locals 0
    .param p1, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    return-void
.end method

.method public blacklist forgetWifiDisplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBackupBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBrightness(I)F
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;
    .locals 1
    .param p1, "uniqueDisplayId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDeviceMaxVolume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeviceMinVolume()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDisplayIds(Z)[I
    .locals 1
    .param p1, "includeDisabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMaximumBrightnessCurve()Landroid/hardware/display/Curve;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMinimumBrightnessCurve()Landroid/hardware/display/Curve;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPreferredWideGamutColorSpaceId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPresentationOwner(I)Ljava/lang/String;
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPrimaryPhysicalDisplayId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getRefreshRateSwitchingType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getScreenSharingStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getStableDisplaySize()Landroid/graphics/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserDisabledHdrTypes()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isDeviceVolumeMuted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFitToActiveDisplay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMinimalPostProcessingRequested(I)Z
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUidPresentOnDisplay(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWifiDisplayWithPinSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist pauseWifiDisplay()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;
    .param p2, "eventsMask"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .locals 0
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public blacklist renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist requestColorMode(II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "colorMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist requestSetWifiDisplayParameters(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z
    .locals 1
    .param p1, "parameterGroup"    # Ljava/lang/String;
    .param p2, "parameter"    # Landroid/hardware/display/SemWifiDisplayParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetBrightnessConfigurationForUser(ILjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    return-void
.end method

.method public blacklist resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .locals 0
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public blacklist resumeWifiDisplay()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist rotateVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    .locals 0
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    return-void
.end method

.method public blacklist setAreUserDisabledHdrTypesAllowed(Z)V
    .locals 0
    .param p1, "areUserDisabledHdrTypesAllowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public blacklist setBackupBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .locals 0
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    return-void
.end method

.method public blacklist setBrightness(IF)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "brightness"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    return-void
.end method

.method public blacklist setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "uniqueDisplayId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    return-void
.end method

.method public blacklist setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .locals 0
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    return-void
.end method

.method public blacklist setBrightnessConfigurationForUserWithStats(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/BrightnessConfiguration;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    .local p4, "weights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "timeWeights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "continuityWeights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist setDeviceVolume(I)V
    .locals 0
    .param p1, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public blacklist setDeviceVolumeMuted(Z)V
    .locals 0
    .param p1, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    return-void
.end method

.method public blacklist setDisplayStateLimit(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "stateLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    return-void
.end method

.method public blacklist setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "dlnaDevice"    # Landroid/hardware/display/SemDlnaDevice;
    .param p2, "appToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    return-void
.end method

.method public blacklist setRefreshRateSwitchingType(I)V
    .locals 0
    .param p1, "newValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    return-void
.end method

.method public blacklist setScreenSharingStatus(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public blacklist setShouldAlwaysRespectAppRequestedMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    return-void
.end method

.method public blacklist setTemporaryAutoBrightnessAdjustment(F)V
    .locals 0
    .param p1, "adjustment"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    return-void
.end method

.method public blacklist setTemporaryBrightness(IF)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "brightness"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    return-void
.end method

.method public blacklist setTemporaryBrightnessForSlowChange(FZ)V
    .locals 0
    .param p1, "brightness"    # F
    .param p2, "slowChange"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    return-void
.end method

.method public blacklist setUserDisabledHdrTypes([I)V
    .locals 0
    .param p1, "userDisabledTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "mode"    # Landroid/view/Display$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    return-void
.end method

.method public blacklist setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V
    .locals 0
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "isOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public blacklist setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 0
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    return-void
.end method

.method public blacklist setVolumeKeyEvent(I)V
    .locals 0
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    return-void
.end method

.method public blacklist setWifiDisplayParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    return-void
.end method

.method public blacklist shouldAlwaysRespectAppRequestedMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startWifiDisplayChannelScan(I)V
    .locals 0
    .param p1, "scanChannel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    return-void
.end method

.method public blacklist startWifiDisplayChannelScanAndInterval(II)V
    .locals 0
    .param p1, "scanChannel"    # I
    .param p2, "interval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    return-void
.end method

.method public blacklist startWifiDisplayScan()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist stopWifiDisplayScan()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

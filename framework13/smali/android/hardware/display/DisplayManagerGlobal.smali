.class public final Landroid/hardware/display/DisplayManagerGlobal;
.super Ljava/lang/Object;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayEvent;
    }
.end annotation


# static fields
.field public static final blacklist CACHE_KEY_DISPLAY_INFO_PROPERTY:Ljava/lang/String; = "cache_key.display_info"

.field private static final greylist-max-o DEBUG:Z = false

.field public static final blacklist EVENT_CONNECTIONSTATUS_CHANGED:I = 0x4

.field public static final greylist-max-o EVENT_DISPLAY_ADDED:I = 0x1

.field public static final blacklist EVENT_DISPLAY_BRIGHTNESS_CHANGED:I = 0x4

.field public static final greylist-max-o EVENT_DISPLAY_CHANGED:I = 0x2

.field public static final greylist-max-o EVENT_DISPLAY_REMOVED:I = 0x3

.field public static final blacklist EVENT_REMOTE_DISPLAY_ROTATION_CHANGED:I = 0x6

.field public static final blacklist EVENT_REMOTE_DISPLAY_STATE_CHANGED:I = 0x5

.field public static final blacklist EVENT_VOLUME_KEY_DOWN:I = 0xa

.field public static final blacklist EVENT_VOLUME_KEY_UP:I = 0xb

.field public static final blacklist EVENT_VOLUME_LEVEL_CHANGED:I = 0x9

.field public static final blacklist EVENT_VOLUME_MUTE:I = 0xc

.field public static final blacklist EVENT_VOLUME_UNMUTE:I = 0xd

.field public static final blacklist EVENT_WIFIDISPLAY_PARAMETERS_CHANGED:I = 0x11

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DisplayManager"

.field private static final greylist-max-o USE_CACHE:Z = false

.field private static greylist sInstance:Landroid/hardware/display/DisplayManagerGlobal;


# instance fields
.field private greylist-max-o mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

.field private final blacklist mDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDispatchNativeCallbacks:Z

.field private blacklist mDisplayCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDisplayIdCache:[I

.field private final greylist-max-o mDisplayInfoCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDisplayListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayVolumeKeyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayVolumeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mDm:Landroid/hardware/display/IDisplayManager;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private blacklist mNativeCallbackReportedRefreshRate:F

.field private blacklist mRegisteredEventsMask:J

.field private final blacklist mWideColorSpace:Landroid/graphics/ColorSpace;

.field private blacklist mWifiDisplayConnectionCallback:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

.field private final blacklist mWifiDisplayParameterListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mWifiDisplayScanNestCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDm(Landroid/hardware/display/DisplayManagerGlobal;)Landroid/hardware/display/IDisplayManager;
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDeviceEvent(Landroid/hardware/display/DisplayManagerGlobal;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDeviceEvent(Landroid/os/Bundle;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisplayEvent(Landroid/hardware/display/DisplayManagerGlobal;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayEvent(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisplayVolumeEvent(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayVolumeEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisplayVolumeKeyEvent(Landroid/hardware/display/DisplayManagerGlobal;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayVolumeKeyEvent(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleWifiDisplayParameterEvent(Landroid/hardware/display/DisplayManagerGlobal;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleWifiDisplayParameterEvent(ILjava/util/List;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/display/IDisplayManager;)V
    .locals 3
    .param p1, "dm"    # Landroid/hardware/display/IDisplayManager;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mRegisteredEventsMask:J

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayInfoCache:Landroid/util/SparseArray;

    .line 176
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$1;

    const/16 v1, 0x8

    const-string v2, "cache_key.display_info"

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal$1;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayCache:Landroid/app/PropertyInvalidatedCache;

    .line 166
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 168
    nop

    .line 170
    :try_start_0
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-interface {p1}, Landroid/hardware/display/IDisplayManager;->getPreferredWideGamutColorSpaceId()I

    move-result v1

    aget-object v0, v0, v1

    .line 169
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWideColorSpace:Landroid/graphics/ColorSpace;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    nop

    .line 174
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist calculateEventsMaskLocked()I
    .locals 7

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "mask":I
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 446
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 447
    int-to-long v3, v0

    iget-object v5, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    iget-wide v5, v5, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    or-long/2addr v3, v5

    long-to-int v0, v3

    .line 446
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 449
    .end local v2    # "i":I
    :cond_0
    iget-boolean v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    if-eqz v2, :cond_1

    .line 450
    int-to-long v2, v0

    const-wide/16 v4, 0x7

    or-long/2addr v2, v4

    long-to-int v0, v2

    .line 454
    :cond_1
    return v0
.end method

.method private blacklist findDeviceListnerLocked(Landroid/hardware/display/SemDeviceStatusListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/display/SemDeviceStatusListener;

    .line 1509
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1510
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1511
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1512
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;->mListener:Landroid/hardware/display/SemDeviceStatusListener;

    if-ne v2, p1, :cond_0

    .line 1513
    return v1

    .line 1511
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1517
    .end local v0    # "numListeners":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 433
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 434
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 435
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-ne v2, p1, :cond_0

    .line 436
    return v1

    .line 434
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findDisplayVolumeKeyListnerLocked(Landroid/hardware/display/SemDisplayVolumeKeyListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .line 1335
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1336
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1337
    .local v0, "numListeners":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findDisplayVolumeKeyListnerLocked numListeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1339
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    if-ne v2, p1, :cond_0

    .line 1340
    return v1

    .line 1338
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1344
    .end local v0    # "numListeners":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist findDisplayVolumeListnerLocked(Landroid/hardware/display/SemDisplayVolumeListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeListener;

    .line 1285
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1286
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1287
    .local v0, "numListeners":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findDisplayVolumeListnerLocked numListeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1289
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeListener;

    if-ne v2, p1, :cond_0

    .line 1290
    return v1

    .line 1288
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1294
    .end local v0    # "numListeners":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist findWifiDisplayParameterListnerLocked(Landroid/hardware/display/SemWifiDisplayParameterListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/display/SemWifiDisplayParameterListener;

    .line 1385
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1386
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1387
    .local v0, "numListeners":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findWifiDisplayParameterListnerLocked numListeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1389
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;

    invoke-static {v2}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;)Landroid/hardware/display/SemWifiDisplayParameterListener;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1390
    return v1

    .line 1388
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1394
    .end local v0    # "numListeners":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getDisplayInfoLocked(I)Landroid/view/DisplayInfo;
    .locals 8
    .param p1, "displayId"    # I

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "info":Landroid/view/DisplayInfo;
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayCache:Landroid/app/PropertyInvalidatedCache;

    if-eqz v1, :cond_0

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/DisplayInfo;

    goto :goto_0

    .line 233
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 236
    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 238
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    if-nez v0, :cond_1

    .line 239
    const/4 v1, 0x0

    return-object v1

    .line 244
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 245
    .local v1, "thread":Landroid/app/ActivityThread;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/ActivityThread;->isDexCompatMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 247
    .local v2, "threadConfig":Landroid/content/res/Configuration;
    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 248
    .local v3, "windowingMode":I
    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    iget v4, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v4, :cond_2

    iget v4, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v4, :cond_2

    iget v4, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v4, :cond_2

    .line 252
    iget v4, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    const v5, 0x3bcccccd    # 0.00625f

    mul-float/2addr v4, v5

    .line 253
    .local v4, "density":F
    iget v5, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 254
    .local v5, "width":I
    iget v7, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v7, v6

    float-to-int v6, v7

    .line 255
    .local v6, "height":I
    iput v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v5, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 256
    iput v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v6, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 265
    .end local v1    # "thread":Landroid/app/ActivityThread;
    .end local v2    # "threadConfig":Landroid/content/res/Configuration;
    .end local v3    # "windowingMode":I
    .end local v4    # "density":F
    .end local v5    # "width":I
    .end local v6    # "height":I
    :cond_2
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 270
    return-object v0
.end method

.method public static greylist getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    .locals 4

    .line 198
    const-class v0, Landroid/hardware/display/DisplayManagerGlobal;

    monitor-enter v0

    .line 199
    :try_start_0
    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    if-nez v1, :cond_0

    .line 200
    const-string v1, "display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 201
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 202
    new-instance v2, Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;-><init>(Landroid/hardware/display/IDisplayManager;)V

    sput-object v2, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    .line 205
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    monitor-exit v0

    return-object v1

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getLooperForHandler(Landroid/os/Handler;)Landroid/os/Looper;
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;

    .line 422
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 423
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-nez v0, :cond_1

    .line 424
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 426
    :cond_1
    if-eqz v0, :cond_2

    .line 429
    return-object v0

    .line 427
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get Looper for the UI thread."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist handleDeviceEvent(Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Bundle;
    .param p2, "event"    # I

    .line 1521
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1522
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1523
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1524
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1525
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;->sendDeviceEvent(Landroid/os/Bundle;I)V

    .line 1524
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1528
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 1529
    return-void

    .line 1528
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o handleDisplayEvent(II)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .line 477
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 487
    .local v1, "numListeners":I
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    .line 488
    .local v2, "info":Landroid/view/DisplayInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 489
    iget-object v4, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    invoke-virtual {v4, p1, p2, v2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->sendDisplayEvent(IILandroid/view/DisplayInfo;)V

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 491
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    iget-boolean v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    if-eqz v3, :cond_1

    .line 494
    if-nez p1, :cond_1

    .line 497
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfoLocked(I)Landroid/view/DisplayInfo;

    move-result-object v3

    .line 498
    .local v3, "display":Landroid/view/DisplayInfo;
    if-eqz v3, :cond_1

    iget v4, p0, Landroid/hardware/display/DisplayManagerGlobal;->mNativeCallbackReportedRefreshRate:F

    .line 499
    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 500
    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v4

    iput v4, p0, Landroid/hardware/display/DisplayManagerGlobal;->mNativeCallbackReportedRefreshRate:F

    .line 502
    invoke-static {v4}, Landroid/hardware/display/DisplayManagerGlobal;->nSignalNativeCallbacks(F)V

    .line 506
    .end local v1    # "numListeners":I
    .end local v2    # "info":Landroid/view/DisplayInfo;
    .end local v3    # "display":Landroid/view/DisplayInfo;
    :cond_1
    monitor-exit v0

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleDisplayVolumeEvent(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1398
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1399
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1400
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1401
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1402
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->sendDisplayVolumeEvent(ILandroid/os/Bundle;)V

    .line 1401
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1405
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 1406
    return-void

    .line 1405
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleDisplayVolumeKeyEvent(I)V
    .locals 4
    .param p1, "event"    # I

    .line 1409
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1410
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1411
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1412
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1413
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->sendDisplayVolumeKeyEvent(I)V

    .line 1412
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1416
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 1417
    return-void

    .line 1416
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleWifiDisplayParameterEvent(ILjava/util/List;)V
    .locals 4
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)V"
        }
    .end annotation

    .line 1420
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1421
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1422
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1423
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1424
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;

    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;->sendWifiDisplayParameterEvent(ILjava/util/List;)V

    .line 1423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1427
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 1428
    return-void

    .line 1427
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist invalidateLocalDisplayInfoCaches()V
    .locals 1

    .line 1728
    const-string v0, "cache_key.display_info"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 1729
    return-void
.end method

.method private static native blacklist nSignalNativeCallbacks(F)V
.end method

.method private greylist-max-o registerCallbackIfNeededLocked()V
    .locals 2

    .line 458
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback-IA;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    .line 460
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 462
    :cond_0
    return-void
.end method

.method private blacklist updateCallbackIfNeededLocked()V
    .locals 5

    .line 465
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->calculateEventsMaskLocked()I

    move-result v0

    .line 466
    .local v0, "mask":I
    int-to-long v1, v0

    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mRegisteredEventsMask:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 468
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    int-to-long v3, v0

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/display/IDisplayManager;->registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V

    .line 469
    int-to-long v1, v0

    iput-wide v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mRegisteredEventsMask:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    goto :goto_0

    .line 470
    :catch_0
    move-exception v1

    .line 471
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 474
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist areUserDisabledHdrTypesAllowed()Z
    .locals 2

    .line 637
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->areUserDisabledHdrTypesAllowed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist connectWifiDisplay(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "wifidisplayConfig"    # Landroid/hardware/display/SemWifiDisplayConfig;
    .param p2, "callback"    # Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1119
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

    invoke-direct {v0, p0, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;Landroid/os/Handler;)V

    :goto_0
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayConnectionCallback:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

    .line 1120
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, v0}, Landroid/hardware/display/IDisplayManager;->connectWifiDisplayWithConfig(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    nop

    .line 1125
    return-void

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o connectWifiDisplay(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 533
    if-eqz p1, :cond_0

    .line 538
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->connectWifiDisplay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    nop

    .line 542
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 534
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist convertToBrightness(F)I
    .locals 2
    .param p1, "nits"    # F

    .line 2020
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->convertToBrightness(F)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2021
    :catch_0
    move-exception v0

    .line 2022
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist createSpegVirtualDisplay(Ljava/lang/String;I)Landroid/hardware/display/VirtualDisplay;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 671
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 672
    :cond_0
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    invoke-direct {v0, v1, v1}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V

    .line 673
    .local v0, "callbackWrapper":Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;
    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/hardware/display/DisplayManagerInternal;

    .line 674
    .local v8, "dmi":Landroid/hardware/display/DisplayManagerInternal;
    invoke-virtual {v8, p1, p2, v0}, Landroid/hardware/display/DisplayManagerInternal;->createSpegVirtualDisplay(Ljava/lang/String;ILandroid/hardware/display/IVirtualDisplayCallback;)I

    move-result v9

    .line 675
    .local v9, "displayId":I
    const-string v2, "SPEG"

    if-gez v9, :cond_1

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create speg display for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-object v1

    .line 680
    :cond_1
    invoke-virtual {p0, v9}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v10

    .line 681
    .local v10, "display":Landroid/view/Display;
    if-nez v10, :cond_2

    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain display info for created display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v2, v0}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    nop

    .line 688
    return-object v1

    .line 685
    :catch_0
    move-exception v1

    .line 686
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 690
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_2
    new-instance v1, Landroid/hardware/display/VirtualDisplay;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, v10

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Landroid/hardware/display/VirtualDisplay;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;Landroid/content/Context;)V

    .line 692
    .local v1, "vd":Landroid/hardware/display/VirtualDisplay;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    .line 693
    return-object v1
.end method

.method public blacklist createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;Landroid/content/Context;)Landroid/hardware/display/VirtualDisplay;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projection"    # Landroid/media/projection/MediaProjection;
    .param p3, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p4, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "windowContext"    # Landroid/content/Context;

    .line 703
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    invoke-direct {v0, p4, p5}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V

    .line 704
    .local v0, "callbackWrapper":Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/media/projection/MediaProjection;->getProjection()Landroid/media/projection/IMediaProjection;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 707
    .local v1, "projectionToken":Landroid/media/projection/IMediaProjection;
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 708
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 707
    invoke-interface {v2, p3, v0, v1, v3}, Landroid/hardware/display/IDisplayManager;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    .local v2, "displayId":I
    nop

    .line 712
    invoke-virtual {p0, p3, p6, v0, v2}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplayWrapper(Landroid/hardware/display/VirtualDisplayConfig;Landroid/content/Context;Landroid/hardware/display/IVirtualDisplayCallback;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v3

    return-object v3

    .line 709
    .end local v2    # "displayId":I
    :catch_0
    move-exception v2

    .line 710
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public blacklist createVirtualDisplayWrapper(Landroid/hardware/display/VirtualDisplayConfig;Landroid/content/Context;Landroid/hardware/display/IVirtualDisplayCallback;I)Landroid/hardware/display/VirtualDisplay;
    .locals 9
    .param p1, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p2, "windowContext"    # Landroid/content/Context;
    .param p3, "callbackWrapper"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p4, "displayId"    # I

    .line 723
    const/4 v0, 0x0

    const-string v1, "DisplayManager"

    if-gez p4, :cond_0

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create virtual display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return-object v0

    .line 727
    :cond_0
    invoke-virtual {p0, p4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 728
    .local v2, "display":Landroid/view/Display;
    if-nez v2, :cond_1

    .line 729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain display info for newly created virtual display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 730
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 729
    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p3}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    nop

    .line 736
    return-object v0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 738
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Landroid/hardware/display/VirtualDisplay;

    .line 739
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getSurface()Landroid/view/Surface;

    move-result-object v7

    move-object v3, v0

    move-object v4, p0

    move-object v5, v2

    move-object v6, p3

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Landroid/hardware/display/VirtualDisplay;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;Landroid/content/Context;)V

    .line 738
    return-object v0
.end method

.method public blacklist disableLocalDisplayInfoCaches()V
    .locals 1

    .line 1735
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayCache:Landroid/app/PropertyInvalidatedCache;

    .line 1736
    return-void
.end method

.method public greylist disconnectWifiDisplay()V
    .locals 2

    .line 563
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->disconnectWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    nop

    .line 567
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist fitToActiveDisplay(Z)V
    .locals 3
    .param p1, "status"    # Z

    .line 1441
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->fitToActiveDisplay(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    goto :goto_0

    .line 1442
    :catch_0
    move-exception v0

    .line 1443
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed to fit/unfit to active display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1445
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public greylist-max-o forgetWifiDisplay(Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 582
    if-eqz p1, :cond_0

    .line 587
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->forgetWifiDisplay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    nop

    .line 591
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 583
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getAmbientBrightnessStats()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 1011
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1012
    .local v0, "stats":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    if-nez v0, :cond_0

    .line 1013
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1015
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1016
    .end local v0    # "stats":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBackupBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;
    .locals 2
    .param p1, "userId"    # I

    .line 2005
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getBackupBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2006
    :catch_0
    move-exception v0

    .line 2007
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBrightness(I)F
    .locals 2
    .param p1, "displayId"    # I

    .line 964
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getBrightness(I)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;
    .locals 2
    .param p1, "uniqueDisplayId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 861
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;
    .locals 2
    .param p1, "userId"    # I

    .line 874
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getBrightnessEvents(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 792
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 793
    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 794
    .local v0, "events":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/hardware/display/BrightnessChangeEvent;>;"
    if-nez v0, :cond_0

    .line 795
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 797
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 798
    .end local v0    # "events":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/hardware/display/BrightnessChangeEvent;>;"
    :catch_0
    move-exception v0

    .line 799
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;
    .locals 2
    .param p1, "displayId"    # I

    .line 808
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 355
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 356
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_0

    .line 357
    const/4 v1, 0x0

    return-object v1

    .line 359
    :cond_0
    new-instance v1, Landroid/view/Display;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/content/res/Resources;)V

    return-object v1
.end method

.method public greylist-max-o getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "daj"    # Landroid/view/DisplayAdjustments;

    .line 337
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 338
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_0

    .line 339
    const/4 v1, 0x0

    return-object v1

    .line 341
    :cond_0
    new-instance v1, Landroid/view/Display;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V

    return-object v1
.end method

.method public greylist-max-o getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 2

    .line 887
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDeviceMaxVolume()I
    .locals 3

    .line 1204
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getDeviceMaxVolume()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed getDeviceMaxVolume "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1207
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getDeviceMinVolume()I
    .locals 3

    .line 1213
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getDeviceMinVolume()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1214
    :catch_0
    move-exception v0

    .line 1215
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed getDeviceMinVolume "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1216
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .locals 2
    .param p1, "displayId"    # I

    .line 949
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getDisplayIds()[I
    .locals 1

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public greylist getDisplayIds(Z)[I
    .locals 2
    .param p1, "includeDisabledDisplays"    # Z

    .line 291
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :try_start_1
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 299
    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->getDisplayIds(Z)[I

    move-result-object v1

    .line 303
    .local v1, "displayIds":[I
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 304
    monitor-exit v0

    return-object v1

    .line 305
    .end local v1    # "displayIds":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    .end local p1    # "includeDisabledDisplays":Z
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 306
    .restart local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local p1    # "includeDisabledDisplays":Z
    :catch_0
    move-exception v0

    .line 307
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 2
    .param p1, "displayId"    # I

    .line 218
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfoLocked(I)Landroid/view/DisplayInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .locals 3

    .line 1171
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1172
    :catch_0
    move-exception v0

    .line 1173
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed getDlnaDevice "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1174
    new-instance v1, Landroid/hardware/display/SemDlnaDevice;

    invoke-direct {v1}, Landroid/hardware/display/SemDlnaDevice;-><init>()V

    return-object v1
.end method

.method public blacklist getMaximumBrightnessCurve()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 2030
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getMaximumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object v0

    .line 2031
    .local v0, "curve":Landroid/hardware/display/Curve;
    invoke-virtual {v0}, Landroid/hardware/display/Curve;->getX()[F

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/display/Curve;->getY()[F

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2032
    .end local v0    # "curve":Landroid/hardware/display/Curve;
    :catch_0
    move-exception v0

    .line 2033
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getMinimumBrightnessCurve()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 999
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getMinimumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object v0

    .line 1000
    .local v0, "curve":Landroid/hardware/display/Curve;
    invoke-virtual {v0}, Landroid/hardware/display/Curve;->getX()[F

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/display/Curve;->getY()[F

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1001
    .end local v0    # "curve":Landroid/hardware/display/Curve;
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    .line 822
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWideColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public blacklist getPresentationOwner(I)Ljava/lang/String;
    .locals 3
    .param p1, "displayId"    # I

    .line 1458
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getPresentationOwner(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1459
    :catch_0
    move-exception v0

    .line 1460
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Fail to get PresentationOwner."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1461
    const-string v1, ""

    return-object v1
.end method

.method public blacklist getPrimaryPhysicalDisplayId()J
    .locals 2

    .line 1777
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getPrimaryPhysicalDisplayId()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1778
    :catch_0
    move-exception v0

    .line 1779
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getRealDisplay(I)Landroid/view/Display;
    .locals 1
    .param p1, "displayId"    # I

    .line 370
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRefreshRateSwitchingType()I
    .locals 2

    .line 1102
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getRefreshRateSwitchingType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getScreenSharingStatus()I
    .locals 3

    .line 1145
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getScreenSharingStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed getScreenSharingStatus "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1148
    const/4 v1, -0x1

    return v1
.end method

.method public greylist-max-o getStableDisplaySize()Landroid/graphics/Point;
    .locals 2

    .line 781
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;
    .locals 2
    .param p1, "displayId"    # I

    .line 1049
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUserDisabledHdrTypes()[I
    .locals 2

    .line 649
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getUserDisabledHdrTypes()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;
    .locals 2
    .param p1, "displayId"    # I

    .line 1038
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 2

    .line 596
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isDeviceVolumeMuted()Z
    .locals 3

    .line 1222
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->isDeviceVolumeMuted()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed isDeviceVolumeMuted "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1225
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isFitToActiveDisplay()Z
    .locals 3

    .line 1449
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->isFitToActiveDisplay()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1450
    :catch_0
    move-exception v0

    .line 1451
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed to get active display\'s fit status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1452
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isMinimalPostProcessingRequested(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 900
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->isMinimalPostProcessingRequested(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isUidPresentOnDisplay(II)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "displayId"    # I

    .line 320
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->isUidPresentOnDisplay(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isWifiDisplayWithPinSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 1432
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->isWifiDisplayWithPinSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1433
    :catch_0
    move-exception v0

    .line 1434
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed to get dongle pin supported feature Wifi display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1435
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o pauseWifiDisplay()V
    .locals 2

    .line 546
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->pauseWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    nop

    .line 550
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerDeviceListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/SemDeviceStatusListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1474
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1475
    const-string v0, "DisplayManager"

    const-string/jumbo v1, "registerDeviceListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    if-eqz p1, :cond_1

    .line 1480
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1481
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDeviceListnerLocked(Landroid/hardware/display/SemDeviceStatusListener;)I

    move-result v1

    .line 1482
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 1483
    const-string v2, "DisplayManager"

    const-string/jumbo v3, "registerDeviceListener index < 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;-><init>(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 1487
    .end local v1    # "index":I
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1477
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1489
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "eventsMask"    # J

    .line 384
    if-eqz p1, :cond_2

    .line 388
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I

    move-result v1

    .line 394
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 395
    invoke-static {p2}, Landroid/hardware/display/DisplayManagerGlobal;->getLooperForHandler(Landroid/os/Handler;)Landroid/os/Looper;

    move-result-object v2

    .line 396
    .local v2, "looper":Landroid/os/Looper;
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    new-instance v4, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    invoke-direct {v4, p1, v2, p3, p4}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;-><init>(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Looper;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 398
    .end local v2    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 399
    :cond_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    invoke-virtual {v2, p3, p4}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->setEventsMask(J)V

    .line 401
    :goto_0
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 402
    .end local v1    # "index":I
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 389
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The set of events to listen to must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeKeyListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1298
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1299
    const-string v0, "DisplayManager"

    const-string/jumbo v1, "registerDisplayVolumeKeyListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    if-eqz p1, :cond_1

    .line 1304
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1305
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeKeyListnerLocked(Landroid/hardware/display/SemDisplayVolumeKeyListener;)I

    move-result v1

    .line 1306
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 1307
    const-string v2, "DisplayManager"

    const-string/jumbo v3, "registerDisplayVolumeKeyListener index < 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;-><init>(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 1311
    .end local v1    # "index":I
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1301
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1313
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist registerDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1248
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1249
    const-string v0, "DisplayManager"

    const-string/jumbo v1, "registerDisplayVolumeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    if-eqz p1, :cond_1

    .line 1254
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1255
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeListnerLocked(Landroid/hardware/display/SemDisplayVolumeListener;)I

    move-result v1

    .line 1256
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 1257
    const-string v2, "DisplayManager"

    const-string/jumbo v3, "registerDisplayVolumeListener index < 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;-><init>(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 1261
    .end local v1    # "index":I
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1251
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist registerNativeChoreographerForRefreshRateCallbacks()V
    .locals 3

    .line 1747
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1748
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    .line 1749
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 1750
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 1751
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfoLocked(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1752
    .local v1, "display":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_0

    .line 1755
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v2

    iput v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mNativeCallbackReportedRefreshRate:F

    .line 1756
    invoke-static {v2}, Landroid/hardware/display/DisplayManagerGlobal;->nSignalNativeCallbacks(F)V

    .line 1758
    .end local v1    # "display":Landroid/view/DisplayInfo;
    :cond_0
    monitor-exit v0

    .line 1759
    return-void

    .line 1758
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist registerWifiDisplayParameterListener(Landroid/hardware/display/SemWifiDisplayParameterListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/SemWifiDisplayParameterListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1348
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1349
    const-string v0, "DisplayManager"

    const-string/jumbo v1, "registerWifiDisplayParameterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    if-eqz p1, :cond_1

    .line 1354
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1355
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findWifiDisplayParameterListnerLocked(Landroid/hardware/display/SemWifiDisplayParameterListener;)I

    move-result v1

    .line 1356
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 1357
    const-string v2, "DisplayManager"

    const-string/jumbo v3, "registerWifiDisplayParameterListener index < 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;-><init>(Landroid/hardware/display/SemWifiDisplayParameterListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 1361
    .end local v1    # "index":I
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1351
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1363
    :cond_2
    :goto_0
    return-void
.end method

.method public greylist-max-o releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .locals 2
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;

    .line 762
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    nop

    .line 766
    return-void

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 570
    if-eqz p1, :cond_0

    .line 575
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    nop

    .line 579
    return-void

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 571
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o requestColorMode(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "colorMode"    # I

    .line 657
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->requestColorMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    nop

    .line 661
    return-void

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestSetWifiDisplayParameters(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)Z"
        }
    .end annotation

    .line 1231
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->requestSetWifiDisplayParameters(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed requestSetWifiDisplayParameters "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1235
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z
    .locals 3
    .param p1, "parameterGroup"    # Ljava/lang/String;
    .param p2, "parameter"    # Landroid/hardware/display/SemWifiDisplayParameter;

    .line 1240
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->requestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1241
    :catch_0
    move-exception v0

    .line 1242
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed requestSetWifiDisplayParameters "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1244
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetBrightnessConfigurationForUser(ILjava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1976
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->resetBrightnessConfigurationForUser(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1979
    nop

    .line 1980
    return-void

    .line 1977
    :catch_0
    move-exception v0

    .line 1978
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .locals 2
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .line 754
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/display/IDisplayManager;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    nop

    .line 758
    return-void

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o resumeWifiDisplay()V
    .locals 2

    .line 554
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->resumeWifiDisplay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    nop

    .line 558
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist rotateVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    .locals 2
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "rotation"    # I

    .line 1111
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->rotateVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    nop

    .line 1115
    return-void

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAreUserDisabledHdrTypesAllowed(Z)V
    .locals 2
    .param p1, "areUserDisabledHdrTypesAllowed"    # Z

    .line 625
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setAreUserDisabledHdrTypesAllowed(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    nop

    .line 629
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setBackupBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .locals 2
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1992
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/display/IDisplayManager;->setBackupBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1995
    nop

    .line 1996
    return-void

    .line 1993
    :catch_0
    move-exception v0

    .line 1994
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setBrightness(IF)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "brightness"    # F

    .line 934
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setBrightness(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    nop

    .line 938
    return-void

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "uniqueDisplayId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 847
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/display/IDisplayManager;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    nop

    .line 851
    return-void

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .locals 2
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 833
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/display/IDisplayManager;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    nop

    .line 837
    return-void

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
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

    .line 1961
    .local p4, "weights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "timeWeights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "continuityWeights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/hardware/display/IDisplayManager;->setBrightnessConfigurationForUserWithStats(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1964
    nop

    .line 1965
    return-void

    .line 1962
    :catch_0
    move-exception v0

    .line 1963
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setDeviceVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .line 1180
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setDeviceVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    goto :goto_0

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed setDeviceVolume "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1184
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setDeviceVolumeMuted(Z)V
    .locals 3
    .param p1, "muted"    # Z

    .line 1188
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setDeviceVolumeMuted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    goto :goto_0

    .line 1189
    :catch_0
    move-exception v0

    .line 1190
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed setDeviceVolumeMuted "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1192
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;)V
    .locals 4
    .param p1, "dlnaDevice"    # Landroid/hardware/display/SemDlnaDevice;

    .line 1161
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 1163
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, v0}, Landroid/hardware/display/IDisplayManager;->setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    goto :goto_0

    .line 1164
    :catch_0
    move-exception v1

    .line 1165
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "DisplayManager"

    const-string v3, "Failed setDlnaDevice "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setRefreshRateSwitchingType(I)V
    .locals 2
    .param p1, "newValue"    # I

    .line 1088
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setRefreshRateSwitchingType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    nop

    .line 1092
    return-void

    .line 1089
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setScreenSharingStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .line 1154
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setScreenSharingStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    goto :goto_0

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed setScreenSharingStatus "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1158
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setShouldAlwaysRespectAppRequestedMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1062
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setShouldAlwaysRespectAppRequestedMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    nop

    .line 1066
    return-void

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setTemporaryAutoBrightnessAdjustment(F)V
    .locals 2
    .param p1, "adjustment"    # F

    .line 982
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setTemporaryAutoBrightnessAdjustment(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    nop

    .line 986
    return-void

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTemporaryBrightness(IF)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "brightness"    # F

    .line 918
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setTemporaryBrightness(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    nop

    .line 922
    return-void

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTemporaryBrightnessForSlowChange(FZ)V
    .locals 2
    .param p1, "brightness"    # F
    .param p2, "slowChange"    # Z

    .line 1945
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setTemporaryBrightnessForSlowChange(FZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1948
    nop

    .line 1949
    return-void

    .line 1946
    :catch_0
    move-exception v0

    .line 1947
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setUserDisabledHdrTypes([I)V
    .locals 2
    .param p1, "userDisabledHdrTypes"    # [I

    .line 608
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setUserDisabledHdrTypes([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    nop

    .line 612
    return-void

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "mode"    # Landroid/view/Display$Mode;

    .line 1027
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    nop

    .line 1031
    return-void

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V
    .locals 2
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "isOn"    # Z

    .line 770
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    nop

    .line 774
    return-void

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 2
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 744
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 745
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    nop

    .line 749
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setVolumeKeyEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .line 1196
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setVolumeKeyEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    goto :goto_0

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed setVolumeKeyEvent "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1200
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setWifiDisplayParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1467
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setWifiDisplayParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    goto :goto_0

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed to setWifiDisplayParam"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1471
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist shouldAlwaysRespectAppRequestedMode()Z
    .locals 2

    .line 1075
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->shouldAlwaysRespectAppRequestedMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o startWifiDisplayScan()V
    .locals 3

    .line 510
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :try_start_1
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->startWifiDisplayScan()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    nop

    .line 518
    :try_start_2
    monitor-exit v0

    .line 519
    return-void

    .line 515
    :catch_0
    move-exception v1

    .line 516
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    throw v2

    .line 518
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist startWifiDisplayScan(I)V
    .locals 3
    .param p1, "scanChannel"    # I

    .line 1129
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->startWifiDisplayChannelScan(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    goto :goto_0

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed startWifiDisplayChannelScan "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1133
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist startWifiDisplayScan(II)V
    .locals 3
    .param p1, "scanChannel"    # I
    .param p2, "interval"    # I

    .line 1137
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->startWifiDisplayChannelScanAndInterval(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    goto :goto_0

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed startWifiDisplayChannelScan "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1141
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public greylist-max-o stopWifiDisplayScan()V
    .locals 3

    .line 522
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->stopWifiDisplayScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    nop

    .line 529
    :try_start_1
    monitor-exit v0

    .line 530
    return-void

    .line 529
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 526
    :catch_0
    move-exception v1

    .line 527
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    throw v2

    .line 529
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist unregisterDeviceListener(Landroid/hardware/display/SemDeviceStatusListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/SemDeviceStatusListener;

    .line 1492
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1493
    if-eqz p1, :cond_1

    .line 1497
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1498
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDeviceListnerLocked(Landroid/hardware/display/SemDeviceStatusListener;)I

    move-result v1

    .line 1499
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 1500
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    .line 1501
    .local v2, "d":Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;->clearEvents()V

    .line 1502
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1504
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1494
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1506
    :cond_2
    :goto_0
    return-void
.end method

.method public greylist-max-o unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 406
    if-eqz p1, :cond_1

    .line 410
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I

    move-result v1

    .line 412
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 413
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    .line 414
    .local v2, "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->clearEvents()V

    .line 415
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 416
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 418
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    :cond_0
    monitor-exit v0

    .line 419
    return-void

    .line 418
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 407
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .line 1316
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1317
    const-string v0, "DisplayManager"

    const-string/jumbo v1, "unregisterDisplayVolumeKeyListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    if-eqz p1, :cond_1

    .line 1322
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1323
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeKeyListnerLocked(Landroid/hardware/display/SemDisplayVolumeKeyListener;)I

    move-result v1

    .line 1324
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 1325
    const-string v2, "DisplayManager"

    const-string/jumbo v3, "unregisterDisplayVolumeKeyListener index >= 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    .line 1327
    .local v2, "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->clearEvents()V

    .line 1328
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1330
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1319
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1332
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist unregisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeListener;

    .line 1266
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1267
    const-string v0, "DisplayManager"

    const-string/jumbo v1, "unregisterDisplayVolumeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    if-eqz p1, :cond_1

    .line 1272
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1273
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeListnerLocked(Landroid/hardware/display/SemDisplayVolumeListener;)I

    move-result v1

    .line 1274
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 1275
    const-string v2, "DisplayManager"

    const-string/jumbo v3, "unregisterDisplayVolumeListener index >= 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    .line 1277
    .local v2, "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->clearEvents()V

    .line 1278
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1280
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1269
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1282
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist unregisterNativeChoreographerForRefreshRateCallbacks()V
    .locals 2

    .line 1768
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1769
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    .line 1770
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 1771
    monitor-exit v0

    .line 1772
    return-void

    .line 1771
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unregisterWifiDisplayParameterListener(Landroid/hardware/display/SemWifiDisplayParameterListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/display/SemWifiDisplayParameterListener;

    .line 1366
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1367
    const-string v0, "DisplayManager"

    const-string/jumbo v1, "unregisterWifiDisplayParameterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    if-eqz p1, :cond_1

    .line 1372
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1373
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findWifiDisplayParameterListnerLocked(Landroid/hardware/display/SemWifiDisplayParameterListener;)I

    move-result v1

    .line 1374
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 1375
    const-string v2, "DisplayManager"

    const-string/jumbo v3, "unregisterWifiDisplayParameterListener index >= 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;

    .line 1377
    .local v2, "d":Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;->clearEvents()V

    .line 1378
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1380
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1369
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1382
    :cond_2
    :goto_0
    return-void
.end method

.class public final Lcom/android/systemui/media/dialog/MediaOutputController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;
.implements Landroid/media/INearbyMediaDevicesUpdateCallback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mActiveRadius:F

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mCachedMediaDevices:Ljava/util/List;

.field mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

.field final mCb:Landroid/media/session/MediaController$Callback;

.field public mColorButtonBackground:I

.field public mColorConnectedItemBackground:I

.field public mColorDialogBackground:I

.field public mColorItemBackground:I

.field public mColorItemContent:I

.field public mColorPositiveButtonText:I

.field public mColorSeekbarProgress:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentState:I

.field public final mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field final mGroupMediaDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final mInactiveRadius:F

.field mIsRefreshing:Z

.field public final mItemMarginEndDefault:I

.field public final mItemMarginEndSelectable:I

.field public final mKeyGuardManager:Landroid/app/KeyguardManager;

.field public final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field public mMediaController:Landroid/media/session/MediaController;

.field public final mMediaDevicesLock:Ljava/lang/Object;

.field public final mMediaItemList:Ljava/util/List;

.field public final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

.field public final mNearbyDeviceInfoMap:Ljava/util/Map;

.field public final mNearbyMediaDevicesManager:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

.field mNeedRefresh:Z

.field public final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final mPackageName:Ljava/lang/String;

.field public final mPowerExemptionManager:Landroid/os/PowerExemptionManager;

.field public final mToken:Landroid/media/session/MediaSession$Token;

.field public final mUserHandle:Landroid/os/UserHandle;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaOutputController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;Landroid/media/AudioManager;Landroid/os/PowerExemptionManager;Landroid/app/KeyguardManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/settings/UserTracker;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevicesLock:Ljava/lang/Object;

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mGroupMediaDevices:Ljava/util/List;

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCachedMediaDevices:Ljava/util/List;

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyDeviceInfoMap:Ljava/util/Map;

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mIsRefreshing:Z

    iput-boolean v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNeedRefresh:Z

    new-instance v6, Lcom/android/systemui/media/dialog/MediaOutputController$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/media/dialog/MediaOutputController$1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V

    iput-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCb:Landroid/media/session/MediaController$Callback;

    iput-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mUserHandle:Landroid/os/UserHandle;

    move-object v6, p5

    iput-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iput-object v5, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object v6, p7

    iput-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v6, p8

    iput-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    move-object/from16 v6, p11

    iput-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v6, p12

    iput-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    move-object/from16 v6, p13

    iput-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mKeyGuardManager:Landroid/app/KeyguardManager;

    move-object/from16 v6, p14

    iput-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v6, p15

    iput-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object v4, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-static {p1, p2, p3, p6, p4}, Lcom/android/settingslib/media/InfoMediaManager;->createInstance(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/media/session/MediaSession$Token;)Lcom/android/settingslib/media/InfoMediaManager;

    move-result-object v3

    new-instance v4, Lcom/android/settingslib/media/LocalMediaManager;

    invoke-direct {v4, p1, p6, v3, p2}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/media/InfoMediaManager;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    new-instance v3, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    invoke-direct {v3, p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyMediaDevicesManager:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    const v2, 0x7f060456

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    const v2, 0x7f060457

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorSeekbarProgress:I

    const v2, 0x7f060453

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorButtonBackground:I

    const v2, 0x7f060455

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemBackground:I

    const v2, 0x7f060454

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorConnectedItemBackground:I

    const v2, 0x7f060458

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorPositiveButtonText:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07096b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mInactiveRadius:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070969

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mActiveRadius:F

    const v2, 0x7f060452

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorStateListDefaultColor(ILandroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorDialogBackground:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07096c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mItemMarginEndDefault:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070976

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mItemMarginEndSelectable:I

    return-void
.end method

.method public static isActiveRemoteDevice(Lcom/android/settingslib/media/MediaDevice;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    if-nez p0, :cond_0

    const-string p0, "MediaDevice"

    const-string v0, "Unable to get features. RouteInfo is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getFeatures()Ljava/util/List;

    move-result-object p0

    :goto_0
    const-string v0, "android.media.route.feature.REMOTE_PLAYBACK"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.media.route.feature.REMOTE_AUDIO_PLAYBACK"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.media.route.feature.REMOTE_VIDEO_PLAYBACK"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.media.route.feature.REMOTE_GROUP_PLAYBACK"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final attachRangeInfo(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/MediaDevice;

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyDeviceInfoMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyDeviceInfoMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/settingslib/media/MediaDevice;->mRangeZone:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final buildMediaItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {v1}, Lcom/android/settingslib/media/InfoMediaManager;->getRouteListingPreference()Landroid/media/RouteListingPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/RouteListingPreference;->getUseSystemOrdering()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/media/dialog/MediaOutputController;->attachRangeInfo(Ljava/util/List;)V

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->isCurrentConnectedDeviceRemote()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    move v1, v2

    :goto_2
    const/4 v4, 0x0

    if-eqz v1, :cond_3

    move-object v5, v4

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v5}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v5

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v5, :cond_5

    sget-boolean p1, Lcom/android/systemui/media/dialog/MediaOutputController;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "MediaOutputController"

    const-string v2, "No connected media device or muting expected device exist."

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0, v4, p2, v1}, Lcom/android/systemui/media/dialog/MediaOutputController;->categorizeMediaItemsLocked(Lcom/android/settingslib/media/MediaDevice;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_5
    invoke-virtual {p0, v5, p2, v2}, Lcom/android/systemui/media/dialog/MediaOutputController;->categorizeMediaItemsLocked(Lcom/android/settingslib/media/MediaDevice;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/media/dialog/MediaItem;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/media/MediaDevice;

    iget-object v8, v5, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    invoke-virtual {v8}, Ljava/util/Optional;->isPresent()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v5, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    invoke-virtual {v8}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v8}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v6, v5, Lcom/android/systemui/media/dialog/MediaItem;->mMediaItemType:I

    if-ne v6, v3, :cond_7

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-eq p1, v4, :cond_b

    invoke-interface {p2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->isCurrentConnectedDeviceRemote()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectedMediaDevice()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v3, :cond_c

    invoke-static {}, Lcom/android/systemui/media/dialog/MediaItem;->createPairNewDeviceMediaItem()Lcom/android/systemui/media/dialog/MediaItem;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    monitor-exit v0

    return-object p1

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final buildMediaItems(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->buildMediaItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final categorizeMediaItemsLocked(Lcom/android/settingslib/media/MediaDevice;Ljava/util/List;Z)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectedMediaDevice()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move v2, p2

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/media/MediaDevice;

    if-eqz p3, :cond_1

    invoke-virtual {v4}, Lcom/android/settingslib/media/MediaDevice;->isMutingExpectedDevice()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v4}, Lcom/android/systemui/media/dialog/MediaItem;->createDeviceMediaItem(Lcom/android/settingslib/media/MediaDevice;)Lcom/android/systemui/media/dialog/MediaItem;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {v4}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Lcom/android/systemui/media/dialog/MediaItem;->createDeviceMediaItem(Lcom/android/settingslib/media/MediaDevice;)Lcom/android/systemui/media/dialog/MediaItem;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/android/settingslib/media/MediaDevice;->isSuggestedDevice()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    const v6, 0x7f130bd5

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/media/dialog/MediaItem;->createGroupDividerMediaItem(Ljava/lang/String;)Lcom/android/systemui/media/dialog/MediaItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/android/settingslib/media/MediaDevice;->isSuggestedDevice()Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    const v6, 0x7f130bd4

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/media/dialog/MediaItem;->createGroupDividerMediaItem(Ljava/lang/String;)Lcom/android/systemui/media/dialog/MediaItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    :cond_4
    :goto_1
    invoke-static {v4}, Lcom/android/systemui/media/dialog/MediaItem;->createDeviceMediaItem(Lcom/android/settingslib/media/MediaDevice;)Lcom/android/systemui/media/dialog/MediaItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->isCurrentConnectedDeviceRemote()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectedMediaDevice()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v5, :cond_6

    invoke-static {}, Lcom/android/systemui/media/dialog/MediaItem;->createPairNewDeviceMediaItem()Lcom/android/systemui/media/dialog/MediaItem;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method public final getAppSourceName()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    const v0, 0x7f130bce

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getDeselectableMediaDevice()Ljava/util/List;
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->getActiveRoutingSession()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/InfoMediaManager;->getDeselectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    new-instance v3, Lcom/android/settingslib/media/InfoMediaDevice;

    iget-object v4, p0, Lcom/android/settingslib/media/InfoMediaManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPreferenceItemMap:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v6

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/RouteListingPreference$Item;

    invoke-direct {v3, v4, v2, v5}, Lcom/android/settingslib/media/InfoMediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRoute2Info;Landroid/media/RouteListingPreference$Item;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is deselectable for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPackageName:Ljava/lang/String;

    const-string v4, "InfoMediaManager"

    invoke-static {v3, v2, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getHeaderIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070970

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    invoke-direct {v3, p0, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p0, v3, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {v3, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MediaOutputController"

    const-string v2, "Media meta data does not contain icon information"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    sget-object v0, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->createFromIconInner(Ljava/lang/Object;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    :cond_6
    :goto_0
    return-object v1
.end method

.method public final getNotificationSmallIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->createFromIconInner(Ljava/lang/Object;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public final getSelectableMediaDevice()Ljava/util/List;
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->getActiveRoutingSession()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/InfoMediaManager;->getSelectableRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    new-instance v3, Lcom/android/settingslib/media/InfoMediaDevice;

    iget-object v4, p0, Lcom/android/settingslib/media/InfoMediaManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPreferenceItemMap:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v6

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/RouteListingPreference$Item;

    invoke-direct {v3, v4, v2, v5}, Lcom/android/settingslib/media/InfoMediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRoute2Info;Landroid/media/RouteListingPreference$Item;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getSelectedMediaDevice()Ljava/util/List;
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->getActiveRoutingSession()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/InfoMediaManager;->getSelectedRoutes(Landroid/media/RoutingSessionInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    new-instance v3, Lcom/android/settingslib/media/InfoMediaDevice;

    iget-object v4, p0, Lcom/android/settingslib/media/InfoMediaManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPreferenceItemMap:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v6

    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/RouteListingPreference$Item;

    invoke-direct {v3, v4, v2, v5}, Lcom/android/settingslib/media/InfoMediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRoute2Info;Landroid/media/RouteListingPreference$Item;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final hasAdjustVolumeUserRestriction()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_adjust_volume"

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public final isAnyDeviceTransferring()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/dialog/MediaItem;

    iget-object v2, v1, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaDevice;

    iget v1, v1, Lcom/android/settingslib/media/MediaDevice;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isCurrentConnectedDeviceRemote()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->isActiveRemoteDevice(Lcom/android/settingslib/media/MediaDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onDeviceAttributesChanged()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    check-cast p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDeviceListUpdate(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mIsRefreshing:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNeedRefresh:Z

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCachedMediaDevices:Ljava/util/List;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCachedMediaDevices:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->buildMediaItems(Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    check-cast p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final onDevicesUpdated(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyDeviceInfoMap:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/NearbyDevice;

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyDeviceInfoMap:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/media/NearbyDevice;->getMediaRoute2Id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/NearbyDevice;->getRangeZone()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyMediaDevicesManager:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    iget-object v0, p1, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->activeCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/INearbyMediaDevicesProvider;

    invoke-interface {v0, p0}, Landroid/media/INearbyMediaDevicesProvider;->unregisterNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onRequestFailed(I)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    check-cast v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-boolean p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->DEBUG:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "logRequestFailed - "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "MediaOutputMetricLogger"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->updateLoggingMediaItemCount(Ljava/util/List;)V

    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-static {p0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;)I

    move-result v1

    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-static {p0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;)I

    move-result v2

    const/4 p0, 0x1

    const/4 v3, 0x2

    if-eq p1, p0, :cond_4

    const/4 p0, 0x3

    if-eq p1, v3, :cond_2

    const/4 v3, 0x4

    if-eq p1, p0, :cond_4

    if-eq p1, v3, :cond_3

    const/4 p0, 0x0

    :cond_2
    :goto_0
    move v4, p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x5

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mWiredDeviceCount:I

    iget v7, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mConnectedBluetoothDeviceCount:I

    iget v8, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mRemoteDeviceCount:I

    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isSuggestedDevice()Z

    move-result v9

    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->hasOngoingSession()Z

    move-result v10

    const/4 v3, 0x0

    invoke-static/range {v1 .. v10}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIILjava/lang/String;IIIZZ)V

    :goto_2
    return-void
.end method

.method public final onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    check-cast v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-boolean p0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->DEBUG:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "logOutputSuccess - selected device: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaOutputMetricLogger"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->updateLoggingMediaItemCount(Ljava/util/List;)V

    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mSourceDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-static {p0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;)I

    move-result v1

    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-static {p0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingDeviceType(Lcom/android/settingslib/media/MediaDevice;)I

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mWiredDeviceCount:I

    iget v7, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mConnectedBluetoothDeviceCount:I

    iget v8, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mRemoteDeviceCount:I

    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isSuggestedDevice()Z

    move-result v9

    iget-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->mTargetDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->hasOngoingSession()Z

    move-result v10

    const/4 v4, 0x1

    const/4 v3, 0x1

    invoke-static/range {v1 .. v10}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIILjava/lang/String;IIIZZ)V

    :goto_0
    return-void
.end method

.method public final releaseSession()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    sget-boolean v1, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MediaOutputMetricLogger"

    const-string v2, "logInteraction - Stop casting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->getLoggingPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v2, v1, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(Ljava/lang/String;IIZ)V

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->getActiveRoutingSession()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/InfoMediaManager;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public final setBroadcastCode(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez p0, :cond_0

    const-string p0, "MediaOutputController"

    const-string/jumbo p1, "setBroadcastCode: LE Audio Broadcast is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setBroadcastCode(Z[B)V

    return-void
.end method

.method public final tryToLaunchInAppRoutingIntent(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/InfoMediaManager;->getRouteListingPreference()Landroid/media/RouteListingPreference;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/RouteListingPreference;->getLinkedItemComponentName()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/android/systemui/animation/DialogTransitionAnimator;->createActivityTransitionController$default(Lcom/android/systemui/animation/DialogTransitionAnimator;Landroid/view/View;)Lcom/android/systemui/animation/DialogTransitionAnimator$createActivityTransitionController$1;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.TRANSFER_MEDIA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.media.extra.ROUTE_ID"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    check-cast p2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object p2, p2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {p2}, Lcom/android/systemui/broadcast/BroadcastSender;->closeSystemDialogs()V

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p2, 0x1

    invoke-interface {p0, v1, p2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    :cond_1
    return-void
.end method

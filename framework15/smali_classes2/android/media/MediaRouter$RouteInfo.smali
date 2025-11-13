.class public Landroid/media/MediaRouter$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$RouteInfo$PlaybackVolume;,
        Landroid/media/MediaRouter$RouteInfo$PlaybackType;,
        Landroid/media/MediaRouter$RouteInfo$DeviceType;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_PLAYBACK_MAX_VOLUME:I = 0xf

.field private static final blacklist DEFAULT_PLAYBACK_VOLUME:I = 0xf

.field public static final whitelist DEVICE_TYPE_BLUETOOTH:I = 0x3

.field public static final whitelist DEVICE_TYPE_SPEAKER:I = 0x2

.field public static final whitelist DEVICE_TYPE_TV:I = 0x1

.field public static final whitelist DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist PLAYBACK_TYPE_LOCAL:I = 0x0

.field public static final whitelist PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final whitelist PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final whitelist PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final whitelist SEM_STATUS_CONNECTED:I = 0x6

.field public static final greylist-max-o STATUS_AVAILABLE:I = 0x3

.field public static final greylist-max-o STATUS_CONNECTED:I = 0x6

.field public static final greylist STATUS_CONNECTING:I = 0x2

.field public static final greylist-max-o STATUS_IN_USE:I = 0x5

.field public static final greylist-max-o STATUS_NONE:I = 0x0

.field public static final greylist-max-o STATUS_NOT_AVAILABLE:I = 0x4

.field public static final greylist-max-o STATUS_SCANNING:I = 0x1


# instance fields
.field final greylist-max-o mCategory:Landroid/media/MediaRouter$RouteCategory;

.field greylist-max-o mDescription:Ljava/lang/CharSequence;

.field greylist-max-o mDeviceAddress:Ljava/lang/String;

.field greylist-max-o mDeviceType:I

.field greylist-max-o mEnabled:Z

.field greylist-max-o mGlobalRouteId:Ljava/lang/String;

.field greylist-max-o mGroup:Landroid/media/MediaRouter$RouteGroup;

.field greylist-max-o mIcon:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mName:Ljava/lang/CharSequence;

.field greylist mNameResId:I

.field greylist-max-o mPlaybackStream:I

.field greylist-max-o mPlaybackType:I

.field greylist-max-o mPresentationDisplay:Landroid/view/Display;

.field greylist-max-o mPresentationDisplayId:I

.field private greylist-max-o mRealStatusCode:I

.field final greylist-max-o mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

.field private greylist-max-o mResolvedStatusCode:I

.field private greylist-max-o mStatus:Ljava/lang/CharSequence;

.field greylist-max-o mSupportedTypes:I

.field private greylist-max-o mTag:Ljava/lang/Object;

.field greylist-max-o mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

.field greylist-max-o mVolume:I

.field greylist-max-o mVolumeHandling:I

.field greylist-max-o mVolumeMax:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRealStatusCode(Landroid/media/MediaRouter$RouteInfo;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    return p0
.end method

.method public constructor greylist-max-o <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    const/16 v1, 0xf

    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    const/4 v2, 0x3

    iput v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    const/4 v2, -0x1

    iput v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    new-instance v1, Landroid/media/MediaRouter$RouteInfo$1;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter$RouteInfo$1;-><init>(Landroid/media/MediaRouter$RouteInfo;)V

    iput-object v1, p0, Landroid/media/MediaRouter$RouteInfo;->mRemoteVolObserver:Landroid/media/IRemoteVolumeObserver$Stub;

    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    return-void
.end method

.method private greylist-max-o choosePresentationDisplay()Landroid/view/Display;
    .locals 9

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getAllPresentationDisplays()[Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_c

    array-length v3, v0

    if-nez v3, :cond_1

    goto :goto_4

    :cond_1
    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    const/4 v4, 0x0

    if-ltz v3, :cond_4

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v3, v0, v4

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    iget v6, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    if-ne v5, v6, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    array-length v3, v0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_6

    aget-object v6, v0, v5

    invoke-virtual {v6}, Landroid/view/Display;->getType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    invoke-direct {p0, v6}, Landroid/media/MediaRouter$RouteInfo;->displayAddressEquals(Landroid/view/Display;)Z

    move-result v7

    if-eqz v7, :cond_5

    return-object v6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    array-length v3, v0

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_8

    aget-object v6, v0, v5

    invoke-virtual {v6}, Landroid/view/Display;->getType()I

    move-result v7

    if-ne v7, v1, :cond_7

    return-object v6

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    array-length v1, v0

    move v3, v4

    :goto_3
    if-ge v3, v1, :cond_a

    aget-object v5, v0, v3

    invoke-virtual {v5}, Landroid/view/Display;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    return-object v5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDefaultAudioVideo()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-ne p0, v1, :cond_b

    aget-object v1, v0, v4

    return-object v1

    :cond_b
    return-object v2

    :cond_c
    :goto_4
    return-object v2
.end method

.method private blacklist displayAddressEquals(Landroid/view/Display;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v0

    instance-of v1, v0, Landroid/view/DisplayAddress$Network;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    move-object v1, v0

    check-cast v1, Landroid/view/DisplayAddress$Network;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/DisplayAddress$Network;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public blacklist getAllPresentationDisplays()[Landroid/view/Display;
    .locals 1

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0}, Landroid/media/MediaRouter$Static;->getAllPresentationDisplays()[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCategory()Landroid/media/MediaRouter$RouteCategory;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    return-object v0
.end method

.method public blacklist getDefaultAudioVideo()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist getDeviceAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDeviceType()I
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    return v0
.end method

.method public whitelist getGroup()Landroid/media/MediaRouter$RouteGroup;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    return-object v0
.end method

.method public whitelist getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-r getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mNameResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPlaybackStream()I
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    return v0
.end method

.method public whitelist getPlaybackType()I
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    return v0
.end method

.method public whitelist getPresentationDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public whitelist getStatus()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist getStatusCode()I
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    return v0
.end method

.method public whitelist getSupportedTypes()I
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    return v0
.end method

.method public whitelist getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist getVolume()I
    .locals 2

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$Static;->getStreamVolume(I)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolume:I

    return v0
.end method

.method public whitelist getVolumeHandling()I
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    return v0
.end method

.method public whitelist getVolumeMax()I
    .locals 4

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MediaRouter"

    const-string v3, "Error getting local stream volume"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mVolumeMax:I

    return v0
.end method

.method public greylist-max-o isBluetooth()Z
    .locals 2

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mDeviceType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isConnecting()Z
    .locals 2

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-p isDefault()Z
    .locals 1

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteInfo;->mEnabled:Z

    return v0
.end method

.method public greylist isSelected()Z
    .locals 1

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist matchesTypes(I)Z
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist requestSetVolume(I)V
    .locals 7

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v1, v0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaRouter"

    const-string v2, "Error setting local stream volume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_1

    :cond_0
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$Static;->requestSetVolume(Landroid/media/MediaRouter$RouteInfo;I)V

    :goto_1
    return-void
.end method

.method public whitelist requestUpdateVolume(I)V
    .locals 8

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackType:I

    if-nez v0, :cond_0

    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v0, Landroid/media/MediaRouter$Static;->mAudioService:Landroid/media/IAudioService;

    iget v3, p0, Landroid/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/media/IAudioService;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaRouter"

    const-string v2, "Error setting local stream volume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_1

    :cond_0
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$Static;->requestUpdateVolume(Landroid/media/MediaRouter$RouteInfo;I)V

    :goto_1
    return-void
.end method

.method greylist-max-o resolveStatusCode()Z
    .locals 3

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    :cond_0
    :goto_0
    iget v1, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    iput v0, p0, Landroid/media/MediaRouter$RouteInfo;->mResolvedStatusCode:I

    packed-switch v0, :pswitch_data_1

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_2
    const v1, 0x10407e4

    goto :goto_1

    :pswitch_3
    const v1, 0x10407e5

    goto :goto_1

    :pswitch_4
    const v1, 0x10407e2

    goto :goto_1

    :pswitch_5
    const v1, 0x10407e3

    goto :goto_1

    :pswitch_6
    const v1, 0x10407e6

    nop

    :goto_1
    if-eqz v1, :cond_2

    sget-object v2, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method greylist-max-o routeUpdated()V
    .locals 0

    invoke-static {p0}, Landroid/media/MediaRouter;->updateRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public greylist select()V
    .locals 2

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/media/MediaRouter;->selectRouteStatic(ILandroid/media/MediaRouter$RouteInfo;Z)V

    return-void
.end method

.method public whitelist semGetDeviceAddress()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist semGetStatusCode()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public whitelist semSelect()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    return-void
.end method

.method greylist-max-o setRealStatusCode(I)Z
    .locals 1

    iget v0, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/media/MediaRouter$RouteInfo;->mRealStatusCode:I

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->resolveStatusCode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o setStatusInt(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mStatus:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$RouteGroup;->memberStatusChanged(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    :cond_1
    return-void
.end method

.method public whitelist setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo;->mTag:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaRouter;->typesToString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", supportedTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", presentationDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o updatePresentationDisplay()Z
    .locals 2

    invoke-direct {p0}, Landroid/media/MediaRouter$RouteInfo;->choosePresentationDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    if-eq v1, v0, :cond_0

    iput-object v0, p0, Landroid/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

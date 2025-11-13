.class public Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;
.super Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final ACTION_LAUNCH_BROADCAST_DIALOG:Ljava/lang/String; = "android.settings.MEDIA_BROADCAST_DIALOG"

.field private static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"

.field private static final TAG:Ljava/lang/String; = "SecMediaVolumePreCtrl"

.field private static final UPDATE_SEEKBAR_DELAY_MILLIS:J = 0xaL


# instance fields
.field private final mHandler:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$H;

.field private mMediaDevice:Lcom/android/settingslib/media/MediaDevice;

.field private final mReceiver:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;

.field private mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;)Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$H;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->mHandler:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$H;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetDualColorSeekBar(Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->setDualColorSeekBar()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "media_volume"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$H;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$H;-><init>(Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->mHandler:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$H;

    new-instance p1, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;-><init>(Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getBroadcastIcon(Landroid/content/Context;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    const p0, 0x7f080cd0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x1010435

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {p0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getUri()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_MEDIA_URI:Landroid/net/Uri;

    return-object p0
.end method

.method private getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/media/MediaOutputIndicatorWorker;

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    return-object p0
.end method

.method private isConnectedBLEDevice()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->mMediaDevice:Lcom/android/settingslib/media/MediaDevice;

    const/4 p0, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private isSupportEndItem()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getActiveLocalMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->isConnectedBLEDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isZenModeEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setDualColorSeekBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->updateOverlapPointForDualColor(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    const-string v2, "SecMediaVolumePreCtrl"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;->isEarDeviceStatusOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;->getEarProtectLevel()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->updateOverlapPointForDualColor(I)V

    const-string p0, "STREAM_MUSIC : mEarProtectLevel"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->updateOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo p0, "setDualColorSeekBar : Preference is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;->getEarProtectLevel()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public getAudioStream()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05003f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMuteIcon()I
    .locals 0

    const p0, 0x7f080df4

    return p0
.end method

.method public getNormalIcon()I
    .locals 0

    const p0, 0x7f080df5

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "media_volume"

    return-object p0
.end method

.method public getSliceEndItem(Landroid/content/Context;)Landroidx/slice/builders/SliceAction;
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->isSupportEndItem()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SecMediaVolumePreCtrl"

    if-nez v0, :cond_0

    const-string p0, "The slice doesn\'t support end item"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const-string v3, "MediaOutputIndWorker"

    const-string v5, "isDeviceBroadcasting: Bluetooth is not supported on this device"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_1
    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    :goto_1
    const/high16 v5, 0xc000000

    if-eqz v3, :cond_3

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_BROADCAST_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getActiveLocalMediaController()Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->mMediaDevice:Lcom/android/settingslib/media/MediaDevice;

    check-cast v3, Lcom/android/settingslib/media/BluetoothMediaDevice;

    iget-object v3, v3, Lcom/android/settingslib/media/BluetoothMediaDevice;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v3, :cond_4

    const-string p0, "The bluetooth device is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    const-string v1, "android.settings.MEDIA_BROADCAST_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings/media/MediaOutputIndicatorWorker;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "app_label"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v1, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_address"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_2
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->getBroadcastIcon(Landroid/content/Context;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, v4, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "media_volume"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->onPause()V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/asbase/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->getAudioStream()I

    move-result v1

    iget-object v0, v0, Lcom/android/settings/notification/AudioHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->updatePreferenceIcon(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->setDualColorSeekBar()V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->register(Z)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updatePreferenceIcon(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->isZenModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-lez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->getNormalIcon()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->getMuteIcon()I

    move-result p1

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    return-void
.end method

.method public useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

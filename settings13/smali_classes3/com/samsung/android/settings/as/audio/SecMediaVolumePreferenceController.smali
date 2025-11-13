.class public Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;
.super Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;
.source "SecMediaVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;,
        Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$H;
    }
.end annotation


# static fields
.field private static final ACTION_LAUNCH_BROADCAST_DIALOG:Ljava/lang/String; = "android.settings.MEDIA_BROADCAST_DIALOG"

.field private static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"

.field private static final TAG:Ljava/lang/String; = "SecMediaVolumePreCtrl"

.field private static final UPDATE_SEEKBAR_DELAY_MILLIS:J = 0xaL


# instance fields
.field private final mHandler:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$H;

.field private mMediaDevice:Lcom/android/settingslib/media/MediaDevice;

.field private final mReceiver:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;

.field private mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;)Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$H;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->mHandler:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$H;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetDualColorSeekBar(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->setDualColorSeekBar()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "media_volume"

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    new-instance p1, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$H;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$H;-><init>(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$H-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->mHandler:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$H;

    .line 279
    new-instance p1, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;-><init>(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getBroadcastIcon(Landroid/content/Context;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 169
    sget p0, Lcom/android/settingslib/R$drawable;->settings_input_antenna:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 172
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 173
    invoke-static {p0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getUri()Landroid/net/Uri;
    .locals 0

    .line 186
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_MEDIA_URI:Landroid/net/Uri;

    return-object p0
.end method

.method private getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/media/MediaOutputIndicatorWorker;

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->mWorker:Lcom/android/settings/media/MediaOutputIndicatorWorker;

    return-object p0
.end method

.method private isConnectedBLEDevice()Z
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->mMediaDevice:Lcom/android/settingslib/media/MediaDevice;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->isBLEDevice()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportEndItem()Z
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getActiveLocalMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->isConnectedBLEDevice()Z

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

    .line 230
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 231
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

    .line 236
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->isSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    if-eqz p0, :cond_1

    .line 241
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->updateOverlapPointForDualColor(I)V

    :cond_1
    return-void

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    const-string v2, "SecMediaVolumePreCtrl"

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->isEarDeviceStatusOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->getEarProtectLevel()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->updateOverlapPointForDualColor(I)V

    const-string p0, "STREAM_MUSIC : mEarProtectLevel"

    .line 251
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->updateOverlapPointForDualColor(I)V

    goto :goto_0

    :cond_4
    const-string p0, "setDualColorSeekBar : Preference is null"

    .line 256
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 215
    invoke-super {p0, p1}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/utils/SecAudioHelper;->getEarProtectLevel()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->setEarProtectLevel(I)V

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

    .line 76
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_media_volume:I

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

    .line 191
    const-class p0, Lcom/android/settings/media/MediaOutputIndicatorWorker;

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMuteIcon()I
    .locals 0

    .line 109
    sget p0, Lcom/android/settings/R$drawable;->tw_ic_audio_media_mute_mtrl:I

    return p0
.end method

.method public getNormalIcon()I
    .locals 0

    .line 197
    sget p0, Lcom/android/settings/R$drawable;->tw_ic_audio_media_note:I

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "media_volume"

    return-object p0
.end method

.method public getSliceEndItem(Landroid/content/Context;)Landroidx/slice/builders/SliceAction;
    .locals 6

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->isSupportEndItem()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SecMediaVolumePreCtrl"

    if-nez v0, :cond_0

    const-string p0, "The slice doesn\'t support end item"

    .line 132
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 136
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->isDeviceBroadcasting()Z

    move-result v3

    const/high16 v4, 0xa000000

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const-string v1, "com.android.systemui"

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_BROADCAST_DIALOG"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getActiveLocalMediaController()Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    .line 141
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-static {p1, v5, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->mMediaDevice:Lcom/android/settingslib/media/MediaDevice;

    check-cast v3, Lcom/android/settingslib/media/BluetoothMediaDevice;

    .line 148
    invoke-virtual {v3}, Lcom/android/settingslib/media/BluetoothMediaDevice;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_2

    const-string p0, "The bluetooth device is null"

    .line 150
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const-string v1, "android.settings.MEDIA_BROADCAST_DIALOG"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->getWorker()Lcom/android/settings/media/MediaOutputIndicatorWorker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/media/MediaOutputIndicatorWorker;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "app_label"

    .line 154
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_address"

    .line 156
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-static {p1, v5, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 163
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->getBroadcastIcon(Landroid/content/Context;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, v5, p0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "media_volume"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 209
    invoke-super {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->onPause()V

    .line 210
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 202
    invoke-super {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->onResume()V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mHelper:Lcom/samsung/android/settings/as/utils/SecAudioHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->getAudioStream()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->updatePreferenceIcon(I)V

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->setDualColorSeekBar()V

    .line 205
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->mReceiver:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->register(Z)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updatePreferenceIcon(I)V
    .locals 1

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->isZenModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-lez p1, :cond_0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->getNormalIcon()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->getMuteIcon()I

    move-result p1

    .line 226
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->mPreference:Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference;->showIcon(I)V

    return-void
.end method

.method public useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

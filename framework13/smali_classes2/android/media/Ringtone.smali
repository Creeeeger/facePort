.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Ringtone$MyOnCompletionListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOGD:Z = true

.field private static final greylist-max-o MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final greylist-max-o MEDIA_SELECTION:Ljava/lang/String; = "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Ringtone"

.field private static final greylist-max-o sActiveRingtones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/Ringtone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAllowRemote:Z

.field private greylist-max-o mAudioAttributes:Landroid/media/AudioAttributes;

.field private final greylist-max-o mAudioManager:Landroid/media/AudioManager;

.field private final greylist-max-o mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mCustomShaper:Landroid/media/VolumeShaper;

.field private blacklist mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

.field private blacklist mHapticGeneratorEnabled:Z

.field private greylist-max-o mIsLooping:Z

.field private blacklist mIsTelecomPackage:Z

.field private greylist-max-r mLocalPlayer:Landroid/media/MediaPlayer;

.field private blacklist mNeedFadeIn:Z

.field private final greylist-max-o mPlaybackSettingsLock:Ljava/lang/Object;

.field private final greylist-max-o mRemotePlayer:Landroid/media/IRingtonePlayer;

.field private final greylist-max-o mRemoteToken:Landroid/os/Binder;

.field private blacklist mStartPosition:I

.field private greylist-max-o mTitle:Ljava/lang/String;

.field private greylist mUri:Landroid/net/Uri;

.field private blacklist mUriStatus:Z

.field private greylist-max-o mVolume:F

.field private blacklist mVolumeShaper:Landroid/media/VolumeShaper;

.field private blacklist mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsActiveRingtones()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 63
    const-string v0, "_id"

    const-string/jumbo v1, "title"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowRemote"    # Z

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/media/Ringtone$MyOnCompletionListener;

    invoke-direct {v0, p0}, Landroid/media/Ringtone$MyOnCompletionListener;-><init>(Landroid/media/Ringtone;)V

    iput-object v0, p0, Landroid/media/Ringtone;->mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

    .line 97
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 98
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 99
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 103
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/media/Ringtone;->mVolume:F

    .line 104
    iput-boolean v0, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    .line 105
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    .line 669
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/Ringtone;->mNeedFadeIn:Z

    .line 673
    iput v0, p0, Landroid/media/Ringtone;->mStartPosition:I

    .line 110
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 111
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 112
    iput-boolean p2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    .line 113
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    .line 114
    if-eqz p2, :cond_1

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :cond_1
    iput-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    .line 119
    invoke-direct {p0}, Landroid/media/Ringtone;->setupCustomRoutine()V

    .line 120
    return-void
.end method

.method private blacklist addTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 780
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 783
    :cond_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 784
    return-void

    .line 781
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o applyPlaybackProperties_sync()V
    .locals 6

    .line 249
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 250
    iget v1, p0, Landroid/media/Ringtone;->mVolume:F

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 251
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Landroid/media/Ringtone;->mIsLooping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 252
    iget-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/HapticGenerator;->create(I)Landroid/media/audiofx/HapticGenerator;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    .line 255
    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    if-eqz v0, :cond_3

    .line 256
    iget-boolean v1, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    invoke-virtual {v0, v1}, Landroid/media/audiofx/HapticGenerator;->setEnabled(Z)I

    goto :goto_1

    .line 258
    :cond_1
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    const-string v1, "Ringtone"

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_2

    .line 260
    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget v3, p0, Landroid/media/Ringtone;->mVolume:F

    iget-boolean v4, p0, Landroid/media/Ringtone;->mIsLooping:Z

    iget-boolean v5, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/media/IRingtonePlayer;->setPlaybackProperties(Landroid/os/IBinder;FZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Problem setting playback properties: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 266
    :cond_2
    const-string v0, "Neither local nor remote player available when applying playback properties"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_3
    :goto_1
    return-void
.end method

.method private static blacklist changeThemeTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 805
    const/4 v0, 0x0

    .line 806
    .local v0, "themeTitle":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/RingtoneManager;->isInternalRingtoneUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    const v1, 0x1040c2b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 809
    :cond_0
    return-object v0
.end method

.method private greylist-max-o destroyLocalPlayer()V
    .locals 3

    .line 527
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0}, Landroid/media/audiofx/HapticGenerator;->release()V

    .line 530
    iput-object v1, p0, Landroid/media/Ringtone;->mHapticGenerator:Landroid/media/audiofx/HapticGenerator;

    .line 533
    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 535
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 536
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 537
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 538
    iput-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 539
    iput-object v1, p0, Landroid/media/Ringtone;->mVolumeShaper:Landroid/media/VolumeShaper;

    .line 540
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    monitor-enter v0

    .line 541
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 542
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 544
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist getHighlightOffset(Landroid/net/Uri;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 751
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 752
    .local v0, "type":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 753
    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 754
    if-nez p1, :cond_0

    return v1

    .line 757
    :cond_0
    :try_start_0
    const-string v2, "highlight_offset"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 758
    .local v2, "highlightOffset":Ljava/lang/String;
    const-string v3, "Ringtone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "highlight offset is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 761
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 763
    .end local v2    # "highlightOffset":Ljava/lang/String;
    :catch_0
    move-exception v2

    :cond_1
    nop

    .line 764
    return v1
.end method

.method public static greylist-max-o getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z
    .param p3, "allowRemote"    # Z

    .line 791
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTitle(Landroid/content/Context;Landroid/net/Uri;ZZZ)Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z
    .param p3, "allowRemote"    # Z
    .param p4, "withThemeTitle"    # Z

    .line 288
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 290
    .local v11, "res":Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 292
    .local v12, "title":Ljava/lang/String;
    const v13, 0x1040bca

    if-eqz v8, :cond_d

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 295
    .local v14, "authority":Ljava/lang/String;
    const-string/jumbo v0, "settings"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v15, 0x1

    if-eqz v0, :cond_0

    .line 296
    if-eqz p2, :cond_c

    .line 297
    nop

    .line 298
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 297
    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 299
    .local v0, "actualUri":Landroid/net/Uri;
    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v9, v10}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZZ)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "actualTitle":Ljava/lang/String;
    const v4, 0x1040bc5

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v3, v5, v2

    .line 303
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 305
    .end local v0    # "actualUri":Landroid/net/Uri;
    .end local v3    # "actualTitle":Ljava/lang/String;
    goto/16 :goto_a

    .line 307
    :cond_0
    const/16 v16, 0x0

    .line 309
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 310
    if-eqz v9, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "mime_type LIKE \'audio/%\' OR mime_type IN (\'application/ogg\', \'application/x-flac\')"

    :goto_0
    move-object v5, v0

    .line 311
    .local v5, "mediaSelection":Ljava/lang/String;
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    if-eqz v0, :cond_2

    .line 312
    sget-object v0, Lcom/samsung/android/audio/SoundTheme;->SOUND_THEME_MEDIA_COLUMNS:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    :goto_1
    move-object v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 311
    move-object v2, v11

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v0

    .line 314
    .end local v16    # "cursor":Landroid/database/Cursor;
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_6

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v15, :cond_6

    .line 315
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 316
    invoke-static {v2}, Landroid/media/Ringtone;->isOpenThemeRingtone(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    invoke-static/range {p0 .. p1}, Landroid/media/Ringtone;->changeThemeTitle(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    move-object/from16 v16, v2

    goto :goto_2

    .line 318
    :cond_3
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    if-eqz v0, :cond_4

    if-eqz v10, :cond_4

    .line 319
    invoke-static {v1, v2}, Lcom/samsung/android/audio/SoundTheme;->getTitleIncludingTheme(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    move-object/from16 v16, v2

    goto :goto_2

    .line 322
    :cond_4
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    if-eqz v2, :cond_5

    .line 347
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_5
    const/4 v2, 0x0

    .line 322
    return-object v0

    .line 346
    .end local v5    # "mediaSelection":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_7

    .line 341
    :catch_0
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_4

    .line 327
    :catch_1
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_5

    .line 346
    :cond_6
    move-object/from16 v16, v2

    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :cond_7
    :goto_2
    if-eqz v16, :cond_8

    .line 347
    :goto_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_8
    const/4 v0, 0x0

    .line 350
    .end local v16    # "cursor":Landroid/database/Cursor;
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_9

    .line 346
    .end local v0    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 341
    :catch_2
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_4
    :try_start_2
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    .line 343
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 346
    .end local v0    # "e":Ljava/lang/RuntimeException;
    if-eqz v16, :cond_8

    .line 347
    goto :goto_3

    .line 327
    :catch_3
    move-exception v0

    :goto_5
    move-object v2, v0

    .line 328
    .local v2, "e":Ljava/lang/SecurityException;
    const/4 v0, 0x0

    .line 329
    .local v0, "mRemotePlayer":Landroid/media/IRingtonePlayer;
    if-eqz v9, :cond_9

    .line 330
    const-string v3, "audio"

    .line 331
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 332
    .local v3, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v4

    move-object v3, v0

    goto :goto_6

    .line 329
    .end local v3    # "audioManager":Landroid/media/AudioManager;
    :cond_9
    move-object v3, v0

    .line 334
    .end local v0    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    .local v3, "mRemotePlayer":Landroid/media/IRingtonePlayer;
    :goto_6
    if-eqz v3, :cond_b

    .line 336
    :try_start_3
    invoke-interface {v3, v8}, Landroid/media/IRingtonePlayer;->getTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v12, v0

    .line 338
    goto :goto_8

    .line 346
    .end local v2    # "e":Ljava/lang/SecurityException;
    .end local v3    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    :goto_7
    if-eqz v16, :cond_a

    .line 347
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_a
    const/4 v2, 0x0

    .line 350
    .end local v16    # "cursor":Landroid/database/Cursor;
    .local v2, "cursor":Landroid/database/Cursor;
    throw v0

    .line 337
    .local v2, "e":Ljava/lang/SecurityException;
    .restart local v3    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :catch_4
    move-exception v0

    .line 346
    .end local v2    # "e":Ljava/lang/SecurityException;
    .end local v3    # "mRemotePlayer":Landroid/media/IRingtonePlayer;
    :cond_b
    :goto_8
    if-eqz v16, :cond_8

    .line 347
    goto :goto_3

    .line 351
    .end local v16    # "cursor":Landroid/database/Cursor;
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_9
    if-nez v12, :cond_c

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 355
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v14    # "authority":Ljava/lang/String;
    :cond_c
    :goto_a
    goto :goto_b

    .line 356
    :cond_d
    const v0, 0x1040c2d

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 359
    :goto_b
    if-nez v12, :cond_e

    .line 360
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 361
    if-nez v12, :cond_e

    .line 362
    const-string v12, ""

    .line 366
    :cond_e
    return-object v12
.end method

.method public static blacklist getTitleWithSoundTheme(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "followSettingsUri"    # Z
    .param p3, "allowRemote"    # Z

    .line 799
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isOpenThemeRingtone(Landroid/database/Cursor;)Z
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 813
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, "title":Ljava/lang/String;
    const-string v2, "_display_name"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 815
    .local v2, "displayName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/media/RingtoneManager;->PREFIX_OPEN_THEME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 816
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroid/media/RingtoneManager;->PREFIX_OPEN_THEME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 815
    :goto_0
    return v0
.end method

.method private blacklist isValidUri(Landroid/net/Uri;)Z
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .line 717
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 718
    return v0

    .line 721
    :cond_0
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    .line 722
    .local v1, "type":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 723
    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 726
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v8, 0x1

    if-eqz v2, :cond_2

    .line 727
    return v8

    .line 731
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 732
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .local v2, "cs":Landroid/database/Cursor;
    if-eqz v2, :cond_5

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    .line 734
    nop

    .line 736
    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 734
    :cond_3
    return v8

    .line 731
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "type":I
    .end local p0    # "this":Landroid/media/Ringtone;
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_0
    throw v3

    .line 736
    .restart local v1    # "type":I
    .restart local p0    # "this":Landroid/media/Ringtone;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .end local v2    # "cs":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 737
    :cond_6
    :goto_1
    return v0
.end method

.method private greylist-max-o playFallbackRingtone()Z
    .locals 10

    .line 582
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 583
    .local v0, "streamType":I
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 584
    return v2

    .line 586
    :cond_0
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    .line 587
    .local v1, "ringtoneType":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 588
    invoke-static {v3, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    .line 589
    const-string v3, "Ringtone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not playing fallback for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return v2

    .line 594
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1100006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 597
    .local v3, "afd":Landroid/content/res/AssetFileDescriptor;
    iget-object v4, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    .line 599
    const-string v4, "Ringtone"

    const-string v5, "play playFallbackRingtone: fallbacknoti"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v4, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1100005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    move-object v3, v4

    .line 604
    :cond_2
    if-nez v3, :cond_3

    .line 605
    const-string v4, "Ringtone"

    const-string v5, "Could not load fallback ringtone"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return v2

    .line 608
    :cond_3
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 609
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 610
    iget-object v4, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 612
    :cond_4
    iget-object v4, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 613
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    .line 614
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v8

    .line 612
    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 616
    :goto_0
    iget-object v4, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 617
    iget-object v4, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :try_start_1
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 619
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    :try_start_2
    iget-object v4, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz v4, :cond_5

    .line 621
    iget-object v5, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v4}, Landroid/media/MediaPlayer;->createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;

    move-result-object v4

    iput-object v4, p0, Landroid/media/Ringtone;->mVolumeShaper:Landroid/media/VolumeShaper;

    .line 623
    :cond_5
    iget-object v4, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 624
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    .line 625
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 633
    .end local v3    # "afd":Landroid/content/res/AssetFileDescriptor;
    nop

    .line 634
    const/4 v2, 0x1

    return v2

    .line 619
    .restart local v3    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "streamType":I
    .end local v1    # "ringtoneType":I
    .end local p0    # "this":Landroid/media/Ringtone;
    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 630
    .end local v3    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v0    # "streamType":I
    .restart local v1    # "ringtoneType":I
    .restart local p0    # "this":Landroid/media/Ringtone;
    :catch_0
    move-exception v3

    .line 631
    .local v3, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "Ringtone"

    const-string v5, "Fallback ringtone does not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return v2

    .line 626
    .end local v3    # "nfe":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    .line 627
    .local v3, "ioe":Ljava/io/IOException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 628
    const-string v4, "Ringtone"

    const-string v5, "Failed to open fallback ringtone"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return v2
.end method

.method private blacklist setupCustomRoutine()V
    .locals 3

    .line 677
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.android.server.telecom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/Ringtone;->mIsTelecomPackage:Z

    .line 679
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/Ringtone;->mUriStatus:Z

    .line 683
    const-string v2, "com.android.providers.media"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 685
    :cond_0
    iput-boolean v1, p0, Landroid/media/Ringtone;->mNeedFadeIn:Z

    .line 688
    :cond_1
    return-void
.end method

.method private greylist-max-o startLocalPlayer()V
    .locals 2

    .line 547
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 548
    return-void

    .line 550
    :cond_0
    sget-object v0, Landroid/media/Ringtone;->sActiveRingtones:Ljava/util/ArrayList;

    monitor-enter v0

    .line 551
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mCompletionListener:Landroid/media/Ringtone$MyOnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 554
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 555
    iget-object v0, p0, Landroid/media/Ringtone;->mVolumeShaper:Landroid/media/VolumeShaper;

    if-eqz v0, :cond_1

    .line 556
    sget-object v1, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper;->apply(Landroid/media/VolumeShaper$Operation;)V

    .line 558
    :cond_1
    return-void

    .line 552
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist fadeinRingtone()V
    .locals 3

    .line 858
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Landroid/media/Ringtone;->mCustomShaper:Landroid/media/VolumeShaper;

    if-eqz v0, :cond_1

    .line 860
    sget-object v1, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper;->apply(Landroid/media/VolumeShaper$Operation;)V

    goto :goto_0

    .line 862
    :cond_0
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_1

    .line 864
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/media/IRingtonePlayer;->fadeinRingtone(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Ringtone"

    const-string v2, "fadein error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 869
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public greylist fadeoutRingtone(I)V
    .locals 1
    .param p1, "delay"    # I

    .line 853
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/Ringtone;->fadeoutRingtone(IF)V

    .line 854
    return-void
.end method

.method public blacklist fadeoutRingtone(IF)V
    .locals 6
    .param p1, "delay"    # I
    .param p2, "minVolume"    # F

    .line 824
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    new-array v3, v1, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    const/4 v4, 0x1

    aput p2, v3, v4

    .line 826
    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 827
    invoke-virtual {v0, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 828
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    int-to-long v1, p1

    .line 829
    invoke-virtual {v0, v1, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 830
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    .line 831
    .local v0, "FADEOUT_VSHAPE":Landroid/media/VolumeShaper$Configuration;
    new-instance v1, Landroid/media/VolumeShaper$Operation$Builder;

    sget-object v2, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    invoke-direct {v1, v2}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 833
    invoke-virtual {v1}, Landroid/media/VolumeShaper$Operation$Builder;->createIfNeeded()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v1

    .line 834
    invoke-virtual {v1}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v1

    .line 836
    .local v1, "PLAY_CREATE_IF_NEEDED":Landroid/media/VolumeShaper$Operation;
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 837
    iget-object v2, p0, Landroid/media/Ringtone;->mCustomShaper:Landroid/media/VolumeShaper;

    if-eqz v2, :cond_0

    .line 838
    invoke-virtual {v2}, Landroid/media/VolumeShaper;->close()V

    .line 840
    :cond_0
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;

    move-result-object v2

    iput-object v2, p0, Landroid/media/Ringtone;->mCustomShaper:Landroid/media/VolumeShaper;

    .line 841
    invoke-virtual {v2, v1}, Landroid/media/VolumeShaper;->apply(Landroid/media/VolumeShaper$Operation;)V

    goto :goto_0

    .line 842
    :cond_1
    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v2, :cond_2

    .line 844
    :try_start_0
    iget-object v3, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v2, v3, p1, p2}, Landroid/media/IRingtonePlayer;->fadeoutRingtone(Landroid/os/IBinder;IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    goto :goto_0

    .line 845
    :catch_0
    move-exception v2

    .line 846
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Ringtone"

    const-string v4, "fadeout error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected whitelist test-api finalize()V
    .locals 1

    .line 643
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 646
    :cond_0
    return-void
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .line 169
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public whitelist getStreamType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public whitelist getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 278
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 279
    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    invoke-static {p1, v0, v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getUri()Landroid/net/Uri;
    .locals 1

    .line 452
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getVolume()F
    .locals 2

    .line 212
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget v1, p0, Landroid/media/Ringtone;->mVolume:F

    monitor-exit v0

    return v1

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isHapticGeneratorEnabled()Z
    .locals 2

    .line 240
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-boolean v1, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    monitor-exit v0

    return v1

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isLooping()Z
    .locals 2

    .line 188
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-boolean v1, p0, Landroid/media/Ringtone;->mIsLooping:Z

    monitor-exit v0

    return v1

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isPlaying()Z
    .locals 5

    .line 566
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    .line 568
    :cond_0
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    const/4 v1, 0x0

    const-string v2, "Ringtone"

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_1

    .line 570
    :try_start_0
    iget-object v3, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v0, v3}, Landroid/media/IRingtonePlayer;->isPlaying(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem checking ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return v1

    .line 576
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v0, "Neither local nor remote playback available"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return v1
.end method

.method public whitelist play()V
    .locals 8

    .line 459
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    .line 460
    iget v0, p0, Landroid/media/Ringtone;->mStartPosition:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 461
    const-string v0, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play from highlight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/Ringtone;->mStartPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Landroid/media/Ringtone;->mStartPosition:I

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 463
    iput v1, p0, Landroid/media/Ringtone;->mStartPosition:I

    .line 468
    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 469
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->areHapticChannelsMuted()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/media/Ringtone;->mVolume:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    move v0, v1

    .line 472
    .local v0, "isHapticOnly":Z
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHapticOnly : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / areHapticChannelMuted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 473
    invoke-virtual {v3}, Landroid/media/AudioAttributes;->areHapticChannelsMuted()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / mVolume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/Ringtone;->mVolume:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_ACH_RINGTONE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 477
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v1

    const-string v2, "RINGTONE_HAPTIC"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    const-string v1, "Ringtone"

    const-string v2, "Play haptic tag ringtone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    goto :goto_1

    .line 480
    :cond_2
    invoke-virtual {p0}, Landroid/media/Ringtone;->getStreamType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 481
    const-string v1, "Ringtone"

    const-string v2, "Play music ringtone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    goto :goto_1

    .line 483
    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 484
    invoke-static {v2}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v2

    .line 483
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_5

    .line 485
    :cond_4
    const-string v1, "Ringtone"

    const-string v2, "Play ringtone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-direct {p0}, Landroid/media/Ringtone;->startLocalPlayer()V

    .line 488
    .end local v0    # "isHapticOnly":Z
    :cond_5
    :goto_1
    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 489
    invoke-virtual {v0}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object v0

    .line 492
    .local v0, "canonicalUri":Landroid/net/Uri;
    iget-object v1, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_0
    iget-boolean v6, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 494
    .local v6, "looping":Z
    iget v5, p0, Landroid/media/Ringtone;->mVolume:F

    .line 495
    .local v5, "volume":F
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :try_start_1
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget-object v4, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget-object v7, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    move-object v3, v0

    invoke-interface/range {v1 .. v7}, Landroid/media/IRingtonePlayer;->playWithVolumeShaping(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZLandroid/media/VolumeShaper$Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 503
    goto :goto_2

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v2

    if-nez v2, :cond_7

    .line 501
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem playing ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v0    # "canonicalUri":Landroid/net/Uri;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "volume":F
    .end local v6    # "looping":Z
    :cond_7
    :goto_2
    goto :goto_3

    .line 495
    .restart local v0    # "canonicalUri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 505
    .end local v0    # "canonicalUri":Landroid/net/Uri;
    :cond_8
    invoke-direct {p0}, Landroid/media/Ringtone;->playFallbackRingtone()Z

    move-result v0

    if-nez v0, :cond_9

    .line 506
    const-string v0, "Ringtone"

    const-string v1, "Neither local nor remote playback available"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_9
    :goto_3
    return-void
.end method

.method public whitelist semIsUriValid()Z
    .locals 1

    .line 747
    iget-boolean v0, p0, Landroid/media/Ringtone;->mUriStatus:Z

    return v0
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 154
    if-eqz p1, :cond_0

    .line 157
    iput-object p1, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 160
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {p0, v0, v1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)V

    .line 161
    return-void

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null AudioAttributes for Ringtone"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHapticGeneratorEnabled(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .line 225
    invoke-static {}, Landroid/media/audiofx/HapticGenerator;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iput-boolean p1, p0, Landroid/media/Ringtone;->mHapticGeneratorEnabled:Z

    .line 230
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 231
    monitor-exit v0

    .line 232
    const/4 v0, 0x1

    return v0

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setLooping(Z)V
    .locals 2
    .param p1, "looping"    # Z

    .line 177
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iput-boolean p1, p0, Landroid/media/Ringtone;->mIsLooping:Z

    .line 179
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 180
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setSecForSeek(I)V
    .locals 0
    .param p1, "seek"    # I

    .line 699
    iput p1, p0, Landroid/media/Ringtone;->mStartPosition:I

    .line 700
    return-void
.end method

.method public whitelist setStreamType(I)V
    .locals 2
    .param p1, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    const-string v0, "Ringtone"

    const-string/jumbo v1, "setStreamType()"

    invoke-static {p1, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 132
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 134
    return-void
.end method

.method greylist-max-o setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 638
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 639
    return-void
.end method

.method public greylist setUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)V

    .line 379
    return-void
.end method

.method public blacklist setUri(Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "volumeShaperConfig"    # Landroid/media/VolumeShaper$Configuration;

    .line 389
    iput-object p2, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    .line 390
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 392
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 393
    if-nez p1, :cond_0

    .line 394
    return-void

    .line 398
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/Ringtone;->getHighlightOffset(Landroid/net/Uri;)I

    move-result v0

    .line 399
    .local v0, "highlightOffset":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 400
    iput v0, p0, Landroid/media/Ringtone;->mStartPosition:I

    .line 403
    .end local v0    # "highlightOffset":I
    :cond_1
    iget-boolean v0, p0, Landroid/media/Ringtone;->mIsTelecomPackage:Z

    if-eqz v0, :cond_2

    .line 404
    const-string v0, "AUDIO_STREAM_RING"

    invoke-direct {p0, v0}, Landroid/media/Ringtone;->addTag(Ljava/lang/String;)V

    .line 406
    :cond_2
    iget-boolean v0, p0, Landroid/media/Ringtone;->mNeedFadeIn:Z

    if-nez v0, :cond_3

    .line 407
    const-string v0, "NOFADE"

    invoke-direct {p0, v0}, Landroid/media/Ringtone;->addTag(Ljava/lang/String;)V

    .line 412
    :cond_3
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 414
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 415
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 416
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :try_start_1
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 418
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    :try_start_2
    iget-object v0, p0, Landroid/media/Ringtone;->mVolumeShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz v0, :cond_4

    .line 420
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mVolumeShaper:Landroid/media/VolumeShaper;

    .line 422
    :cond_4
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 424
    iput-boolean v1, p0, Landroid/media/Ringtone;->mUriStatus:Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 438
    goto :goto_0

    .line 418
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Landroid/media/Ringtone;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "volumeShaperConfig":Landroid/media/VolumeShaper$Configuration;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 426
    .restart local p0    # "this":Landroid/media/Ringtone;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "volumeShaperConfig":Landroid/media/VolumeShaper$Configuration;
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 428
    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v2, :cond_5

    .line 429
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote playback not allowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_5
    iget-boolean v2, p0, Landroid/media/Ringtone;->mIsTelecomPackage:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v2}, Landroid/media/Ringtone;->isValidUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 433
    iput-boolean v1, p0, Landroid/media/Ringtone;->mUriStatus:Z

    goto :goto_0

    .line 435
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/Ringtone;->mUriStatus:Z

    .line 441
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    .line 442
    const-string v0, "Ringtone"

    const-string v1, "Successfully created local player"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 444
    :cond_7
    const-string v0, "Ringtone"

    const-string v1, "Problem opening; delegating to remote player"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_1
    return-void
.end method

.method public whitelist setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .line 199
    iget-object v0, p0, Landroid/media/Ringtone;->mPlaybackSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 201
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 202
    :cond_1
    :try_start_0
    iput p1, p0, Landroid/media/Ringtone;->mVolume:F

    .line 203
    invoke-direct {p0}, Landroid/media/Ringtone;->applyPlaybackProperties_sync()V

    .line 204
    monitor-exit v0

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setVolume(FF)V
    .locals 1
    .param p1, "leftVol"    # F
    .param p2, "rightVol"    # F

    .line 708
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 711
    :cond_0
    return-void
.end method

.method public whitelist stop()V
    .locals 3

    .line 515
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 516
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    goto :goto_0

    .line 517
    :cond_0
    iget-boolean v0, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    if-eqz v0, :cond_1

    .line 519
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem stopping ringtone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ringtone"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public greylist turnOffFadeIn()V
    .locals 1

    .line 774
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Ringtone;->mNeedFadeIn:Z

    .line 775
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 776
    return-void
.end method

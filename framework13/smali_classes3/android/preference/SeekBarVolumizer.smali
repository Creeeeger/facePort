.class public Landroid/preference/SeekBarVolumizer;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SeekBarVolumizer$VolumeHandler;,
        Landroid/preference/SeekBarVolumizer$Receiver;,
        Landroid/preference/SeekBarVolumizer$Observer;,
        Landroid/preference/SeekBarVolumizer$H;,
        Landroid/preference/SeekBarVolumizer$Callback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o CHECK_RINGTONE_PLAYBACK_DELAY_MS:I = 0x3e8

.field private static final blacklist DURATION_TO_START_DELAYING:J

.field private static final blacklist FINEVOLUME_MAX_INDEX:I = 0x96

.field private static final blacklist MSG_GROUP_VOLUME_CHANGED:I = 0x1

.field private static final greylist-max-o MSG_INIT_SAMPLE:I = 0x3

.field private static final greylist-max-o MSG_SET_STREAM_VOLUME:I = 0x0

.field private static final greylist-max-o MSG_START_SAMPLE:I = 0x1

.field private static final greylist-max-o MSG_STOP_SAMPLE:I = 0x2

.field private static final blacklist SET_STREAM_VOLUME_DELAY_MS:J

.field private static final blacklist START_SAMPLE_DELAY_MS:J

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SeekBarVolumizer"

.field private static blacklist sStopVolumeTime:J


# instance fields
.field private final blacklist SIM_CHANGED_ACTION:Ljava/lang/String;

.field private final blacklist VOLUME_CHANGED_ACTION:Ljava/lang/String;

.field private blacklist isRingerUpdatedToAudio:Z

.field private greylist-max-o mAffectedByRingerMode:Z

.field private greylist-max-o mAllowAlarms:Z

.field private greylist-max-o mAllowMedia:Z

.field private greylist-max-o mAllowRinger:Z

.field private blacklist mAllowSystem:Z

.field private blacklist mAttributes:Landroid/media/AudioAttributes;

.field private final blacklist mAudioManager:Landroid/media/AudioManager;

.field private final greylist-max-o mCallback:Landroid/preference/SeekBarVolumizer$Callback;

.field private final greylist mContext:Landroid/content/Context;

.field private blacklist mCurrentSimSlot:I

.field private greylist-max-o mDefaultUri:Landroid/net/Uri;

.field private blacklist mEditMode:I

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mLastAudibleStreamVolume:I

.field private greylist mLastProgress:I

.field private blacklist mLastWaitingToneVolume:I

.field private final greylist-max-o mMaxStreamVolume:I

.field private greylist-max-o mMuted:Z

.field private final greylist-max-o mNotificationManager:Landroid/app/NotificationManager;

.field private greylist-max-o mNotificationOrRing:Z

.field private greylist-max-o mNotificationPolicy:Landroid/app/NotificationManager$Policy;

.field private blacklist mOriginalLastAudibleStreamVolume:I

.field private blacklist mOriginalNotificationVolume:I

.field private blacklist mOriginalRingerMode:I

.field private greylist mOriginalStreamVolume:I

.field private blacklist mOriginalSystemVolume:I

.field private blacklist mPlaySample:Z

.field private blacklist mProfileMode:I

.field private final greylist-max-o mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

.field private greylist-max-o mRingerMode:I

.field private greylist mRingtone:Landroid/media/Ringtone;

.field private greylist mSeekBar:Landroid/widget/SeekBar;

.field private final greylist mStreamType:I

.field private blacklist mSystemSampleStarted:Z

.field private blacklist mTelecomService:Lcom/android/internal/telecom/ITelecomService;

.field private blacklist mToneGenerator:Landroid/media/ToneGenerator;

.field private final greylist-max-o mUiHandler:Landroid/preference/SeekBarVolumizer$H;

.field private blacklist mVibrator:Landroid/os/Vibrator;

.field private blacklist mVoiceCapable:Z

.field private greylist-max-o mVolumeBeforeMute:I

.field private final blacklist mVolumeGroupCallback:Landroid/media/AudioManager$VolumeGroupCallback;

.field private blacklist mVolumeGroupId:I

.field private final blacklist mVolumeHandler:Landroid/os/Handler;

.field private greylist-max-o mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

.field private greylist-max-o mZenMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetisRingerUpdatedToAudio(Landroid/preference/SeekBarVolumizer;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioManager(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;
    .locals 0

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultUri(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/preference/SeekBarVolumizer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastAudibleStreamVolume(Landroid/preference/SeekBarVolumizer;)I
    .locals 0

    iget p0, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMuted(Landroid/preference/SeekBarVolumizer;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationManager(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationOrRing(Landroid/preference/SeekBarVolumizer;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationPolicy(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager$Policy;
    .locals 0

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRingtone(Landroid/preference/SeekBarVolumizer;)Landroid/media/Ringtone;
    .locals 0

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeekBar(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I
    .locals 0

    iget p0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUiHandler(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;
    .locals 0

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeGroupId(Landroid/preference/SeekBarVolumizer;)I
    .locals 0

    iget p0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeGroupId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeHandler(Landroid/preference/SeekBarVolumizer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowAlarms(Landroid/preference/SeekBarVolumizer;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer;->mAllowAlarms:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowMedia(Landroid/preference/SeekBarVolumizer;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer;->mAllowMedia:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAllowRinger(Landroid/preference/SeekBarVolumizer;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer;->mAllowRinger:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDefaultUri(Landroid/preference/SeekBarVolumizer;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastAudibleStreamVolume(Landroid/preference/SeekBarVolumizer;I)V
    .locals 0

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastProgress(Landroid/preference/SeekBarVolumizer;I)V
    .locals 0

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMuted(Landroid/preference/SeekBarVolumizer;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNotificationPolicy(Landroid/preference/SeekBarVolumizer;Landroid/app/NotificationManager$Policy;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRingerMode(Landroid/preference/SeekBarVolumizer;I)V
    .locals 0

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmZenMode(Landroid/preference/SeekBarVolumizer;I)V
    .locals 0

    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDefaultNotificationUri(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultNotificationUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDefaultRingtoneUri(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;
    .locals 0

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultRingtoneUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNotificationOrRing(Landroid/preference/SeekBarVolumizer;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misZenMuted(Landroid/preference/SeekBarVolumizer;)Z
    .locals 0

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->updateSlider()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 101
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/preference/SeekBarVolumizer;->sStopVolumeTime:J

    .line 166
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Landroid/preference/SeekBarVolumizer;->SET_STREAM_VOLUME_DELAY_MS:J

    .line 167
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/preference/SeekBarVolumizer;->START_SAMPLE_DELAY_MS:J

    .line 168
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/preference/SeekBarVolumizer;->DURATION_TO_START_DELAYING:J

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Landroid/preference/SeekBarVolumizer$Callback;

    .line 193
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;Z)V

    .line 194
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Landroid/preference/SeekBarVolumizer$Callback;
    .param p5, "playSample"    # Z

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/preference/SeekBarVolumizer$VolumeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/preference/SeekBarVolumizer$VolumeHandler;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$VolumeHandler-IA;)V

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Landroid/preference/SeekBarVolumizer$1;

    invoke-direct {v0, p0}, Landroid/preference/SeekBarVolumizer$1;-><init>(Landroid/preference/SeekBarVolumizer;)V

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeGroupCallback:Landroid/media/AudioManager$VolumeGroupCallback;

    .line 122
    new-instance v0, Landroid/preference/SeekBarVolumizer$H;

    invoke-direct {v0, p0, v1}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$H-IA;)V

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    .line 132
    new-instance v0, Landroid/preference/SeekBarVolumizer$Receiver;

    invoke-direct {v0, p0, v1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$Receiver-IA;)V

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 154
    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 158
    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    .line 159
    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    .line 176
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    .line 177
    const-string v1, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->SIM_CHANGED_ACTION:Ljava/lang/String;

    .line 202
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 203
    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 204
    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 205
    const-string/jumbo v3, "vibrator"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    .line 206
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isVoiceCapable()Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    .line 207
    invoke-virtual {v2}, Landroid/app/NotificationManager;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    .line 208
    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Landroid/preference/SeekBarVolumizer;->mAllowAlarms:Z

    .line 210
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Landroid/preference/SeekBarVolumizer;->mAllowMedia:Z

    .line 212
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v3

    xor-int/2addr v3, v0

    iput-boolean v3, p0, Landroid/preference/SeekBarVolumizer;->mAllowRinger:Z

    .line 214
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mNotificationPolicy:Landroid/app/NotificationManager$Policy;

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    move v4, v0

    :cond_2
    iput-boolean v4, p0, Landroid/preference/SeekBarVolumizer;->mAllowSystem:Z

    .line 217
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 218
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 219
    const/4 v3, 0x3

    if-ne p2, v3, :cond_3

    .line 220
    const/16 v4, 0x5dc

    iput v4, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    .line 221
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v3

    iput v3, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    goto :goto_2

    .line 223
    :cond_3
    invoke-virtual {v1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iput v3, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    .line 224
    invoke-virtual {v1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 226
    :goto_2
    invoke-virtual {v1, p2}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/SeekBarVolumizer;->mAffectedByRingerMode:Z

    .line 227
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    .line 228
    if-eqz v3, :cond_4

    .line 229
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v3

    iput v3, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    .line 231
    :cond_4
    invoke-virtual {v2}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v2

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    .line 233
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->hasAudioProductStrategies()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 234
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->getVolumeGroupIdForLegacyStreamType(I)I

    move-result v2

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeGroupId:I

    .line 235
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAttributes:Landroid/media/AudioAttributes;

    .line 239
    :cond_5
    iput-object p4, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volume_waiting_tone"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    .line 241
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    .line 242
    invoke-virtual {v1, p2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    .line 243
    invoke-virtual {v1, p2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    .line 244
    iput-boolean p5, p0, Landroid/preference/SeekBarVolumizer;->mPlaySample:Z

    .line 245
    if-eqz p4, :cond_6

    .line 246
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    move-result v3

    invoke-interface {p4, v2, v3}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(ZZ)V

    .line 248
    :cond_6
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    .line 249
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v3

    iput v3, p0, Landroid/preference/SeekBarVolumizer;->mCurrentSimSlot:I

    .line 251
    const/4 v3, 0x5

    if-nez p3, :cond_9

    .line 252
    if-ne p2, v4, :cond_7

    .line 253
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultRingtoneUri()Landroid/net/Uri;

    move-result-object p3

    goto :goto_3

    .line 254
    :cond_7
    if-ne p2, v3, :cond_8

    .line 255
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->getDefaultNotificationUri()Landroid/net/Uri;

    move-result-object p3

    goto :goto_3

    .line 257
    :cond_8
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 260
    :cond_9
    :goto_3
    iput-object p3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 262
    if-ne p2, v3, :cond_a

    iget-boolean v3, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v3, :cond_a

    .line 263
    invoke-virtual {v1, p2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    goto :goto_4

    .line 264
    :cond_a
    if-ne p2, v0, :cond_b

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v0, :cond_b

    .line 265
    invoke-virtual {v1, p2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalSystemVolume:I

    goto :goto_4

    .line 266
    :cond_b
    if-ne p2, v4, :cond_c

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    if-eqz v0, :cond_c

    .line 267
    invoke-virtual {v1, p2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    .line 269
    :cond_c
    :goto_4
    return-void
.end method

.method private blacklist colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .line 306
    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    .line 307
    .local v1, "EMPTY":[[I
    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v0, v0, [I

    aput p1, v0, v2

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private blacklist getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;
    .locals 3
    .param p1, "streamType"    # I

    .line 294
    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 295
    .local v1, "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v2

    .line 296
    .local v2, "aa":Landroid/media/AudioAttributes;
    if-eqz v2, :cond_0

    .line 297
    return-object v2

    .line 299
    .end local v1    # "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    .end local v2    # "aa":Landroid/media/AudioAttributes;
    :cond_0
    goto :goto_0

    .line 300
    :cond_1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 301
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 300
    return-object v0
.end method

.method private blacklist getDefaultNotificationUri()Landroid/net/Uri;
    .locals 2

    .line 319
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mCurrentSimSlot:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 320
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    return-object v0

    .line 322
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private blacklist getDefaultRingtoneUri()Landroid/net/Uri;
    .locals 2

    .line 311
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mCurrentSimSlot:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 312
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    return-object v0

    .line 314
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private blacklist getImpliedLevel(I)I
    .locals 3
    .param p1, "progress"    # I

    .line 650
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    div-int/lit8 v1, v0, 0x64

    add-int/lit8 v1, v1, -0x1

    .line 651
    .local v1, "n":I
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 652
    :cond_0
    if-ne p1, v0, :cond_1

    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_1
    int-to-float v2, p1

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v0, v1

    mul-float/2addr v2, v0

    float-to-int v0, v2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    nop

    .line 653
    .local v0, "level":I
    return v0
.end method

.method private blacklist getImpliedMediaVolumeLevel(I)I
    .locals 0
    .param p1, "progress"    # I

    .line 657
    div-int/lit8 p1, p1, 0xa

    .line 658
    if-nez p1, :cond_0

    .line 659
    const/4 p1, 0x1

    .line 661
    :cond_0
    return p1
.end method

.method private blacklist getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .locals 3

    .line 847
    const-string/jumbo v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 848
    .local v0, "telepcomService":Lcom/android/internal/telecom/ITelecomService;
    if-nez v0, :cond_0

    .line 849
    const-string v1, "SeekBarVolumizer"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_0
    return-object v0
.end method

.method private blacklist getVolumeGroupIdForLegacyStreamType(I)I
    .locals 4
    .param p1, "streamType"    # I

    .line 277
    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 278
    .local v1, "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForLegacyStreamType(I)I

    move-result v3

    .line 279
    .local v3, "volumeGroupId":I
    if-eq v3, v2, :cond_0

    .line 280
    return v3

    .line 282
    .end local v1    # "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    .end local v3    # "volumeGroupId":I
    :cond_0
    goto :goto_0

    .line 284
    :cond_1
    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/preference/SeekBarVolumizer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/preference/SeekBarVolumizer$$ExternalSyntheticLambda0;-><init>()V

    .line 285
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/preference/SeekBarVolumizer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/preference/SeekBarVolumizer$$ExternalSyntheticLambda1;-><init>()V

    .line 287
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 289
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 284
    return v0
.end method

.method private blacklist hasAudioProductStrategies()Z
    .locals 1

    .line 272
    invoke-static {}, Landroid/media/AudioManager;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static greylist-max-o isAlarmsStream(I)Z
    .locals 1
    .param p0, "stream"    # I

    .line 339
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isAssistantStream(I)Z
    .locals 1
    .param p0, "stream"    # I

    .line 347
    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isDelay()Z
    .locals 4

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/preference/SeekBarVolumizer;->sStopVolumeTime:J

    sub-long/2addr v0, v2

    .line 520
    .local v0, "durationTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    sget-wide v2, Landroid/preference/SeekBarVolumizer;->DURATION_TO_START_DELAYING:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static greylist-max-o isMediaStream(I)Z
    .locals 1
    .param p0, "stream"    # I

    .line 343
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o isNotificationOrRing(I)Z
    .locals 3
    .param p1, "stream"    # I

    .line 327
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 328
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 330
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private blacklist isNotificationStream(I)Z
    .locals 1
    .param p1, "stream"    # I

    .line 335
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isSystemStream(I)Z
    .locals 1
    .param p0, "stream"    # I

    .line 351
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isUserInCall(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 813
    const/4 v0, 0x0

    .line 814
    .local v0, "isVoiceCall":Z
    const/4 v1, 0x0

    .line 815
    .local v1, "isVoIP":Z
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 816
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    move v0, v3

    .line 818
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 819
    .local v3, "audioMode":I
    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v4

    :goto_2
    move v1, v6

    .line 821
    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v4, v5

    :cond_4
    :goto_3
    return v4
.end method

.method private blacklist isVoiceCapable()Z
    .locals 1

    .line 1060
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o isZenMuted()Z
    .locals 3

    .line 371
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    :cond_0
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mAllowAlarms:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 374
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->isAlarmsStream(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mAllowMedia:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 375
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->isMediaStream(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->isAssistantStream(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mAllowRinger:Z

    if-nez v0, :cond_3

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 376
    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->isNotificationStream(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mAllowSystem:Z

    if-nez v0, :cond_4

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 377
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->isSystemStream(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    nop

    .line 371
    :goto_1
    return v1
.end method

.method static synthetic blacklist lambda$getVolumeGroupIdForLegacyStreamType$0(Landroid/media/audiopolicy/AudioProductStrategy;)Ljava/lang/Integer;
    .locals 1
    .param p0, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;

    .line 285
    nop

    .line 286
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getDefaultAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 285
    invoke-virtual {p0, v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getVolumeGroupIdForLegacyStreamType$1(Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "volumeGroupId"    # Ljava/lang/Integer;

    .line 287
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o onInitSample()V
    .locals 4

    .line 471
    monitor-enter p0

    .line 473
    :try_start_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 474
    if-eqz v0, :cond_1

    .line 475
    invoke-virtual {v0}, Landroid/media/Ringtone;->turnOffFadeIn()V

    .line 476
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 478
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 477
    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const-string v2, "BIXBY"

    .line 482
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    .line 483
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 481
    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :cond_1
    :goto_0
    goto :goto_1

    .line 490
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happens in onInitSample() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    .line 491
    return-void

    .line 490
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private greylist-max-o onStartSample()V
    .locals 5

    .line 533
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_6

    .line 534
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v0, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 538
    :cond_0
    monitor-enter p0

    .line 539
    :try_start_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_5

    .line 541
    :try_start_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "opPackageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "featureId":Ljava/lang/String;
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 545
    :try_start_2
    invoke-interface {v2, v0}, Lcom/android/internal/telecom/ITelecomService;->isRinging(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 546
    invoke-interface {v2, v0, v1}, Lcom/android/internal/telecom/ITelecomService;->isInCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 552
    :cond_1
    goto :goto_1

    .line 547
    :cond_2
    :goto_0
    const-string v2, "SeekBarVolumizer"

    const-string v3, "don\'t play ringtone in volumepreference: return called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 548
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 550
    :catch_0
    move-exception v2

    .line 551
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "SeekBarVolumizer"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 556
    invoke-virtual {v2}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 558
    const-string v2, "SeekBarVolumizer"

    const-string/jumbo v3, "sample : mRingtone.play()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    .line 561
    invoke-virtual {v2}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    const/16 v4, 0x80

    .line 562
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 563
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 560
    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 564
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 568
    .end local v0    # "opPackageName":Ljava/lang/String;
    .end local v1    # "featureId":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 566
    :catchall_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_5
    const-string v1, "SeekBarVolumizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error playing ringtone, stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    :goto_2
    monitor-exit p0

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 572
    :cond_6
    :goto_3
    return-void
.end method

.method private greylist-max-o onStopSample()V
    .locals 1

    .line 584
    monitor-enter p0

    .line 585
    :try_start_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 588
    :cond_0
    monitor-exit p0

    .line 589
    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private greylist-max-o postSetVolume(I)V
    .locals 4
    .param p1, "progress"    # I

    .line 753
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 755
    :cond_0
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 756
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 757
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 758
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 759
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isDelay()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-wide v2, Landroid/preference/SeekBarVolumizer;->SET_STREAM_VOLUME_DELAY_MS:J

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 758
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 760
    return-void
.end method

.method private greylist-max-o postStartSample()V
    .locals 5

    .line 495
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->isUserInCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 496
    :cond_0
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 498
    const/16 v0, 0x3e8

    .local v0, "delay":I
    goto :goto_0

    .line 500
    .end local v0    # "delay":I
    :cond_1
    return-void

    .line 503
    :cond_2
    const/4 v0, 0x0

    .line 505
    .restart local v0    # "delay":I
    :goto_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 507
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x3e8

    goto :goto_1

    .line 508
    :cond_3
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isDelay()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-wide v3, Landroid/preference/SeekBarVolumizer;->START_SAMPLE_DELAY_MS:J

    goto :goto_1

    :cond_4
    const-wide/16 v3, 0x0

    .line 506
    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 509
    return-void

    .line 495
    .end local v0    # "delay":I
    :cond_5
    :goto_2
    return-void
.end method

.method private greylist-max-o postStopSample()V
    .locals 2

    .line 575
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 576
    :cond_0
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->setStopVolumeTime()V

    .line 578
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 579
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 580
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 581
    return-void
.end method

.method private blacklist registerVolumeGroupCb()V
    .locals 3

    .line 1030
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1031
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeGroupCallback:Landroid/media/AudioManager$VolumeGroupCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerVolumeGroupCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$VolumeGroupCallback;)V

    .line 1032
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->updateSlider()V

    .line 1034
    :cond_0
    return-void
.end method

.method private blacklist setStopVolumeTime()V
    .locals 2

    .line 525
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 528
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/preference/SeekBarVolumizer;->sStopVolumeTime:J

    .line 530
    :cond_1
    return-void
.end method

.method private blacklist stopToneGenerator()V
    .locals 2

    .line 746
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 747
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 748
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 750
    :cond_0
    return-void
.end method

.method private blacklist unregisterVolumeGroupCb()V
    .locals 2

    .line 1037
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeGroupId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1038
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeGroupCallback:Landroid/media/AudioManager$VolumeGroupCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterVolumeGroupCallback(Landroid/media/AudioManager$VolumeGroupCallback;)V

    .line 1040
    :cond_0
    return-void
.end method

.method private greylist-max-o updateSlider()V
    .locals 4

    .line 925
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 926
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 927
    .local v0, "volume":I
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    .line 928
    .local v1, "lastAudibleVolume":I
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 929
    .local v2, "mute":Z
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    invoke-virtual {v3, v0, v1, v2}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 931
    .end local v0    # "volume":I
    .end local v1    # "lastAudibleVolume":I
    .end local v2    # "mute":Z
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o changeVolumeBy(I)V
    .locals 1
    .param p1, "amount"    # I

    .line 863
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 864
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 865
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 866
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 867
    return-void
.end method

.method public greylist-max-o getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .line 859
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 428
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SeekBarVolumizer"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 460
    :pswitch_0
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mPlaySample:Z

    if-eqz v0, :cond_3

    .line 461
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onInitSample()V

    goto :goto_1

    .line 455
    :pswitch_1
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mPlaySample:Z

    if-eqz v0, :cond_3

    .line 456
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStopSample()V

    goto :goto_1

    .line 450
    :pswitch_2
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mPlaySample:Z

    if-eqz v0, :cond_3

    .line 451
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStartSample()V

    goto :goto_1

    .line 430
    :pswitch_3
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-lez v3, :cond_0

    .line 431
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 432
    :cond_0
    if-nez v0, :cond_1

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-nez v0, :cond_1

    .line 433
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v4, -0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 435
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    const/16 v5, 0x400

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 437
    iput-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    .line 439
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    .line 440
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_3

    .line 441
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 442
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1

    .line 443
    :cond_2
    iget-boolean v3, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-nez v3, :cond_3

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 445
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 467
    :cond_3
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o isSamplePlaying()Z
    .locals 1

    .line 825
    monitor-enter p0

    .line 826
    :try_start_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 827
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o muteVolume()V
    .locals 4

    .line 870
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 871
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 872
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 873
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 874
    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    goto :goto_0

    .line 876
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 877
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 878
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 879
    invoke-direct {p0, v2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 881
    :goto_0
    return-void
.end method

.method public whitelist onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .line 665
    if-eqz p3, :cond_10

    .line 666
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 667
    if-eqz p2, :cond_1

    .line 668
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->getImpliedMediaVolumeLevel(I)I

    move-result p2

    goto :goto_0

    .line 671
    :cond_0
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result p2

    .line 673
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressChanged : stream = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", progress = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SeekBarVolumizer"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->stopToneGenerator()V

    .line 676
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-ne v0, v3, :cond_2

    .line 677
    invoke-virtual {p0, p2}, Landroid/preference/SeekBarVolumizer;->setSeekBarVolume(I)V

    goto/16 :goto_4

    .line 678
    :cond_2
    const/4 v3, 0x5

    const/4 v6, 0x0

    if-ne v0, v3, :cond_5

    .line 679
    if-nez p2, :cond_3

    .line 680
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 682
    :cond_3
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, p2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 683
    if-nez p2, :cond_4

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-nez v0, :cond_4

    .line 684
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 686
    :cond_4
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto/16 :goto_4

    .line 687
    :cond_5
    if-ne v0, v5, :cond_b

    .line 688
    const-string v0, "******onProgressChanged*****"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v0, :cond_6

    .line 690
    invoke-interface {v0, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 692
    :cond_6
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v5, p2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 694
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "opPackageName":Ljava/lang/String;
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 697
    .local v3, "featureId":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    if-eqz v7, :cond_8

    .line 698
    invoke-interface {v7, v0}, Lcom/android/internal/telecom/ITelecomService;->isRinging(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Landroid/preference/SeekBarVolumizer;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v7, v0, v3}, Lcom/android/internal/telecom/ITelecomService;->isInCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 699
    :cond_7
    const-string v6, "don\'t play STREAM_SYSTEM in volumepreference."

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 702
    :cond_8
    iget-object v7, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v7

    if-nez v7, :cond_9

    iget v7, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-eq v7, p2, :cond_9

    .line 703
    iget-object v6, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/16 v7, 0x64

    int-to-float v8, p2

    invoke-virtual {v6, v7, v8}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 704
    iput-boolean v5, p0, Landroid/preference/SeekBarVolumizer;->mSystemSampleStarted:Z

    .line 705
    const-string/jumbo v6, "sample : playSoundEffect()"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 706
    :cond_9
    iget v7, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-ne v7, p2, :cond_a

    .line 707
    iput-boolean v6, p0, Landroid/preference/SeekBarVolumizer;->mSystemSampleStarted:Z

    .line 709
    :cond_a
    :goto_1
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_2
    goto :goto_3

    .line 711
    :catch_0
    move-exception v6

    .line 712
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v7, "ITelephony threw RemoteException"

    invoke-static {v2, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    .end local v6    # "ex":Landroid/os/RemoteException;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onProgressChanged : AudioManager.STREAM_SYSTEM["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .end local v0    # "opPackageName":Ljava/lang/String;
    .end local v3    # "featureId":Ljava/lang/String;
    goto :goto_4

    :cond_b
    if-ne v0, v4, :cond_d

    .line 716
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "volume_waiting_tone"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 719
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_c

    .line 720
    new-instance v0, Landroid/media/ToneGenerator;

    invoke-direct {v0, v4, v6}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 722
    :cond_c
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v6}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 723
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x16

    const/16 v3, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 724
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto :goto_4

    .line 725
    :cond_d
    if-ne v0, v1, :cond_e

    .line 726
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, p2, v6}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    .line 727
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    goto :goto_4

    .line 729
    :cond_e
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 732
    :goto_4
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v0, v5, :cond_10

    if-eq v0, v4, :cond_10

    .line 733
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_10

    .line 734
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v0, v1, :cond_10

    .line 735
    :cond_f
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->startSample()V

    .line 740
    :cond_10
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v0, :cond_11

    .line 741
    invoke-interface {v0, p1, p2, p3}, Landroid/preference/SeekBarVolumizer$Callback;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 743
    :cond_11
    return-void
.end method

.method public greylist-max-o onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 2
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .line 891
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 892
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 893
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 894
    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 896
    :cond_0
    return-void
.end method

.method public greylist-max-o onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 1
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    .line 884
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 885
    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 886
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 888
    :cond_0
    return-void
.end method

.method public whitelist onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 763
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v0, :cond_0

    .line 764
    invoke-interface {v0, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onStartTrackingTouch(Landroid/preference/SeekBarVolumizer;)V

    .line 766
    :cond_0
    return-void
.end method

.method public whitelist onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 769
    const-string v0, "SeekBarVolumizer"

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    if-eqz v1, :cond_0

    .line 770
    invoke-interface {v1, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onStopTrackingTouch(Landroid/preference/SeekBarVolumizer;)V

    .line 772
    :cond_0
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mSystemSampleStarted:Z

    if-nez v1, :cond_4

    .line 773
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "opPackageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 775
    .local v4, "featureId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result v5

    .line 777
    .local v5, "progress":I
    :try_start_0
    iget-object v6, p0, Landroid/preference/SeekBarVolumizer;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    if-eqz v6, :cond_2

    .line 778
    invoke-interface {v6, v1}, Lcom/android/internal/telecom/ITelecomService;->isRinging(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/preference/SeekBarVolumizer;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v6, v1, v4}, Lcom/android/internal/telecom/ITelecomService;->isInCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 779
    :cond_1
    const-string v6, "[onStopTrackingTouch]don\'t play STREAM_SYSTEM in volumepreference."

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 781
    :cond_2
    iget-object v6, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->semIsFmRadioActive()Z

    move-result v6

    if-nez v6, :cond_3

    .line 782
    iget-object v6, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    int-to-float v7, v5

    invoke-virtual {v6, v2, v7}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 783
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onStopTrackingTouch]sample : playSoundEffect() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :cond_3
    :goto_0
    goto :goto_1

    .line 786
    :catch_0
    move-exception v6

    .line 787
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v7, "ITelephony threw RemoteException"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 791
    .end local v1    # "opPackageName":Ljava/lang/String;
    .end local v4    # "featureId":Ljava/lang/String;
    .end local v5    # "progress":I
    .end local v6    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 792
    .local v0, "progress":I
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_6

    .line 793
    if-eqz v0, :cond_7

    .line 794
    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->getImpliedMediaVolumeLevel(I)I

    move-result v1

    mul-int/lit8 v0, v1, 0xa

    .line 795
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v4, "volumelimit_on"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 796
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Landroid/preference/SeekBarVolumizer$2;

    invoke-direct {v2, p0}, Landroid/preference/SeekBarVolumizer$2;-><init>(Landroid/preference/SeekBarVolumizer;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 803
    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2

    .line 807
    :cond_6
    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result v1

    mul-int/lit8 v0, v1, 0x64

    .line 808
    invoke-virtual {p1}, Landroid/widget/SeekBar;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 810
    :cond_7
    :goto_2
    return-void
.end method

.method public greylist-max-o revertVolume()V
    .locals 5

    .line 628
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 629
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    const-string/jumbo v2, "volume_waiting_tone"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 630
    :cond_0
    const/4 v1, 0x5

    const/high16 v2, 0x1000000

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 631
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mVoiceCapable:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_2

    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v3, :cond_2

    .line 632
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_1

    .line 633
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 634
    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 636
    :cond_2
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalNotificationVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 637
    :cond_3
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 638
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalSystemVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 640
    :cond_4
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    if-nez v0, :cond_6

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v1, v3, :cond_6

    .line 641
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalRingerMode:I

    if-eq v0, v1, :cond_5

    .line 642
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 643
    :cond_5
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mOriginalLastAudibleStreamVolume:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 645
    :cond_6
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2, v0, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 647
    :goto_0
    return-void
.end method

.method public greylist-max-o setSeekBar(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 355
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 358
    :cond_0
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 359
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 360
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 361
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 362
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastWaitingToneVolume:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 364
    :cond_2
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 365
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    .line 367
    :goto_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 368
    return-void
.end method

.method public blacklist setSeekBarVolume(I)V
    .locals 1
    .param p1, "volume"    # I

    .line 422
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->isRingerUpdatedToAudio:Z

    .line 424
    return-void
.end method

.method public greylist-max-o start()V
    .locals 5

    .line 612
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 613
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SeekBarVolumizer.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 614
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 615
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 616
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 617
    new-instance v1, Landroid/preference/SeekBarVolumizer$Observer;

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Landroid/preference/SeekBarVolumizer$Observer;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    .line 618
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    aget-object v2, v2, v3

    .line 619
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    .line 618
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 621
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 622
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->hasAudioProductStrategies()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->registerVolumeGroupCb()V

    .line 625
    :cond_1
    return-void
.end method

.method public greylist-max-o startSample()V
    .locals 5

    .line 831
    const-string v0, "SeekBarVolumizer"

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, "opPackageName":Ljava/lang/String;
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 833
    .local v2, "featureId":Ljava/lang/String;
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    if-eqz v3, :cond_2

    .line 835
    :try_start_0
    invoke-interface {v3, v1}, Lcom/android/internal/telecom/ITelecomService;->isRinging(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v3, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isInCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 841
    :cond_0
    goto :goto_1

    .line 836
    :cond_1
    :goto_0
    const-string v3, "don\'t play ringtone in volumepreference: return called"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    return-void

    .line 839
    :catch_0
    move-exception v3

    .line 840
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 843
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    .line 844
    return-void
.end method

.method public greylist stop()V
    .locals 3

    .line 593
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 594
    :cond_0
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 595
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->stopToneGenerator()V

    .line 596
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 597
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 598
    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 600
    :cond_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 601
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    .line 602
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->hasAudioProductStrategies()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->unregisterVolumeGroupCb()V

    .line 605
    :cond_2
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 606
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 607
    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 608
    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    .line 609
    return-void
.end method

.method public greylist-max-o stopSample()V
    .locals 0

    .line 855
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    .line 856
    return-void
.end method

.method protected greylist-max-o updateSeekBar()V
    .locals 6

    .line 381
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    .line 382
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    .line 384
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 385
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_1

    .line 386
    :cond_0
    iget-boolean v4, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    const/4 v5, 0x3

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    if-eq v1, v5, :cond_1

    const/16 v4, 0xb

    if-eq v1, v4, :cond_1

    if-eq v0, v2, :cond_1

    .line 389
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 390
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_1

    .line 392
    :cond_1
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    if-ne v0, v5, :cond_4

    .line 393
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v0

    .line 394
    .local v0, "media_volume":I
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 395
    if-eqz v1, :cond_2

    .line 396
    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->getImpliedMediaVolumeLevel(I)I

    move-result v1

    iput v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 398
    :cond_2
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    if-eq v1, v0, :cond_3

    .line 399
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 400
    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 402
    .end local v0    # "media_volume":I
    :cond_3
    goto :goto_0

    .line 403
    :cond_4
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 404
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 405
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 406
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->getImpliedLevel(I)I

    move-result v0

    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    .line 409
    :cond_5
    :goto_0
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 410
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 411
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 414
    :cond_6
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 415
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 419
    :cond_7
    :goto_1
    return-void
.end method

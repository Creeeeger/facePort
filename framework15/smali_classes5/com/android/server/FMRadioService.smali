.class public Lcom/android/server/FMRadioService;
.super Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FMRadioService$AudioFocusHandler;,
        Lcom/android/server/FMRadioService$ListenerRecord;,
        Lcom/android/server/FMRadioService$SamsungAnalyticsRunnable;,
        Lcom/android/server/FMRadioService$ScanThread;
    }
.end annotation


# static fields
.field private static final blacklist ACTINON_ALARM_PLAY:Ljava/lang/String; = "com.sec.android.app.voicecommand"

.field private static final blacklist ACTION_ALL_SOUND_OFF:Ljava/lang/String; = "android.settings.ALL_SOUND_MUTE"

.field private static final blacklist ACTION_CAMERA_START:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_CAMERA_START"

.field private static final blacklist ACTION_CAMERA_STOP:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_CAMERA_STOP"

.field private static final blacklist ACTION_SAVE_FMRECORDING_ONLY:Ljava/lang/String; = "com.samsung.media.save_fmrecording_only"

.field private static final blacklist ACTION_VOLUME_LOCK:Ljava/lang/String; = "com.sec.android.fm.volume_lock"

.field private static final blacklist ACTION_VOLUME_UNLOCK:Ljava/lang/String; = "com.sec.android.fm.volume_unlock"

.field private static final blacklist APP_NAME:Ljava/lang/String; = "com.sec.android.app.fm"

.field private static final blacklist AUDIO_FOCUS_NO_FADEOUT_TAG:Ljava/lang/String; = "NO_FADEOUT_FROM_AUDIOFOCUS"

.field private static final blacklist AVC_MODE_ON:I = 0x1

.field public static final blacklist BAND_76000_108000_kHz:I = 0x2

.field public static final blacklist BAND_76000_90000_kHz:I = 0x3

.field public static final blacklist BAND_87500_108000_kHz:I = 0x1

.field public static final blacklist BAND_EXTERNALCHIPSET_64000_76000_kHz:I = 0x3

.field public static final blacklist BAND_EXTERNALCHIPSET_76000_107000_kHz:I = 0x1

.field public static final blacklist BAND_EXTERNALCHIPSET_76000_91000_kHz:I = 0x2

.field public static final blacklist BAND_EXTERNALCHIPSET_87000_108000_kHz:I = 0x0

.field public static final blacklist CHAN_SPACING_100_kHz:I = 0xa

.field public static final blacklist CHAN_SPACING_200_kHz:I = 0x14

.field public static final blacklist CHAN_SPACING_50_kHz:I = 0x5

.field public static final blacklist CHAN_SPACING_EXTERNALCHIPSET_100_kHz:I = 0x1

.field public static final blacklist CHAN_SPACING_EXTERNALCHIPSET_200_kHz:I = 0x0

.field public static final blacklist CHAN_SPACING_EXTERNALCHIPSET_50_kHz:I = 0x2

.field private static final blacklist CODE_SCAN_PROGRESS:I = 0x1

.field public static final blacklist DEBUG:Z = true

.field private static final blacklist DEBUGGABLE:Z

.field public static final blacklist DE_TIME_CONSTANT_50:I = 0x1

.field public static final blacklist DE_TIME_CONSTANT_75:I = 0x0

.field private static final blacklist DISABLE_SLIMBUS_DATA_PORT:I = 0x0

.field private static final blacklist ENABLE_SLIMBUS_DATA_PORT:I = 0x1

.field static final blacklist EVENT_AF_RECEIVED:I = 0xe

.field static final blacklist EVENT_AF_STARTED:I = 0xd

.field private static final blacklist EVENT_CHANNEL_FOUND:I = 0x1

.field private static final blacklist EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final blacklist EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final blacklist EVENT_OFF:I = 0x6

.field private static final blacklist EVENT_ON:I = 0x5

.field static final blacklist EVENT_PIECC_EVENT:I = 0x12

.field private static final blacklist EVENT_RDS_DISABLED:I = 0xc

.field private static final blacklist EVENT_RDS_ENABLED:I = 0xb

.field static final blacklist EVENT_RDS_EVENT:I = 0xa

.field static final blacklist EVENT_REC_FINISH:I = 0x11

.field static final blacklist EVENT_RTPLUS_EVENT:I = 0x10

.field private static final blacklist EVENT_SCAN_FINISHED:I = 0x3

.field private static final blacklist EVENT_SCAN_STARTED:I = 0x2

.field private static final blacklist EVENT_SCAN_STOPPED:I = 0x4

.field private static final blacklist EVENT_TUNE:I = 0x7

.field public static final blacklist EVENT_VOLUME_LOCK:I = 0xf

.field private static final blacklist FACTORY_APP_NAME:Ljava/lang/String; = "com.sec.factory.app.fm"

.field private static final blacklist FMRADIO_CTS_APP_NAME:Ljava/lang/String; = "com.samsung.cts.SamsungMediaFmradio"

.field private static final blacklist FMTEST_APP_NAME:Ljava/lang/String; = "com.sec.android.fmtestapp"

.field private static final blacklist FM_RADIO_AUDIO_FOCUS_TAG:Ljava/lang/String; = "FM_RADIO"

.field private static final blacklist JAPANRADIO_APP_NAME:Ljava/lang/String; = "jp.radiko.plusfm.player"

.field private static final blacklist JAPANRADIO_TUNER_NAME:Ljava/lang/String; = "jp.radiko.radio.player"

.field private static final blacklist KEY_RETURNBACK_VOLUME:Ljava/lang/String; = "com.sec.android.fm.return_back_volume"

.field private static final blacklist KNOX_MODE_USER_SWITCH:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field private static final blacklist MDM_SPEAKER_ENABLED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.SET_DEVICE_SPEAKER_ENABLED"

.field private static final blacklist NEXTRADIO_NAME:Ljava/lang/String; = "com.nextradioapp.nextradio"

.field public static final blacklist OFF_AIRPLANE_MODE_SET:I = 0x3

.field public static final blacklist OFF_BATTERY_LOW:I = 0x7

.field public static final blacklist OFF_CALL_ACTIVE:I = 0x1

.field public static final blacklist OFF_DEVICE_SHUTDOWN:I = 0x6

.field public static final blacklist OFF_EAR_PHONE_DISCONNECT:I = 0x2

.field public static final blacklist OFF_MOTION_LISTENER:I = 0x15

.field public static final blacklist OFF_NORMAL:I = 0x0

.field public static final blacklist OFF_PAUSE_COMMAND:I = 0x5

.field public static final blacklist OFF_STOP_COMMAND:I = 0x4

.field public static final blacklist OFF_TV_OUT:I = 0xa

.field private static final blacklist OMC_CHANGED_ACTION:Ljava/lang/String; = "com.samsung.intent.action.OMC_CHANGED"

.field private static final blacklist PARAMETER_AFRMSSI_SAMPLES:Ljava/lang/String; = "AFRMSSISamples"

.field private static final blacklist PARAMETER_AFRMSSI_TH:Ljava/lang/String; = "AFRMSSIThreshold"

.field private static final blacklist PARAMETER_ATJ_CONFIG:Ljava/lang/String; = "ATJCofig"

.field private static final blacklist PARAMETER_BLEND_PAMD_TH:Ljava/lang/String; = "BlendPAMD_th"

.field private static final blacklist PARAMETER_BLEND_RMSSI:Ljava/lang/String; = "BlendRmssi"

.field private static final blacklist PARAMETER_BLEND_RSSI_TH:Ljava/lang/String; = "BlendRSSI_th"

.field private static final blacklist PARAMETER_BLEND_SINR:Ljava/lang/String; = "BlendSinr"

.field private static final blacklist PARAMETER_CFO_TH:Ljava/lang/String; = "CFOTh12"

.field private static final blacklist PARAMETER_CURRENT_RSSI:Ljava/lang/String; = "CurrentRSSI"

.field private static final blacklist PARAMETER_CURRENT_SNR:Ljava/lang/String; = "CurrentSNR"

.field private static final blacklist PARAMETER_DESENSE_LIST:Ljava/lang/String; = "DeSenseList"

.field private static final blacklist PARAMETER_DE_CONSTANT:Ljava/lang/String; = "DEConstant"

.field private static final blacklist PARAMETER_FAKE_CHANNEL:Ljava/lang/String; = "FakeChannel"

.field private static final blacklist PARAMETER_FIRST_CNT_TH:Ljava/lang/String; = "Cnt_th"

.field private static final blacklist PARAMETER_FIRST_RSSI_TH:Ljava/lang/String; = "RSSI_th"

.field private static final blacklist PARAMETER_FIRST_SNR_TH:Ljava/lang/String; = "SNR_th"

.field public static final blacklist PARAMETER_FREQUENCY_OFFSET_TH:Ljava/lang/String; = "FrequencyOffset_th"

.field private static final blacklist PARAMETER_GOOD_CH_RMSSI_TH:Ljava/lang/String; = "GoodChannelRMSSIThreshold"

.field private static final blacklist PARAMETER_HYBRID_SEARCH:Ljava/lang/String; = "HybridSearch"

.field public static final blacklist PARAMETER_IF_COUNT_1:Ljava/lang/String; = "IFCount1"

.field public static final blacklist PARAMETER_IF_COUNT_2:Ljava/lang/String; = "IFCount2"

.field public static final blacklist PARAMETER_NOISE_POWER_TH:Ljava/lang/String; = "NoisePower_th"

.field private static final blacklist PARAMETER_OFF_CHANNEL_TH:Ljava/lang/String; = "OffChannelThreshold"

.field private static final blacklist PARAMETER_ON_CHANNEL_TH:Ljava/lang/String; = "OnChannelThreshold"

.field public static final blacklist PARAMETER_PILOT_POWER_TH:Ljava/lang/String; = "PilotPower_th"

.field private static final blacklist PARAMETER_RMSSI_FIRST_STAGE:Ljava/lang/String; = "RMSSIFirstStage"

.field private static final blacklist PARAMETER_SEARCH_ALGO_TYPE:Ljava/lang/String; = "SearchAlgoType"

.field private static final blacklist PARAMETER_SECOND_CNT_TH:Ljava/lang/String; = "Cnt_th_2"

.field private static final blacklist PARAMETER_SECOND_RSSI_TH:Ljava/lang/String; = "RSSI_th_2"

.field private static final blacklist PARAMETER_SECOND_SNR_TH:Ljava/lang/String; = "SNR_th_2"

.field private static final blacklist PARAMETER_SEEK_DC:Ljava/lang/String; = "SeekDC"

.field private static final blacklist PARAMETER_SEEK_DESENSE_RSSI:Ljava/lang/String; = "SeekDesenseRSSI"

.field private static final blacklist PARAMETER_SEEK_QA:Ljava/lang/String; = "SeekQA"

.field private static final blacklist PARAMETER_SEEK_RSSI:Ljava/lang/String; = "SeekRSSI"

.field private static final blacklist PARAMETER_SEEK_SMG:Ljava/lang/String; = "SeekSMG"

.field private static final blacklist PARAMETER_SEEK_SNR:Ljava/lang/String; = "SeekSNR"

.field private static final blacklist PARAMETER_SINR_FIRST_STAGE:Ljava/lang/String; = "SINRFirstStage"

.field private static final blacklist PARAMETER_SINR_SAMPLES:Ljava/lang/String; = "SINRSamples"

.field private static final blacklist PARAMETER_SINR_TH:Ljava/lang/String; = "SINRThreshold"

.field private static final blacklist PARAMETER_SKIP_TUNNING_VALUE:Ljava/lang/String; = "SkipTuningValue"

.field public static final blacklist PARAMETER_SOFTMUTE_COEFF:Ljava/lang/String; = "SoftMuteCoeff"

.field private static final blacklist PARAMETER_SOFTMUTE_TH:Ljava/lang/String; = "Softmute_th"

.field public static final blacklist PARAMETER_SOFT_STEREO_BLEND_COEFF:Ljava/lang/String; = "SoftStereoBlendCoeff"

.field public static final blacklist PARAMETER_SOFT_STEREO_BLEND_REF:Ljava/lang/String; = "SoftStereoBlendRef"

.field public static final blacklist PAUSED:I = 0xb

.field private static final blacklist RECORDING_END:I = 0x0

.field private static final blacklist RECORDING_START:I = 0x1

.field private static final blacklist RESET_SETTING:Ljava/lang/String; = "android.intent.action.SETTINGS_SOFT_RESET"

.field private static final blacklist SA_ACTION:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field private static final blacklist SA_FEATURE:Ljava/lang/String; = "SBKS"

.field private static final blacklist SA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final blacklist SA_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.sdk.fmradio"

.field private static final blacklist SA_SM_SDK_ID:Ljava/lang/String; = "Galaxy FM Radio SDK"

.field private static final blacklist SA_TRACKING_ID:Ljava/lang/String; = "4M3-399-1025498"

.field static final blacklist VOLUME_FADEIN:I = 0xc8

.field static final blacklist VOLUME_FADEIN_DELAYTIME:I = 0x64

.field static final blacklist VOLUME_FADEIN_FIRST_DELAYTIME:I = 0x320

.field private static final blacklist VOLUME_UP_DOWN:Ljava/lang/String; = "114,115"

.field private static final blacklist audioMute:Ljava/lang/String; = "g_fmradio_mute=true"

.field private static final blacklist audioUnMute:Ljava/lang/String; = "g_fmradio_mute=false"

.field private static blacklist curFreq:J

.field private static final blacklist isFactoryBinary:Z

.field private static final blacklist mFMRadioServiceLock:Ljava/lang/Object;


# instance fields
.field private final blacklist FEATURE_INDIRECT_MODE:Z

.field private final blacklist SURVEY_MODE_ENABLE:Z

.field private blacklist SetPropertyPermission:Ljava/lang/String;

.field private blacklist VolumePropertyname:Ljava/lang/String;

.field private blacklist alarmTTSPlay:Z

.field private blacklist bmObserver:Landroid/database/ContentObserver;

.field private blacklist isRecording:Z

.field private blacklist mAFEnable:Z

.field private blacklist mAfRmssisampleCnt_th:I

.field private blacklist mAfRmssith_th:I

.field private blacklist mAirPlaneEnabled:Z

.field private final blacklist mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mAlgo_type:I

.field private final blacklist mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

.field private blacklist mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private blacklist mAvrcpMode:Z

.field private blacklist mAvrcpObserver:Landroid/database/ContentObserver;

.field public blacklist mBand:I

.field private blacklist mBikeMode:Z

.field private blacklist mButtonReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCf0_th12:I

.field public blacklist mChannelSpacing:I

.field private blacklist mCnt_th:I

.field private blacklist mCnt_th_2:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentFoundFreq:J

.field private blacklist mCurrentResumeVol:J

.field public blacklist mDEConstant:I

.field private final blacklist mDNDStatusReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mExtSeekFreq:J

.field private blacklist mFMHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mFreqOffset_th:I

.field final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandlerSA:Landroid/os/Handler;

.field private blacklist mIsBatteryLow:Z

.field private blacklist mIsEarphoneConnected:Z

.field private blacklist mIsExternalChipset:Z

.field private blacklist mIsFMAudioPathOn:Z

.field private blacklist mIsForcestop:Z

.field private blacklist mIsHeadsetPlugged:Z

.field public blacklist mIsMDMSpeakerEnabled:Z

.field private blacklist mIsMicrophoneConnected:Z

.field private blacklist mIsMute:Z

.field private blacklist mIsOn:Z

.field private blacklist mIsPhoneStateListenerRegistered:Z

.field private blacklist mIsSeeking:Z

.field private blacklist mIsSetWakeKey:Z

.field private blacklist mIsSkipTunigVal:Z

.field private blacklist mIsSupportSoftmute:Z

.field private blacklist mIsTestMode:Z

.field private blacklist mIsTransientDuck:Z

.field private blacklist mIsTransientPaused:Z

.field private blacklist mIsTvOutPlugged:Z

.field private blacklist mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/server/FMRadioService$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mMDMSpeakerEnabled:Landroid/content/BroadcastReceiver;

.field private blacklist mMtkChipVolume:J

.field private blacklist mMtkSupportSetChipVolume:Z

.field private blacklist mMtk_ATJ_config:I

.field private blacklist mMtk_blendpamd_th:I

.field private blacklist mMtk_blendrssi_th:I

.field private blacklist mMtk_seekdesenserssi:I

.field private blacklist mMtk_seeksmg:I

.field private blacklist mNeedResumeToFreq:J

.field private blacklist mNeedToResumeFM:Z

.field private blacklist mNoisePwr_th:I

.field private final blacklist mOMC_Changed_Receiver:Landroid/content/BroadcastReceiver;

.field private blacklist mOffProgress:Z

.field private blacklist mOnProgress:Z

.field private blacklist mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private blacklist mPilotPwr_th:I

.field private blacklist mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

.field private blacklist mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

.field private blacklist mPowerManager:Landroid/os/PowerManager;

.field private blacklist mPreviousFoundFreq:J

.field private blacklist mQualcomm_af_rmssisamplecnt:I

.field private blacklist mQualcomm_af_rmssith:I

.field private blacklist mQualcomm_cfoth12:I

.field private blacklist mQualcomm_offchannel:I

.field private blacklist mQualcomm_onchannel:I

.field private blacklist mQualcomm_rmssi_firststate:I

.field private blacklist mQualcomm_sinr_samplecnt:I

.field private blacklist mRDSEnable:Z

.field blacklist mRecFinishNotified:Z

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mResetSettingReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mResumeVol:J

.field private blacklist mRichwave_seekDC:I

.field private blacklist mRichwave_seekQA:I

.field private blacklist mRssi_th:I

.field private blacklist mRssi_th_2:I

.field private blacklist mSamsungAnalyticsRunnable:Ljava/lang/Runnable;

.field private blacklist mScanChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScanFreq:J

.field private blacklist mScanProgress:Z

.field private blacklist mScanThread:Ljava/lang/Thread;

.field private final blacklist mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSlsi_blendcoeff:J

.field private blacklist mSlsi_ifcount1:I

.field private blacklist mSlsi_ifcount2:I

.field private blacklist mSlsi_softmutecoeff:J

.field private blacklist mSlsi_softstereoblendref:J

.field private blacklist mSnr_th:I

.field private blacklist mSnr_th_2:I

.field private blacklist mSoftmutePath:Ljava/lang/String;

.field private blacklist mSoftmute_th:I

.field private final blacklist mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mSystemReceiver1:Landroid/content/BroadcastReceiver;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mWaitPidDuringScanning:Z

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private blacklist mgoodChrmssi_th:I

.field private blacklist volumeLock:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetFEATURE_INDIRECT_MODE(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->FEATURE_INDIRECT_MODE:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetVolumePropertyname(Lcom/android/server/FMRadioService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/FMRadioService;->VolumePropertyname:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisRecording(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->isRecording:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAirPlaneEnabled(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioFocusHandler(Lcom/android/server/FMRadioService;)Lcom/android/server/FMRadioService$AudioFocusHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioFocusListener(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioManager(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAvrcpMode(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBikeMode(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCnt_th(Lcom/android/server/FMRadioService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/server/FMRadioService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentFoundFreq(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentResumeVol(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEarphoneConnected(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsEarphoneConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsExternalChipset(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsForcestop(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsHeadsetPlugged(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsMicrophoneConnected(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsMicrophoneConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsMute(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsOn(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSeeking(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSkipTunigVal(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTestMode(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTransientPaused(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTvOutPlugged(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeedResumeToFreq(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeedToResumeFM(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlayerExternalChipset(Lcom/android/server/FMRadioService;)Lcom/android/server/PlayerExternalChipsetBase;
    .locals 0

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlayerNative(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNativeBase;
    .locals 0

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPowerManager(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviousFoundFreq(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResumeVol(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssi_th(Lcom/android/server/FMRadioService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScanChannelList(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScanFreq(Lcom/android/server/FMRadioService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScanProgress(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScanThread(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSnr_th(Lcom/android/server/FMRadioService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaitPidDuringScanning(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvolumeLock(Lcom/android/server/FMRadioService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputalarmTTSPlay(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAirPlaneEnabled(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAvrcpMode(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBikeMode(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentFoundFreq(Lcom/android/server/FMRadioService;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentResumeVol(Lcom/android/server/FMRadioService;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBatteryLow(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsEarphoneConnected(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsEarphoneConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsForcestop(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsHeadsetPlugged(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsMicrophoneConnected(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsMicrophoneConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsTransientPaused(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsTvOutPlugged(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNeedResumeToFreq(Lcom/android/server/FMRadioService;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNeedToResumeFM(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPreviousFoundFreq(Lcom/android/server/FMRadioService;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResumeVol(Lcom/android/server/FMRadioService;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScanChannelList(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScanFreq(Lcom/android/server/FMRadioService;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScanProgress(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScanThread(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputvolumeLock(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckUsbExternalChipset(Lcom/android/server/FMRadioService;Landroid/hardware/usb/UsbDevice;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->checkUsbExternalChipset(Landroid/hardware/usb/UsbDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearMessageQueue(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->clearMessageQueue()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleAvrcpMode(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->handleAvrcpMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleBikeMode(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->handleBikeMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minDirectModeBroadcast(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->inDirectModeBroadcast()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$moffInternal(Lcom/android/server/FMRadioService;IZ)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mon(Lcom/android/server/FMRadioService;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mqueueUpdate(Lcom/android/server/FMRadioService;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->queueUpdate(IJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreadTuningParameters(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readTuningParameters()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseAudioSystemMute(Lcom/android/server/FMRadioService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseAudioSystemMute()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresponedFocusEvent(Lcom/android/server/FMRadioService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->responedFocusEvent(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendInfoSamsungAnalytics(Lcom/android/server/FMRadioService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/FMRadioService;->sendInfoSamsungAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetDelay(Lcom/android/server/FMRadioService;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/FMRadioService;->setDelay(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetFMAudioPath(Lcom/android/server/FMRadioService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSignalSetting(Lcom/android/server/FMRadioService;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUGGABLE()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    const-string/jumbo v0, "ro.factory.factory_binary"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/FMRadioService;->isFactoryBinary:Z

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/FMRadioService;->curFreq:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/internal/IFMPlayer$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mOffProgress:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMicrophoneConnected:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsEarphoneConnected:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    const-wide/16 v1, -0x2

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mExtSeekFreq:J

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J

    iput-wide v3, p0, Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRecFinishNotified:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->isRecording:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    const-string v5, "com.sec.android.app.fm.permission.setproperty"

    iput-object v5, p0, Lcom/android/server/FMRadioService;->SetPropertyPermission:Ljava/lang/String;

    const-string/jumbo v5, "service.brcm.fm.volumetable"

    iput-object v5, p0, Lcom/android/server/FMRadioService;->VolumePropertyname:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    const/4 v5, 0x1

    iput v5, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    const-string v6, "Speaker"

    iput-object v6, p0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    iput v5, p0, Lcom/android/server/FMRadioService;->mBand:I

    const/16 v6, 0xa

    iput v6, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    iput v5, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    const/16 v7, -0x71

    iput v7, p0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    const/16 v7, 0x6d

    iput v7, p0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    const/16 v7, 0x73

    iput v7, p0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v6, p0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    const/16 v7, 0x3a98

    iput v7, p0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    const/16 v7, 0x35

    iput v7, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    const/16 v7, 0x50

    iput v7, p0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    const/16 v8, 0x40

    iput v8, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    iput v7, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    const/16 v7, 0x1388

    iput v7, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    const/16 v7, 0x12c0

    iput v7, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    const-wide/16 v7, 0xc64

    iput-wide v7, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    iput-wide v3, p0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    const/16 v1, -0x60

    iput v1, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    const/16 v1, 0x32c8

    iput v1, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    const-wide/16 v1, 0x1f

    iput-wide v1, p0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    const/16 v1, -0x41

    iput v1, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    const/16 v1, -0x1e

    iput v1, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    iput v5, p0, Lcom/android/server/FMRadioService;->mMtk_ATJ_config:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->SURVEY_MODE_ENABLE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FMRADIO_SUPPORT_INDIRECT_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->FEATURE_INDIRECT_MODE:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mHandlerSA:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mFMHandlerThread:Landroid/os/HandlerThread;

    new-instance v2, Lcom/android/server/FMRadioService$1;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/android/server/FMRadioService$1;-><init>(Lcom/android/server/FMRadioService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAvrcpObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/server/FMRadioService$2;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$2;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$3;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$3;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$4;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$4;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$5;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$5;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mResetSettingReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/FMRadioService$6;-><init>(Lcom/android/server/FMRadioService;Ljava/lang/Integer;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMDMSpeakerEnabled:Z

    new-instance v2, Lcom/android/server/FMRadioService$7;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$7;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mMDMSpeakerEnabled:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$8;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$8;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mOMC_Changed_Receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$9;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$9;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v2, Lcom/android/server/FMRadioService$10;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/FMRadioService$10;-><init>(Lcom/android/server/FMRadioService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/FMRadioService$11;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$11;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$12;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$12;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$13;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$13;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$14;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$14;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$15;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$15;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$16;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$16;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mDNDStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/FMRadioService$17;

    invoke-direct {v2, p0}, Lcom/android/server/FMRadioService$17;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v2, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    new-instance v1, Lcom/android/server/FMRadioService$18;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/server/FMRadioService$18;-><init>(Lcom/android/server/FMRadioService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    sget-boolean v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FMRADIO_SUPPORT_EXTERNAL_RADIO_CHIPSET:Z

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsExternalChipset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "mIsExternalChipset CHIP_RICHWAVE"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/PlayerExternalChipsetBesRichwave;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/PlayerExternalChipsetBesRichwave;-><init>(Landroid/content/Context;Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/FMPlayerNative;

    invoke-direct {v1, p0}, Lcom/android/server/FMPlayerNative;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    :cond_1
    :goto_0
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "FMRadio Service"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FMRadioService"

    invoke-direct {v1, v2, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mFMHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mFMHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/FMRadioService$AudioFocusHandler;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mFMHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/FMRadioService$AudioFocusHandler;-><init>(Lcom/android/server/FMRadioService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->SURVEY_MODE_ENABLE:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mHandlerSA:Landroid/os/Handler;

    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3e7

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "com.sec.android.fm.volume_lock"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x2

    invoke-virtual {p1, v4, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v7, "com.sec.android.fm.volume_unlock"

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mVolumeEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "airplane_mode_on"

    invoke-static {v4, v6, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v5

    :cond_3
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAirPlaneEnabled flag :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mResetSettingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.media.save_fmrecording_only"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "com.sec.android.app.camera.ACTION_CAMERA_START"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    const-string v1, "com.sec.android.app.camera.ACTION_CAMERA_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSystemListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerSetPropertyListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerMDMCommandRec()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerOMCChanged()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readTuningParameters()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->readParametersForCurrentRegion()V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->checkUSBDeviceConnected(Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method private blacklist SkipTuning_Value()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    const-string v0, "FMRadioService"

    const-string v1, "SkipTuning_Value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist acquireWakeLock()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v2, "Lock is held"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private blacklist checkForWakeLockRelease()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-nez v0, :cond_0

    const-string v0, "AF and RDS is off. release the wake lock"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    :cond_0
    return-void
.end method

.method private blacklist checkUSBDeviceConnected(Landroid/content/Context;)V
    .locals 6

    const-string v0, "checkUSBDeviceConnected"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    const-string/jumbo v1, "mUsbManager null"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "USB Device null"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Headset getProductId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Headset getVendorId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->checkUsbExternalChipset(Landroid/hardware/usb/UsbDevice;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v4, v3}, Lcom/android/server/PlayerExternalChipsetBase;->init(Landroid/hardware/usb/UsbDevice;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :cond_3
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NullPointerException in checkUSBDeviceConnected() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FMRadioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist checkUsbExternalChipset(Landroid/hardware/usb/UsbDevice;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    const/16 v1, 0x4e8

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const v1, 0xa054

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const v1, 0xa059

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    const v1, 0xa05b

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist clearMessageQueue()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist convertToPrimitives([Ljava/lang/Long;)[J
    .locals 4

    if-eqz p1, :cond_1

    array-length v0, p1

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getAFRMSSISamples()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAFRMSSISamples()I

    move-result v0

    return v0
.end method

.method private blacklist getAFRMSSIThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAFRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method private blacklist getAFValid_th()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAFValid_th()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getAF_th()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getAF_th()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getATJ()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_ATJ_config:I

    return v0
.end method

.method private blacklist getBlendPAMD_th()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    return v0
.end method

.method private blacklist getBlendRSSI_th()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    return v0
.end method

.method private blacklist getBlendRmssi()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getBlendRmssi()I

    move-result v0

    return v0
.end method

.method private blacklist getBlendSinr()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getBlendSinr()I

    move-result v0

    return v0
.end method

.method private blacklist getCFOTh12()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCFOTh12()I

    move-result v0

    return v0
.end method

.method private blacklist getCnt_th()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return v0
.end method

.method private blacklist getCnt_th_2()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    return v0
.end method

.method private blacklist getDeSenseList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getDeSenseList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getFakeChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getFakeChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getFrequencyOffsetThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getFrequencyOffsetThreshold()I

    move-result v0

    return v0
.end method

.method private blacklist getGoodChannelRMSSIThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getGoodChannelRMSSIThreshold()I

    move-result v0

    return v0
.end method

.method private blacklist getHybridSearch()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getHybridSearch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getIFCount1()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    return v0
.end method

.method private blacklist getIFCount2()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    return v0
.end method

.method private blacklist getNoisePowerThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getNoisePowerThreshold()I

    move-result v0

    return v0
.end method

.method private blacklist getOffChannelThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getOffChannelThreshold()I

    move-result v0

    return v0
.end method

.method private blacklist getOnChannelThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getOnChannelThreshold()I

    move-result v0

    return v0
.end method

.method private blacklist getPilotPowerThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getPilotPowerThreshold()I

    move-result v0

    return v0
.end method

.method private blacklist getPropertyProductName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getRMSSIFirstStage()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getRMSSIFirstStage()I

    move-result v0

    return v0
.end method

.method private blacklist getRSSI_th()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->getRssiThreshold()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return v0
.end method

.method private blacklist getRSSI_th_2()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    return v0
.end method

.method private blacklist getSINRFirstStage()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSINRFirstStage()I

    move-result v0

    return v0
.end method

.method private blacklist getSINRSamples()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSINRSamples()I

    move-result v0

    return v0
.end method

.method private blacklist getSINRThreshold()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSINRThreshold()I

    move-result v0

    return v0
.end method

.method private blacklist getSNR_th()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return v0
.end method

.method private blacklist getSNR_th_2()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    return v0
.end method

.method private blacklist getSearchAlgoType()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSearchAlgoType()I

    move-result v0

    return v0
.end method

.method private blacklist getSeekDC()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->getSeekDC()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSeekDC()I

    move-result v0

    return v0
.end method

.method private blacklist getSeekDesenseRSSI()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    return v0
.end method

.method private blacklist getSeekQA()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->getSeekQA()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSeekQA()I

    move-result v0

    return v0
.end method

.method private blacklist getSeekSMG()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    return v0
.end method

.method private blacklist getSoftMuteCoeff()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    return-wide v0
.end method

.method private blacklist getSoftStereoBlendCoeff()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    return-wide v0
.end method

.method private blacklist getSoftStereoBlendRef()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    return-wide v0
.end method

.method private blacklist getSoftmute_th()I
    .locals 1

    iget v0, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    return v0
.end method

.method private blacklist handleAvrcpMode()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_avc_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v1, :cond_1

    const-string v1, "Avrcp mode enabled!!!"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    const-wide/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    goto :goto_1

    :cond_1
    const-string v1, "Avrcp mode disabled"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current_stream_volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->setVolume(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist handleBikeMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isBikeMode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    if-eqz v0, :cond_1

    const-string v0, "bike mode enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    goto :goto_0

    :cond_1
    const-string v0, "bike mode disabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private blacklist inDirectModeBroadcast()V
    .locals 3

    const-string v0, "Broadcast audio focus loss intent"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "inDirect.mode.audioFocusLoss"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.sec.android.app.fm"

    const-string v2, "com.sec.android.app.fm.receiver.AudioFocusLossReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist isCTSTestApp()Z
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const-string v6, "com.samsung.cts.SamsungMediaFmradio"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private blacklist isCherokeeChip()Z
    .locals 2

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isFmTestApp()Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "com.sec.android.fmtestapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private blacklist isValidPackage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FMRadioService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized blacklist offInternal(IZ)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-wide/16 v1, 0xa

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->cancelSeek()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "FMRadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InterruptedException in wait() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "offInternal :: reasonCode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const/4 v5, 0x1

    if-nez v4, :cond_2

    if-eqz p2, :cond_1

    const-string/jumbo v0, "offInternal :: remove audiofocus "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    monitor-exit p0

    return v5

    :cond_2
    :try_start_3
    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mOffProgress:Z

    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->FEATURE_INDIRECT_MODE:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v6, 0x7

    if-nez v4, :cond_3

    :try_start_4
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v4, :cond_3

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v4, v6, :cond_4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v1

    goto/16 :goto_5

    :cond_3
    :goto_1
    :try_start_5
    invoke-virtual {p0, v5}, Lcom/android/server/FMRadioService;->mute(Z)V

    invoke-direct {p0, v1, v2}, Lcom/android/server/FMRadioService;->setDelay(J)V

    :cond_4
    if-nez p2, :cond_5

    move v1, v5

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_6

    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mRecFinishNotified:Z

    if-nez v1, :cond_6

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :cond_6
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mRecFinishNotified:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_7

    :try_start_8
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRecFinishNotified:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    :goto_3
    :try_start_9
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eq v1, v6, :cond_8

    :try_start_a
    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_8
    :try_start_b
    const-string/jumbo v1, "offInternal Turning off FM radio"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v1, :cond_b

    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v1, v0}, Lcom/android/server/PlayerExternalChipsetBase;->setRdsEnable(Z)Z

    :cond_9
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v1, v0}, Lcom/android/server/PlayerExternalChipsetBase;->stopNotifyThread(Z)V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v1}, Lcom/android/server/PlayerExternalChipsetBase;->off()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "off external chip set"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/16 v2, 0xb

    if-ne p1, v2, :cond_a

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    :cond_a
    const-wide/16 v7, 0xc8

    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_b
    :try_start_d
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-nez v1, :cond_c

    :try_start_e
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBase;->off()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_c
    :try_start_f
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-ne v1, v6, :cond_d

    :try_start_10
    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_d
    :try_start_11
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mOffProgress:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string/jumbo v1, "off returned from native"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterBikeModeObserver()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAvrcpModeObserver()V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-nez v1, :cond_f

    :try_start_12
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z

    if-nez v1, :cond_e

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAlarmListener()V

    :cond_e
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterAllSoundOffListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterDNDStatusChangedListener()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_f
    :try_start_13
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz p2, :cond_10

    :try_start_14
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterTelephonyListener()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :cond_10
    :try_start_15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-nez v1, :cond_11

    :try_start_16
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->sendFMOFFBroadcast()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :cond_11
    :try_start_17
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-eq v2, v3, :cond_12

    if-eqz v1, :cond_12

    :try_start_18
    const-string v2, "com.sec.android.app.fm"

    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string v4, "114,115"

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/input/InputManager;->semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v2

    :try_start_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in semSetWakeKeyDynamically(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_4
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :cond_12
    nop

    :try_start_1a
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    monitor-exit p0

    return v5

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v1

    :goto_5
    :try_start_1b
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in offInternal() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mOffProgress:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :try_start_1c
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    nop

    monitor-exit p0

    return v0

    :goto_6
    :try_start_1d
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist on(Z)Z
    .locals 13

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "on"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->SURVEY_MODE_ENABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v1

    const-string v4, ""

    const-string v5, "com.sec.android.app.fm"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "FMRadioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NameNotFoundException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v5, Lcom/android/server/FMRadioService$SamsungAnalyticsRunnable;

    invoke-direct {v5, p0, v3, v4}, Lcom/android/server/FMRadioService$SamsungAnalyticsRunnable;-><init>(Lcom/android/server/FMRadioService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/FMRadioService;->mSamsungAnalyticsRunnable:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mHandlerSA:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mSamsungAnalyticsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    goto :goto_1

    :cond_1
    const-string v0, "SamsungAnalytics survey mode is not enable"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_1
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v0, :cond_2

    goto/16 :goto_e

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    monitor-exit p0

    return v1

    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBatteryListener()V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_5

    monitor-exit p0

    return v1

    :cond_5
    const/4 v0, 0x2

    const/4 v2, 0x1

    :try_start_5
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isDNDEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    move-result v3

    if-ne v3, v0, :cond_9

    :cond_7
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-eqz v3, :cond_8

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    monitor-exit p0

    return v1

    :cond_9
    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_6
    const-string v4, "FMRadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in getCallStateForSubscription() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->alarmTTSPlay:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_a

    monitor-exit p0

    return v1

    :cond_a
    :try_start_7
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_b

    monitor-exit p0

    return v2

    :cond_b
    const/16 v3, 0x9

    if-nez p1, :cond_c

    :try_start_8
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    if-nez v4, :cond_d

    :cond_c
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isFmTestApp()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isCTSTestApp()Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "AudioFocusListener registered"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    nop

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const-string v5, "FM_RADIO"

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    const-string v5, "NO_FADEOUT_FROM_AUDIOFOCUS"

    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    new-instance v5, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v5, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v5, v4}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v5, v6}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    nop

    goto :goto_3

    :cond_d
    const-string v4, "AudioFocusListener : skip the requestAudioFocus"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    const/16 v6, 0x32

    const-wide/16 v7, 0x32

    if-ge v5, v6, :cond_e

    const-string/jumbo v6, "service.media.dmb"

    invoke-static {v6, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    move v4, v6

    if-lez v4, :cond_e

    const-string v6, "DMB enabled - waiting for DMB is closed"

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    const/4 v6, 0x0

    const/4 v9, 0x5

    if-eqz v5, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "on() mIsExternalChipset "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v10, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v5

    if-ne v5, v0, :cond_f

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0, v2}, Lcom/android/server/PlayerExternalChipsetBase;->setRecordMode(Z)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->isOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->on()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    :goto_5
    const-wide/16 v10, 0x14

    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "on state mPlayerExternalChipset "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_10

    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return v1

    :cond_10
    :try_start_9
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v9, :cond_11

    const-string v0, "ext chip scan parameters setting"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/PlayerExternalChipsetBase;->setRssiThreshold(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    invoke-virtual {v0, v5}, Lcom/android/server/PlayerExternalChipsetBase;->setSeekDC(I)Z

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    invoke-virtual {v0, v5}, Lcom/android/server/PlayerExternalChipsetBase;->setSeekQA(I)Z

    :cond_11
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mBand:I

    invoke-virtual {v0, v5}, Lcom/android/server/PlayerExternalChipsetBase;->setBand(I)Z

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    invoke-virtual {v0, v5}, Lcom/android/server/PlayerExternalChipsetBase;->setChannelSpacing(I)Z

    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    invoke-direct {p0, v2}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    invoke-virtual {p0, v9, v6}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBikeModeObserver()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAvrcpModeObserver()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAlarmListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAllSoundOffListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerDNDStatusChangedListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerTelephonyListener()V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "input"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eq v5, v6, :cond_12

    if-eqz v0, :cond_12

    :try_start_a
    const-string v5, "com.sec.android.app.fm"

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string v7, "114,115"

    invoke-virtual {v0, v5, v6, v7}, Landroid/hardware/input/InputManager;->semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v5

    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in semSetWakeKeyDynamically(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_6
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    :cond_12
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return v2

    :cond_13
    :try_start_c
    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-wide/16 v7, 0x0

    if-ne v5, v3, :cond_16

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v5}, Lcom/android/server/FMPlayerNativeBase;->preInitialize()J

    move-result-wide v10

    cmp-long v5, v10, v7

    if-lez v5, :cond_15

    invoke-direct {p0, v2}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v5

    sget-boolean v10, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v10, :cond_14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OnAudioFocusChangeListener switch on mNeedResumeToFreq:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "setOutputPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_7

    :cond_14
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OnAudioFocusChangeListener switch setOutputPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_7
    iget-object v10, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v10, v5}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    const-wide/16 v10, 0xc8

    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V

    goto :goto_8

    :cond_15
    const-string v0, "FM preInitialize() failed"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return v1

    :cond_16
    :goto_8
    :try_start_d
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v5}, Lcom/android/server/FMPlayerNativeBase;->on()J

    move-result-wide v10

    cmp-long v5, v10, v7

    if-lez v5, :cond_25

    const-string/jumbo v5, "on returned from native"

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    if-nez v5, :cond_17

    invoke-direct {p0, v0, v2}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return v1

    :cond_17
    :try_start_e
    invoke-virtual {p0, v9, v6}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v5, 0x4

    if-eq v0, v5, :cond_18

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v3, :cond_1a

    :cond_18
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->isPathSupportSoftmute(I)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "set softmute : true"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    goto :goto_9

    :cond_19
    const-string/jumbo v0, "set softmute : false"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    :cond_1a
    :goto_9
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v5, :cond_22

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v3, :cond_1b

    goto/16 :goto_b

    :cond_1b
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v9, :cond_21

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v5, 0xa

    if-ne v0, v5, :cond_1c

    goto/16 :goto_a

    :cond_1c
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v5, 0x6

    if-ne v0, v5, :cond_1d

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setFrequencyOffsetThreshold(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setNoisePowerThreshold(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setPilotPowerThreshold(I)V

    goto/16 :goto_c

    :cond_1d
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v5, 0x7

    if-ne v0, v5, :cond_1f

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setIFCount1(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setIFCount2(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->setStereo()V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v5, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    invoke-virtual {v0, v5, v6}, Lcom/android/server/FMPlayerNativeBase;->setSoftStereoBlendCoeff(J)V

    iget-wide v5, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    const-wide/16 v9, -0x1

    cmp-long v0, v5, v9

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v5, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    invoke-virtual {v0, v5, v6}, Lcom/android/server/FMPlayerNativeBase;->setSoftMuteCoeff(J)V

    :cond_1e
    iget-wide v5, p0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v5, p0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    invoke-virtual {v0, v5, v6}, Lcom/android/server/FMPlayerNativeBase;->setSoftStereoBlendRef(J)V

    goto/16 :goto_c

    :cond_1f
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v5, 0x8

    if-ne v0, v5, :cond_20

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Lcom/android/server/FMPlayerNativeBase;->setSeekRSSI(J)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setSeekDesenseRSSI(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setSeekSMG(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setSoftmute_th(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setBlendRSSI_th(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setBlendPAMD_th(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mMtk_ATJ_config:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setATJ(I)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v5, p0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    invoke-virtual {v0, v5, v6}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    goto :goto_c

    :cond_20
    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v5, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    iget v6, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/FMRadioService;->setSignalSetting(III)V

    goto :goto_c

    :cond_21
    :goto_a
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setSeekDC(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget v5, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    invoke-virtual {v0, v5}, Lcom/android/server/FMPlayerNativeBase;->setSeekQA(I)V

    goto :goto_c

    :cond_22
    :goto_b
    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setSINRThreshold(I)V

    iget v0, p0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setSearchAlgoType(I)V

    iget v0, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setSINRFirstStage(I)V

    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setRMSSIFirstStage(I)V

    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setOnChannelThreshold(I)V

    iget v0, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setOffChannelThreshold(I)V

    iget v0, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setSINRSamples(I)V

    iget v0, p0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setCFOTh12(I)V

    iget v0, p0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setAFRMSSIThreshold(I)V

    iget v0, p0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setAFRMSSISamples(I)V

    iget v0, p0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->setGoodChannelRMSSIThreshold(I)V

    :cond_23
    :goto_c
    iget v0, p0, Lcom/android/server/FMRadioService;->mBand:I

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->setBand(I)V

    iget v0, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->setChannelSpacing(I)V

    iget v0, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    int-to-long v5, v0

    invoke-direct {p0, v5, v6}, Lcom/android/server/FMRadioService;->setDEConstant(J)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerBikeModeObserver()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAvrcpModeObserver()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAlarmListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerAllSoundOffListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerDNDStatusChangedListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->registerTelephonyListener()V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "input"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eq v5, v6, :cond_24

    if-eqz v0, :cond_24

    :try_start_f
    const-string v5, "com.sec.android.app.fm"

    iget-boolean v6, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string v7, "114,115"

    invoke-virtual {v0, v5, v6, v7}, Landroid/hardware/input/InputManager;->semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_d

    :catch_3
    move-exception v5

    :try_start_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in semSetWakeKeyDynamically(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_d
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsSetWakeKey:Z

    :cond_24
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    monitor-exit p0

    return v2

    :cond_25
    :try_start_11
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v3, :cond_26

    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    :cond_26
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string/jumbo v0, "on is failed :: remove audiofocus "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit p0

    return v1

    :catch_4
    move-exception v0

    :try_start_12
    const-string v2, "FMRadioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in on() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v3, :cond_27

    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    :cond_27
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    const-string/jumbo v2, "on is failed by exception :: remove audiofocus "

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterBatteryListener()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    monitor-exit p0

    return v1

    :cond_28
    :goto_e
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist queueUpdate(IJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queueUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "queueUpdate ## VOLUME_FADEIN"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private blacklist readParametersForCurrentRegion()V
    .locals 6

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "87500_108000"

    sget-object v4, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v3, :cond_0

    iput v2, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    :cond_1
    const-string v3, "76000_108000"

    sget-object v5, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v3, :cond_2

    iput v4, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    :cond_3
    const-string v3, "76000_90000"

    sget-object v5, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v3, :cond_4

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    :cond_4
    iput v4, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v3, :cond_6

    iput v2, p0, Lcom/android/server/FMRadioService;->mBand:I

    goto :goto_0

    :cond_6
    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    :goto_0
    sget v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FREQUENCYSPACE:I

    sparse-switch v3, :sswitch_data_0

    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    goto :goto_1

    :sswitch_0
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v3, :cond_7

    iput v0, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_2

    :cond_7
    iput v2, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_2

    :sswitch_1
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v3, :cond_8

    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_2

    :cond_8
    iput v4, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_2

    :goto_1
    if-nez v3, :cond_9

    iput v0, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    goto :goto_2

    :cond_9
    iput v2, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_4

    :catch_0
    move-exception v3

    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v4, :cond_a

    iput v2, p0, Lcom/android/server/FMRadioService;->mBand:I

    iput v0, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    iput v2, p0, Lcom/android/server/FMRadioService;->mDEConstant:I

    goto :goto_3

    :cond_a
    iput v1, p0, Lcom/android/server/FMRadioService;->mBand:I

    iput v2, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in readParametersForCurrentRegion() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FMRadioService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist readTuningParameters()V
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_FMRadio_SetLocalTunning"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCscTuningValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_SEEKDESENSERSSI"

    const-string v6, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_BLENDCOEF"

    const-string v10, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_BLENDPAMD_TH"

    const-string v11, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_BLENDRSSI_TH"

    const-string v12, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SOFTMUTE_TH"

    const-string v13, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_QUALCOMM_GOODCH_RMSSITH"

    const-string v14, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SOFTMUTE_PATH"

    const-string v9, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_CHIPVOLUME"

    const/16 v7, 0x9

    const/4 v8, 0x4

    const/4 v15, 0x1

    if-eqz v4, :cond_7

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v4, v8, :cond_6

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v4, v7, :cond_0

    goto/16 :goto_1

    :cond_0
    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-string v7, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_RSSI"

    const/4 v8, 0x5

    if-eq v4, v8, :cond_5

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v8, 0xa

    if-ne v4, v8, :cond_1

    goto/16 :goto_0

    :cond_1
    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v8, 0x6

    if-ne v4, v8, :cond_2

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_FREQ_OFFSET"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_NOISE_PWR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_PILOT_PWR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_b

    :cond_2
    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v8, 0x7

    if-ne v4, v8, :cond_3

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT1"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT2"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    goto/16 :goto_b

    :cond_3
    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_22

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iput-boolean v15, v0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v8, v3

    iput-wide v8, v0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    :cond_4
    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v6, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_SEEKSMG"

    invoke-virtual {v3, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    goto/16 :goto_b

    :cond_5
    :goto_0
    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_DC"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_QA"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    goto/16 :goto_b

    :cond_6
    :goto_1
    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SNR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    sget-boolean v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SUPPORT_SOFTMUTE:Z

    iput-boolean v3, v0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    iput v15, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    const/4 v3, -0x2

    iput v3, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_b

    :cond_7
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x0

    packed-switch v7, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tuning value size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_0
    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_8

    aget-object v5, v4, v18

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v5, v4, v15

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    aget-object v5, v4, v17

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    aget-object v5, v4, v16

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    aget-object v5, v4, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    const/4 v5, 0x5

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iput-boolean v15, v0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, v0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    goto :goto_2

    :cond_8
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_9

    aget-object v3, v4, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v3, v4, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    aget-object v3, v4, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    aget-object v3, v4, v16

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v3

    iput-wide v5, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    aget-object v3, v4, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v3

    iput-wide v5, v0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    const/4 v3, 0x5

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v3

    iput-wide v5, v0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    goto/16 :goto_b

    :cond_9
    :goto_2
    goto/16 :goto_b

    :pswitch_1
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v3, v8, :cond_b

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v5, 0x9

    if-ne v3, v5, :cond_a

    goto :goto_3

    :cond_a
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_22

    aget-object v3, v4, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v3, v4, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    aget-object v3, v4, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    aget-object v3, v4, v16

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v3

    iput-wide v5, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    aget-object v3, v4, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v3

    iput-wide v5, v0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    goto/16 :goto_b

    :cond_b
    :goto_3
    aget-object v3, v4, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v3, v4, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    aget-object v3, v4, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v3, v4, v16

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    aget-object v3, v4, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    sget-boolean v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SUPPORT_SOFTMUTE:Z

    iput-boolean v3, v0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    goto/16 :goto_b

    :pswitch_2
    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v5, v8, :cond_10

    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_c

    goto/16 :goto_4

    :cond_c
    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_d

    aget-object v3, v4, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v3, v4, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    aget-object v3, v4, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    aget-object v3, v4, v16

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_b

    :cond_d
    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_e

    aget-object v3, v4, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v3, v4, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    aget-object v3, v4, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    aget-object v3, v4, v16

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v3

    iput-wide v5, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    goto/16 :goto_b

    :cond_e
    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_22

    aget-object v5, v4, v18

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v5, v4, v15

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    aget-object v5, v4, v17

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    aget-object v5, v4, v16

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    iput-boolean v15, v0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, v0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    :cond_f
    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    goto/16 :goto_b

    :cond_10
    :goto_4
    aget-object v3, v4, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v3, v4, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    aget-object v3, v4, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v3, v4, v16

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    sget-boolean v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SUPPORT_SOFTMUTE:Z

    iput-boolean v3, v0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_b

    :pswitch_3
    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v7, 0x5

    if-eq v5, v7, :cond_17

    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v7, 0xa

    if-ne v5, v7, :cond_11

    goto/16 :goto_7

    :cond_11
    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v7, 0x7

    if-ne v5, v7, :cond_12

    aget-object v3, v4, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v3, v4, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    aget-object v3, v4, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v3

    iput-wide v5, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    goto/16 :goto_b

    :cond_12
    sget v5, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_14

    aget-object v5, v4, v18

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v5, v4, v15

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    aget-object v5, v4, v17

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    iput-boolean v15, v0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, v0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    :cond_13
    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    goto :goto_5

    :cond_14
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v3, v8, :cond_16

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v5, 0x9

    if-ne v3, v5, :cond_15

    goto :goto_6

    :cond_15
    :goto_5
    goto/16 :goto_b

    :cond_16
    :goto_6
    aget-object v3, v4, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v3, v4, v15

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    aget-object v3, v4, v17

    iput-object v3, v0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    iput v15, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    const/4 v3, -0x2

    iput v3, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_b

    :cond_17
    :goto_7
    aget-object v3, v4, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v3, v4, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    aget-object v3, v4, v17

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    goto/16 :goto_b

    :pswitch_4
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v6, v8, :cond_1a

    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_18

    goto :goto_8

    :cond_18
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_22

    aget-object v6, v4, v18

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    aget-object v6, v4, v15

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    iput-boolean v15, v0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v7, v3

    iput-wide v7, v0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    :cond_19
    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    goto/16 :goto_b

    :cond_1a
    :goto_8
    aget-object v3, v4, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    aget-object v3, v4, v15

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    sget-boolean v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SUPPORT_SOFTMUTE:Z

    iput-boolean v3, v0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    iput v15, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    const/4 v3, -0x2

    iput v3, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    goto/16 :goto_b

    :pswitch_5
    sget v7, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v7, v8, :cond_21

    sget v7, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v8, 0x9

    if-ne v7, v8, :cond_1b

    goto/16 :goto_a

    :cond_1b
    sget v7, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_20

    sget v7, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1c

    goto/16 :goto_9

    :cond_1c
    sget v7, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_1d

    aget-object v3, v4, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_FREQ_OFFSET"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mFreqOffset_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_NOISE_PWR"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mNoisePwr_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SPRD_PILOT_PWR"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mPilotPwr_th:I

    goto/16 :goto_b

    :cond_1d
    sget v7, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_1e

    aget-object v3, v4, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT1"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_SLSI_IFCOUNT2"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v5, v3

    iput-wide v5, v0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    goto/16 :goto_b

    :cond_1e
    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_22

    aget-object v6, v4, v18

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    iput-boolean v15, v0, Lcom/android/server/FMRadioService;->mMtkSupportSetChipVolume:Z

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v7, v3

    iput-wide v7, v0, Lcom/android/server/FMRadioService;->mMtkChipVolume:J

    :cond_1f
    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v7, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_MEDIATEK_SEEKSMG"

    invoke-virtual {v3, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    goto :goto_b

    :cond_20
    :goto_9
    aget-object v3, v4, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_DC"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_RICHWAVE_SEEK_QA"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    goto :goto_b

    :cond_21
    :goto_a
    aget-object v3, v4, v18

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mSnr_th:I

    sget-boolean v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SUPPORT_SOFTMUTE:Z

    iput-boolean v3, v0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    iput v15, v0, Lcom/android/server/FMRadioService;->mAlgo_type:I

    const/4 v3, -0x2

    iput v3, v0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_rmssi_firststate:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_onchannel:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCnt_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_offchannel:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_sinr_samplecnt:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_cfoth12:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mCf0_th12:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssith:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mAfRmssith_th:I

    iget v3, v0, Lcom/android/server/FMRadioService;->mQualcomm_af_rmssisamplecnt:I

    iput v3, v0, Lcom/android/server/FMRadioService;->mAfRmssisampleCnt_th:I

    nop

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/FMRadioService;->mgoodChrmssi_th:I

    :cond_22
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist registerAlarmListener()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string/jumbo v1, "registering Alarm play listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerAllSoundOffListener()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string/jumbo v1, "registering AllSoundOff listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerAvrcpModeObserver()V
    .locals 5

    const-string/jumbo v0, "register avrcp mode observer"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_avc_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAvrcpObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v4, v2

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    return-void
.end method

.method private blacklist registerBatteryListener()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v1, "registering low battery listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerBikeModeObserver()V
    .locals 5

    const-string/jumbo v0, "register bike mode observer"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "isBikeMode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v4, v1

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mBikeMode:Z

    return-void
.end method

.method private blacklist registerDNDStatusChangedListener()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mDNDStatusReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string/jumbo v1, "registering DND Status change Listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerMDMCommandRec()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.knox.intent.action.SET_DEVICE_SPEAKER_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mMDMSpeakerEnabled:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string v1, "MDM command reciever registered"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerOMCChanged()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.OMC_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mOMC_Changed_Receiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string v1, "OMC changed reciever registered"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerSetPropertyListener()V
    .locals 7

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.fm.set_property"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.fm.set_volume"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/FMRadioService;->SetPropertyPermission:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo v1, "registering set property listener"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist registerSystemListener()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mSystemReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist registerTelephonyListener()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "listner already registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    const-string/jumbo v2, "registering telephony listener.."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private blacklist releaseAudioSystemMute()V
    .locals 6

    const-string/jumbo v0, "releaseAudioSystemMute "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_0
    return-void
.end method

.method private blacklist releaseWakeLock()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v2, "Lock is released"

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private blacklist remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 6

    sget-object v0, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v3, v2, Lcom/android/server/FMRadioService$ListenerRecord;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/FMRadioService$ListenerRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FMRadioService] deleted Listener :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist responedFocusEvent(I)V
    .locals 10

    const-string/jumbo v0, "still FM on in progress"

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    :pswitch_1
    const-string v0, "AUDIOFOCUS_GAIN "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2bc

    invoke-direct {p0, v0, v1}, Lcom/android/server/FMRadioService;->setDelay(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->mute(Z)V

    :cond_1
    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v0

    if-nez v0, :cond_a

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    const-wide/16 v4, -0x2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsForcestop:Z

    if-nez v0, :cond_a

    invoke-direct {p0, v3}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "slowly increase the volume till :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mCurrentResumeVol:J

    sget-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v6, v7}, Lcom/android/server/FMRadioService;->setVolume(J)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x320

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->setVolume(J)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v1

    iget-wide v8, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    long-to-int v8, v8

    invoke-virtual {v0, v1, v8, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_4
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsTransientPaused:Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v1

    iget-object v8, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    invoke-virtual {v0, v1, v8, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_1
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_6

    const-wide/32 v0, 0x155cc

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v1, v0}, Lcom/android/server/PlayerExternalChipsetBase;->tune(I)V

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isUnMuteRadio()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    :goto_2
    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    iget-wide v1, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    :goto_3
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    iput-wide v4, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto/16 :goto_8

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z

    if-nez v0, :cond_1d

    const-string v0, "Not able to resume FM player"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto/16 :goto_8

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mOffProgress:Z

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "still FM off in progress"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    :pswitch_2
    const-string v4, "AUDIOFOCUS_LOSS "

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_b

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v1, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->cancelScan()Z

    :cond_c
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_4

    :cond_d
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_e

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v1, :cond_f

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->cancelSeek()V

    :cond_f
    sget-wide v0, Lcom/android/server/FMRadioService;->curFreq:J

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_4

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    :goto_4
    invoke-direct {p0, v3, v2}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    goto/16 :goto_8

    :cond_11
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v1, :cond_1d

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    :pswitch_3
    const-string v2, "AUDIOFOCUS_LOSS_TRANSIENT "

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_12

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v1, :cond_13

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->cancelScan()Z

    :cond_13
    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_5

    :cond_14
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_15

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v1, :cond_16

    :cond_15
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->cancelSeek()V

    :cond_16
    sget-wide v0, Lcom/android/server/FMRadioService;->curFreq:J

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_5

    :cond_17
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    :goto_5
    const/16 v0, 0xb

    invoke-direct {p0, v0, v3}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    goto :goto_6

    :cond_18
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mOnProgress:Z

    if-eqz v1, :cond_19

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioFocusHandler:Lcom/android/server/FMRadioService$AudioFocusHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/FMRadioService$AudioFocusHandler;->sendEmptyMessage(I)Z

    :cond_19
    :goto_6
    iput-boolean v3, p0, Lcom/android/server/FMRadioService;->mNeedToResumeFM:Z

    goto :goto_8

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-eqz v0, :cond_1a

    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding O"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK - recoding X"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_1b

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mScanFreq:J

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_7

    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    if-eqz v0, :cond_1c

    sget-wide v0, Lcom/android/server/FMRadioService;->curFreq:J

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    goto :goto_7

    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mNeedResumeToFreq:J

    :goto_7
    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsTransientDuck:Z

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    :cond_1d
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist sendFMOFFBroadcast()V
    .locals 3

    const-string v0, "Sending broadcast FM is in OFF state"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.fm.player_lock.status.off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.fm"

    const-string v2, "com.sec.android.app.fm.widget.FMRadioProvider"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist sendFMONBroadcast(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "Sending broadcast FM is in ON state"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.app.fm.auto.on"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.sec.android.app.fm"

    const-string v2, "com.sec.android.app.fm.receiver.AutoResumeReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "freq"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sendFMONBroadcast : data is null"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private blacklist sendInfoSamsungAnalytics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendInfoSamsungAnalytics ,packageName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "tracking_id"

    const-string v2, "4M3-399-1025498"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "feature"

    const-string v2, "SBKS"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "sm_sdk_id"

    const-string v3, "Galaxy FM Radio SDK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "sm_sdk_client_pkg_name"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "sm_sdk_client_pkg_version"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FMRadioService"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SALog jsonstring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const-string v2, "extra"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pkg_name"

    const-string v3, "com.samsung.android.sdk.fmradio"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v3, "com.sec.android.diagmonagent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "SALog sendbroadcast"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist setAFRMSSISamples(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAFRMSSISamples(I)V

    return-void
.end method

.method private blacklist setAFRMSSIThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAFRMSSIThreshold(I)V

    return-void
.end method

.method private blacklist setAFValid_th(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAFValid_th(I)V

    :cond_0
    return-void
.end method

.method private blacklist setAF_th(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setAF_th(I)V

    :cond_0
    return-void
.end method

.method private blacklist setATJ(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_ATJ_config:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setATJ(I)V

    return-void
.end method

.method private blacklist setBlendPAMD_th(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_blendpamd_th:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBlendPAMD_th(I)V

    return-void
.end method

.method private blacklist setBlendRSSI_th(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_blendrssi_th:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBlendRSSI_th(I)V

    return-void
.end method

.method private blacklist setBlendRmssi(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBlendRmssi(I)V

    return-void
.end method

.method private blacklist setBlendSinr(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBlendSinr(I)V

    return-void
.end method

.method private blacklist setCFOTh12(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setCFOTh12(I)V

    return-void
.end method

.method private blacklist setCnt_th(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th:I

    return-void
.end method

.method private blacklist setCnt_th_2(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mCnt_th_2:I

    return-void
.end method

.method private blacklist setDEConstant(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setDEConstant(J)V

    :cond_0
    return-void
.end method

.method private blacklist setDeSenseList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setDeSenseList(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setDelay(J)V
    .locals 3

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterruptedException in sleep() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FMRadioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist setFMAudioPath(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFMAudioPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsFMAudioPathOn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    if-eqz p1, :cond_1

    const-string/jumbo v0, "g_fmradio_enable=true"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "g_fmradio_enable=false"

    :goto_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setFakeChannel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setFakeChannel(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setFrequencyOffsetThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setFrequencyOffsetThreshold(I)V

    return-void
.end method

.method private blacklist setGoodChannelRMSSIThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setGoodChannelRMSSIThreshold(I)V

    return-void
.end method

.method private blacklist setHybridSearch(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setHybridSearch(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setIFCount1(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount1:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setIFCount1(I)V

    return-void
.end method

.method private blacklist setIFCount2(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mSlsi_ifcount2:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setIFCount2(I)V

    return-void
.end method

.method private blacklist setNoisePowerThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setNoisePowerThreshold(I)V

    return-void
.end method

.method private blacklist setOffChannelThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setOffChannelThreshold(I)V

    return-void
.end method

.method private blacklist setOnChannelThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setOnChannelThreshold(I)V

    return-void
.end method

.method private blacklist setPilotPowerThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setPilotPowerThreshold(I)V

    return-void
.end method

.method private blacklist setRMSSIFirstStage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setRMSSIFirstStage(I)V

    return-void
.end method

.method private blacklist setRSSI_th(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    return-void
.end method

.method private blacklist setRSSI_th_2(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mRssi_th_2:I

    return-void
.end method

.method private blacklist setSINRFirstStage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSINRFirstStage(I)V

    return-void
.end method

.method private blacklist setSINRSamples(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSINRSamples(I)V

    return-void
.end method

.method private blacklist setSINRThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSINRThreshold(I)V

    return-void
.end method

.method private blacklist setSNR_th(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th:I

    return-void
.end method

.method private blacklist setSNR_th_2(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/FMRadioService;->mSnr_th_2:I

    return-void
.end method

.method private blacklist setSearchAlgoType(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSearchAlgoType(I)V

    :cond_0
    return-void
.end method

.method private blacklist setSeekDC(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0, p1}, Lcom/android/server/PlayerExternalChipsetBase;->setSeekDC(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSeekDC(I)V

    return-void
.end method

.method private blacklist setSeekDesenseRSSI(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_seekdesenserssi:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSeekDesenseRSSI(I)V

    return-void
.end method

.method private blacklist setSeekQA(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0, p1}, Lcom/android/server/PlayerExternalChipsetBase;->setSeekQA(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSeekQA(I)V

    return-void
.end method

.method private blacklist setSeekRSSI(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/PlayerExternalChipsetBase;->setRssiThreshold(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSeekRSSI(J)V

    return-void
.end method

.method private blacklist setSeekSMG(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mMtk_seeksmg:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSeekSMG(I)V

    return-void
.end method

.method private blacklist setSeekSNR(J)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSeekSNR(J)V

    :cond_0
    return-void
.end method

.method private blacklist setSignalSetting(III)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setRSSI_th(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p2}, Lcom/android/server/FMPlayerNativeBase;->setSNR_th(I)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p3}, Lcom/android/server/FMPlayerNativeBase;->setCnt_th(I)V

    :cond_1
    return-void
.end method

.method private blacklist setSlimbusEnable(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSlimbusEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCherokeeChip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isCherokeeChip()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " volumeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isCherokeeChip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->volumeLock:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSlimbusEnable(I)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "setSlimbusEnable : Not applicable"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private blacklist setSoftMuteCoeff(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mSlsi_softmutecoeff:J

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSoftMuteCoeff(J)V

    return-void
.end method

.method private blacklist setSoftStereoBlendCoeff(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mSlsi_blendcoeff:J

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSoftStereoBlendCoeff(J)V

    return-void
.end method

.method private blacklist setSoftStereoBlendRef(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mSlsi_softstereoblendref:J

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setSoftStereoBlendRef(J)V

    return-void
.end method

.method private blacklist setSoftmute_th(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/FMRadioService;->mSoftmute_th:I

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSoftmute_th(I)V

    return-void
.end method

.method private blacklist unRegisterBatteryListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "unregistering low battery listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist unRegisterMDMCommandRec()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mMDMSpeakerEnabled:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "MDM reciever un-registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist unRegisterOMCChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mOMC_Changed_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "OMC Changed reciever un-registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist unRegisterSetPropertyListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSetPropertyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "unregistering set property listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist unRegisterTelephonyListener()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "listner is not registered"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iput-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsPhoneStateListenerRegistered:Z

    const-string/jumbo v2, "unRegisterTelephonyListener .."

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private blacklist unregisterAlarmListener()V
    .locals 2

    const-string v0, "Unregistering Alarm play listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private blacklist unregisterAllSoundOffListener()V
    .locals 2

    const-string v0, "Unregistering AllSoundOff listener"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAllSoundOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private blacklist unregisterAvrcpModeObserver()V
    .locals 2

    const-string/jumbo v0, "unregister avrcp mode observer"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAvrcpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private blacklist unregisterBikeModeObserver()V
    .locals 2

    const-string/jumbo v0, "unregister bike mode observer"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->bmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private blacklist unregisterDNDStatusChangedListener()V
    .locals 2

    const-string v0, "Unregistering DND Status change listner"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mDNDStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private blacklist unregisterSystemListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public blacklist cancelAFSwitching()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->cancelAFSwitching()V

    :cond_1
    return-void
.end method

.method public blacklist cancelScan()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v1}, Lcom/android/server/PlayerExternalChipsetBase;->stopSeek()Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v1}, Lcom/android/server/FMPlayerNativeBase;->cancelSeek()V

    :goto_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    new-array v2, v0, [Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in cancelScan() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FMRadioService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method public blacklist cancelSeek()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->stopSeek()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->cancelSeek()V

    return-void
.end method

.method public blacklist disableAF()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->disableAF()V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    return-void
.end method

.method public blacklist disableRDS()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-nez v0, :cond_1

    const-string v0, "RDS is already disabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v1, v0}, Lcom/android/server/PlayerExternalChipsetBase;->setRdsEnable(Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->disableRDS()V

    :goto_0
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->checkForWakeLockRelease()V

    return-void
.end method

.method public blacklist enableAF()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    if-eqz v0, :cond_1

    const-string v0, "AF is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->enableAF()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    return-void
.end method

.method public blacklist enableRDS()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-eqz v0, :cond_1

    const-string v0, "RDS is already enabled"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0, v1}, Lcom/android/server/PlayerExternalChipsetBase;->setRdsEnable(Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->enableRDS()V

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->acquireWakeLock()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unregisterSystemListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterSetPropertyListener()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterMDMCommandRec()V

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->unRegisterOMCChanged()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in finalize() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FMRadioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist getCurrentChannel()J
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->getTunedFrequency()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCurrentChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCurrentRSSI()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCurrentSNR()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getCurrentSNR()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getIntegerTunningParameter(Ljava/lang/String;I)I
    .locals 16

    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIntegerTunningParameter: parameterName- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string/jumbo v1, "getIntegerTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return p2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "Cnt_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "SNR_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "RSSI_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :goto_0
    move v1, v5

    :goto_1
    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v6, 0x5

    const-string/jumbo v7, "getIntegerTunningParameter() : invalid parameterName - "

    const-string v8, " for chip vendor - "

    if-eq v1, v6, :cond_c

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v9, 0xa

    if-ne v1, v9, :cond_2

    goto/16 :goto_b

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getCnt_th()I

    move-result v1

    return v1

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSNR_th()I

    move-result v1

    return v1

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getRSSI_th()I

    move-result v1

    return v1

    :cond_2
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v10, 0x8

    const/4 v11, 0x3

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/16 v14, 0x9

    const/4 v15, 0x4

    if-eq v1, v15, :cond_a

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v14, :cond_3

    goto/16 :goto_8

    :cond_3
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v13, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :cond_4
    goto :goto_2

    :sswitch_3
    const-string v1, "FrequencyOffset_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v4

    goto :goto_3

    :sswitch_4
    const-string v1, "PilotPower_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :sswitch_5
    const-string v1, "NoisePower_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v3

    goto :goto_3

    :goto_2
    move v2, v5

    :goto_3
    packed-switch v2, :pswitch_data_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getPilotPowerThreshold()I

    move-result v1

    return v1

    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getNoisePowerThreshold()I

    move-result v1

    return v1

    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getFrequencyOffsetThreshold()I

    move-result v1

    return v1

    :cond_5
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v12, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    :cond_6
    goto :goto_4

    :pswitch_6
    const-string v1, "IFCount2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    :pswitch_7
    const-string v1, "IFCount1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v3, v4

    goto :goto_5

    :goto_4
    move v3, v5

    :goto_5
    packed-switch v3, :pswitch_data_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getIFCount2()I

    move-result v1

    return v1

    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getIFCount1()I

    move-result v1

    return v1

    :cond_7
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v10, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :cond_8
    goto :goto_6

    :sswitch_6
    const-string v1, "BlendPAMD_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v2, v15

    goto :goto_7

    :sswitch_7
    const-string v1, "ATJCofig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v2, v6

    goto :goto_7

    :sswitch_8
    const-string v1, "BlendRSSI_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v2, v11

    goto :goto_7

    :sswitch_9
    const-string v1, "SeekSMG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v2, v3

    goto :goto_7

    :sswitch_a
    const-string v1, "Softmute_th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_7

    :sswitch_b
    const-string v1, "SeekDesenseRSSI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v2, v4

    goto :goto_7

    :goto_6
    move v2, v5

    :goto_7
    packed-switch v2, :pswitch_data_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIntegerTunningParameter() : invalid parameterName - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getATJ()I

    move-result v1

    return v1

    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getBlendPAMD_th()I

    move-result v1

    return v1

    :pswitch_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getBlendRSSI_th()I

    move-result v1

    return v1

    :pswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSoftmute_th()I

    move-result v1

    return v1

    :pswitch_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSeekSMG()I

    move-result v1

    return v1

    :pswitch_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSeekDesenseRSSI()I

    move-result v1

    return v1

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIntegerTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chipvendor - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_a
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3

    :cond_b
    goto/16 :goto_9

    :sswitch_c
    const-string v1, "AFRMSSIThreshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v2, v10

    goto/16 :goto_a

    :sswitch_d
    const-string v1, "RMSSIFirstStage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v2, v13

    goto/16 :goto_a

    :sswitch_e
    const-string v1, "SNR_th_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v2, 0xc

    goto/16 :goto_a

    :sswitch_f
    const-string v1, "CFOTh12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v2, v6

    goto/16 :goto_a

    :sswitch_10
    const-string v1, "SINRThreshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v2, v15

    goto/16 :goto_a

    :sswitch_11
    const-string v1, "SINRSamples"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v2, v3

    goto/16 :goto_a

    :sswitch_12
    const-string v1, "OnChannelThreshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_a

    :sswitch_13
    const-string v1, "BlendRmssi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v2, 0xe

    goto :goto_a

    :sswitch_14
    const-string v1, "RSSI_th_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v2, 0xb

    goto :goto_a

    :sswitch_15
    const-string v1, "OffChannelThreshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v2, v11

    goto :goto_a

    :sswitch_16
    const-string v1, "Cnt_th_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v2, 0xd

    goto :goto_a

    :sswitch_17
    const-string v1, "SINRFirstStage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v2, v12

    goto :goto_a

    :sswitch_18
    const-string v1, "BlendSinr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v2, 0xf

    goto :goto_a

    :sswitch_19
    const-string v1, "SearchAlgoType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v2, v4

    goto :goto_a

    :sswitch_1a
    const-string v1, "GoodChannelRMSSIThreshold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v2, v9

    goto :goto_a

    :sswitch_1b
    const-string v1, "AFRMSSISamples"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v2, v14

    goto :goto_a

    :goto_9
    move v2, v5

    :goto_a
    packed-switch v2, :pswitch_data_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getBlendSinr()I

    move-result v1

    return v1

    :pswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getBlendRmssi()I

    move-result v1

    return v1

    :pswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getCnt_th_2()I

    move-result v1

    return v1

    :pswitch_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSNR_th_2()I

    move-result v1

    return v1

    :pswitch_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getRSSI_th_2()I

    move-result v1

    return v1

    :pswitch_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getGoodChannelRMSSIThreshold()I

    move-result v1

    return v1

    :pswitch_16
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getAFRMSSISamples()I

    move-result v1

    return v1

    :pswitch_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getAFRMSSIThreshold()I

    move-result v1

    return v1

    :pswitch_18
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSINRFirstStage()I

    move-result v1

    return v1

    :pswitch_19
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getRMSSIFirstStage()I

    move-result v1

    return v1

    :pswitch_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getCFOTh12()I

    move-result v1

    return v1

    :pswitch_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSINRThreshold()I

    move-result v1

    return v1

    :pswitch_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getOffChannelThreshold()I

    move-result v1

    return v1

    :pswitch_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getOnChannelThreshold()I

    move-result v1

    return v1

    :pswitch_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSINRSamples()I

    move-result v1

    return v1

    :pswitch_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSearchAlgoType()I

    move-result v1

    return v1

    :cond_c
    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4

    :cond_d
    goto :goto_c

    :sswitch_1c
    const-string v1, "SeekQA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_d

    :sswitch_1d
    const-string v1, "SeekDC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v3, v4

    goto :goto_d

    :goto_c
    move v3, v5

    :goto_d
    packed-switch v3, :pswitch_data_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_e

    :pswitch_20
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSeekQA()I

    move-result v1

    return v1

    :pswitch_21
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->getSeekDC()I

    move-result v1

    return v1

    :goto_e
    return p2

    :sswitch_data_0
    .sparse-switch
        -0x7bea88a4 -> :sswitch_2
        -0x6debe1a4 -> :sswitch_1
        0x7898f92a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x793b6ef8 -> :sswitch_5
        -0x2cd46d5a -> :sswitch_4
        0x40effc4 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x712e4381
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x673c1014 -> :sswitch_b
        -0x54753130 -> :sswitch_a
        -0x2740286b -> :sswitch_9
        -0x54ba1f5 -> :sswitch_8
        0x3de29be1 -> :sswitch_7
        0x71d9d97a -> :sswitch_6
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x7795fd00 -> :sswitch_1b
        -0x6097aadd -> :sswitch_1a
        -0x57b635eb -> :sswitch_19
        -0x53297d95 -> :sswitch_18
        -0x4bc61798 -> :sswitch_17
        -0x49c09da3 -> :sswitch_16
        -0x401789e9 -> :sswitch_15
        -0x2b6ae3f1 -> :sswitch_14
        -0x121267c3 -> :sswitch_13
        0x2487eac7 -> :sswitch_12
        0x3471400f -> :sswitch_11
        0x3eabfaf1 -> :sswitch_10
        0x5435ba01 -> :sswitch_f
        0x5d86030f -> :sswitch_e
        0x6cdb6a9c -> :sswitch_d
        0x777fc5a2 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x6c9efae9 -> :sswitch_1d
        -0x6c9ef958 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist getLastScanResult()[J
    .locals 2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v0, "getLastScanResult - mScanChannelList null"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLongTunningParameter(Ljava/lang/String;J)J
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "long getLongTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v0, "getLongTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-wide p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v0, "CurrentSNR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "CurrentRSSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :goto_0
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLongTunningParameter() : invalid parameterName - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " for chip vendor - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v6, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v6, 0x7

    if-ne v0, v6, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :cond_2
    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentRSSI()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->getCurrentSNR()J

    move-result-wide v0

    return-wide v0

    :sswitch_2
    const-string v0, "SoftMuteCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    goto :goto_3

    :sswitch_3
    const-string v0, "SoftStereoBlendRef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_3

    :sswitch_4
    const-string v0, "SoftStereoBlendCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :goto_2
    move v1, v3

    :goto_3
    packed-switch v1, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSoftStereoBlendRef()J

    move-result-wide v0

    return-wide v0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSoftMuteCoeff()J

    move-result-wide v0

    return-wide v0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getSoftStereoBlendCoeff()J

    move-result-wide v0

    return-wide v0

    :cond_3
    :goto_4
    return-wide p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78c176d0 -> :sswitch_1
        0x35e9415e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x28a33b56 -> :sswitch_4
        0x681de184 -> :sswitch_3
        0x69f7a436 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist getMaxVolume()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xf

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getMaxVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPlayedFreq()J
    .locals 2

    sget-wide v0, Lcom/android/server/FMRadioService;->curFreq:J

    return-wide v0
.end method

.method public blacklist getSoftMuteMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getSoftMuteMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getStringTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string/jumbo v0, "getStringTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-object p2

    :cond_0
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, " for chipvendor - "

    const-string/jumbo v4, "getStringTunningParameter() : invalid parameterName - "

    const/4 v5, -0x1

    if-eq v0, v1, :cond_4

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v0, "FakeChannel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :sswitch_1
    const-string v0, "DeSenseList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :goto_0
    move v2, v5

    :goto_1
    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getDeSenseList()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getFakeChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getStringTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_5
    goto :goto_3

    :pswitch_2
    const-string v0, "HybridSearch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :goto_3
    move v2, v5

    :goto_4
    packed-switch v2, :pswitch_data_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->getHybridSearch()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_5
    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x7f620235 -> :sswitch_1
        -0x35ee1432 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x12b0651c
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public blacklist getVolume()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->getVolume()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->getVolume()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist isAFEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAFEnable:Z

    return v0
.end method

.method public blacklist isAirPlaneMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mAirPlaneEnabled:Z

    return v0
.end method

.method public blacklist isAllSoundOff()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_sound_off"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public blacklist isBatteryLow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsBatteryLow:Z

    return v0
.end method

.method public blacklist isBusy()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist isDNDEnable()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v4

    iget v5, v4, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    move v2, v1

    :cond_2
    return v2
.end method

.method public blacklist isDeviceSpeakerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMDMSpeakerEnabled:Z

    return v0
.end method

.method public blacklist isHeadsetPlugged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public blacklist isOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    return v0
.end method

.method public blacklist isPathSupportSoftmute(I)Z
    .locals 2

    const-string v0, "Both"

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    const-string v1, "Speaker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mSoftmutePath:Ljava/lang/String;

    const-string v1, "Headset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isRDSEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    return v0
.end method

.method public blacklist isScanning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    return v0
.end method

.method public blacklist isSeeking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    return v0
.end method

.method public blacklist isTvOutPlugged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsTvOutPlugged:Z

    return v0
.end method

.method public blacklist isUnMuteRadio()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isAllSoundOff()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isDNDEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist mute(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mute - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->muteOn()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->muteOn()V

    :goto_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "g_fmradio_mute=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isDNDEnable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isAllSoundOff()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->muteOff()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->muteOff()V

    :goto_1
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "g_fmradio_mute=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string v0, "AllSoundOff or DND is enabled. So FMRadio is muted."

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist notifyEvent(ILjava/lang/Object;)V
    .locals 13

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eqz v0, :cond_3

    if-ne p1, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mOffProgress:Z

    if-nez v0, :cond_2

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isUnMuteRadio()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v3, "g_fmradio_mute=false"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    :cond_1
    :goto_0
    const-string/jumbo v0, "notifyEvent Turning on FM radio"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "Fail to notify turning on FM radio "

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->semGetStreamType(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/PlayerExternalChipsetBase;->setVolume(I)Z

    :cond_4
    sget-object v0, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_7

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total listener:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_2
    if-ltz v3, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notifying listener:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    if-eqz p2, :cond_7

    :try_start_1
    move-object v4, p2

    check-cast v4, Lcom/android/server/FMPlayerNativeBase$PIECCData;

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    iget v6, v4, Lcom/android/server/FMPlayerNativeBase$PIECCData;->mPI:I

    iget v7, v4, Lcom/android/server/FMPlayerNativeBase$PIECCData;->mECC:I

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onProgrammeIdentificationExtendedCountryCodesReceived(II)V

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    monitor-exit v5

    goto :goto_3

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6

    :cond_6
    :goto_3
    goto/16 :goto_5

    :cond_7
    const-string/jumbo v4, "notifying : EVENT_PIECC_EVENT : data is null !!!"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_REC_FINISH to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRecordingFinished()V

    goto/16 :goto_5

    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_RTPLUS_EVENT to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_8

    move-object v4, p2

    check-cast v4, Lcom/android/server/FMPlayerNativeBase$RTPlusData;

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v6, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    iget v7, v4, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mContentType1:I

    iget v8, v4, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mStartPos1:I

    iget v9, v4, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mAdditionalLen1:I

    iget v10, v4, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mContentType2:I

    iget v11, v4, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mStartPos2:I

    iget v12, v4, Lcom/android/server/FMPlayerNativeBase$RTPlusData;->mAdditionalLen2:I

    invoke-interface/range {v6 .. v12}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioTextPlusReceived(IIIIII)V

    goto/16 :goto_5

    :cond_8
    const-string/jumbo v4, "notifying : EVENT_RTPLUS_EVENT : data is null !!!"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_VOLUME_LOCK to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onVolumeLocked()V

    goto/16 :goto_5

    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_AF_RECEIVED to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_9

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v6, v6, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v6, v4, v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onAlternateFrequencyReceived(J)V

    goto/16 :goto_5

    :cond_9
    const-string/jumbo v4, "notifying : EVENT_AF_RECEIVED : data is null !!!"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_AF_STARTED to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onAlternateFrequencyStarted()V

    goto/16 :goto_5

    :pswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_RDS_DISABLED to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemDisabled()V

    goto/16 :goto_5

    :pswitch_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_RDS_ENABLED to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemEnabled()V

    goto/16 :goto_5

    :pswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying : EVENT_RDS_EVENT : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_a

    move-object v4, p2

    check-cast v4, Lcom/android/server/FMPlayerNativeBase$RDSData;

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    iget-wide v6, v4, Lcom/android/server/FMPlayerNativeBase$RDSData;->mFreq:J

    iget-object v8, v4, Lcom/android/server/FMPlayerNativeBase$RDSData;->mChannelName:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/server/FMPlayerNativeBase$RDSData;->mRadioText:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    const-string/jumbo v4, "notifying : EVENT_RDS_EVENT : data is null !!!"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_EAR_PHONE_DISCONNECT to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onHeadsetDisconnected()V

    goto/16 :goto_5

    :pswitch_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_EAR_PHONE_CONNECT to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onHeadsetConnected()V

    goto/16 :goto_5

    :pswitch_b
    if-eqz p2, :cond_c

    move-object v4, p2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/FMRadioService;->curFreq:J

    sget-boolean v6, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifying :EVENT_TUNE to : listener -->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : with data array:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v7, v7, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v7}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_b
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v6, v6, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v6, v4, v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onTuned(J)V

    goto/16 :goto_5

    :cond_c
    const-string/jumbo v4, "notifying : EVENT_TUNE : data is null !!!"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_POWER_OFF to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v4, -0x1

    if-eqz p2, :cond_d

    move-object v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v4, v5

    :cond_d
    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5, v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioDisabled(I)V

    goto/16 :goto_5

    :pswitch_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_POWER_ON to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onRadioEnabled()V

    goto/16 :goto_5

    :pswitch_e
    if-eqz p2, :cond_f

    move-object v4, p2

    check-cast v4, [Ljava/lang/Long;

    invoke-direct {p0, v4}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_e

    array-length v7, v5

    move v6, v7

    :cond_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifying :EVENT_SCAN_STOPPED to : listener -->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : with data array:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v8, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v8, v8, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v8}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v7, v7, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v7, v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanStopped([J)V

    goto/16 :goto_5

    :cond_f
    const-string/jumbo v4, "notifying : EVENT_SCAN_STOPPED : data is null !!!"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_f
    if-eqz p2, :cond_11

    move-object v4, p2

    check-cast v4, [Ljava/lang/Long;

    invoke-direct {p0, v4}, Lcom/android/server/FMRadioService;->convertToPrimitives([Ljava/lang/Long;)[J

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_10

    array-length v7, v5

    move v6, v7

    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifying :EVENT_SCAN_FINISHED to : listener -->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : with data array:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v8, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v8, v8, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v8}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v7, v7, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v7, v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanFinished([J)V

    goto/16 :goto_5

    :cond_11
    const-string/jumbo v4, "notifying : EVENT_SCAN_FINISHED : data is null !!!"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying :EVENT_SCAN_STARTED to : listener -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v4, v4, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v4}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onScanStarted()V

    goto/16 :goto_5

    :catch_0
    move-exception v4

    goto :goto_4

    :pswitch_11
    const-wide/16 v4, 0x0

    if-eqz p2, :cond_12

    move-object v6, p2

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v4, v6

    :cond_12
    sget-boolean v6, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    if-eqz v6, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifying :EVENT_CHANNEL_FOUND to : listener -->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : with freq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v7, v7, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v7}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_13
    iget-object v6, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v6, v6, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-interface {v6, v4, v5}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->onChannelFound(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :goto_4
    :try_start_4
    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in notifyEvent() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "FMRadioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "we loose "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " listener--ignore it :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v7, v7, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/FMRadioService$ListenerRecord;

    iget-object v5, v5, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    invoke-direct {p0, v5}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove done go for next i\'s value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v5, :cond_14

    if-ne p1, v2, :cond_14

    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->sendFMONBroadcast(Ljava/lang/Object;)V

    goto :goto_6

    :goto_5
    nop

    :cond_14
    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    :cond_15
    monitor-exit v0

    return-void

    :cond_16
    :goto_7
    iget-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v1, :cond_17

    if-ne p1, v2, :cond_17

    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->sendFMONBroadcast(Ljava/lang/Object;)V

    :cond_17
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist notifyRecFinish()V
    .locals 3

    const-string/jumbo v0, "notifyRecFinish EVENT_REC_FINISH"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const-string/jumbo v0, "fmradio_recoding=off"

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist off()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/FMRadioService;->offInternal(IZ)Z

    move-result v0

    return v0
.end method

.method public blacklist on()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/FMRadioService;->on(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized blacklist on_in_testmode()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/FMRadioService;->isFactoryBinary:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "on_in_testmode is called with normal binary. This function is only for Factory binary. So just return"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    move-result v3

    if-eq v3, v2, :cond_2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "FMRadioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in getCallStateForSubscription() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsOn:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    monitor-exit p0

    return v2

    :cond_3
    const/16 v3, 0x9

    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v4

    if-ne v4, v0, :cond_4

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0, v2}, Lcom/android/server/PlayerExternalChipsetBase;->setRecordMode(Z)V

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->isOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->on()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    goto :goto_4

    :cond_5
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const-wide/16 v4, 0x0

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->preInitialize()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_6

    invoke-direct {p0, v2}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    goto :goto_2

    :cond_6
    const-string v0, "FM preInitialize() failed"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :cond_7
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->on()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_8

    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    :goto_4
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, v1}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsTestMode:Z

    const/4 v0, 0x5

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/server/FMRadioService;->mute(Z)V

    invoke-direct {p0, v2}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    const-string/jumbo v0, "on_in_testmode Turning on FM radio"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v2

    :cond_9
    :try_start_5
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v0, v3, :cond_a

    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    :cond_a
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :catch_1
    move-exception v0

    :try_start_6
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v2, v3, :cond_b

    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setFMAudioPath(Z)V

    :cond_b
    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsFMAudioPathOn:Z

    iput-boolean v1, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in on_in_testmode() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->releaseWakeLock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist removeListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FMRadioService] (removeListener) :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/FMRadioService;->remove(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V

    return-void
.end method

.method public blacklist scan()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->preInitialize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    new-instance v0, Lcom/android/server/FMRadioService$ScanThread;

    invoke-direct {v0, p0}, Lcom/android/server/FMRadioService$ScanThread;-><init>(Lcom/android/server/FMRadioService;)V

    iput-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public blacklist searchAll()J
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->searchAll()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->searchAll()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist searchDown()J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->searchDown()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist searchUp()J
    .locals 3

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->searchUp()J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public blacklist seekDown()J
    .locals 4

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->mute(Z)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->seekDown()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mExtSeekFreq:J

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mExtSeekFreq:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->seekDown()J

    move-result-wide v0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    const/4 v2, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-wide v0
.end method

.method public blacklist seekUp()J
    .locals 4

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->mute(Z)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->seekUp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/FMRadioService;->mExtSeekFreq:J

    iget-wide v0, p0, Lcom/android/server/FMRadioService;->mExtSeekFreq:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->seekUp()J

    move-result-wide v0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->mute(Z)V

    iput-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    const/4 v2, 0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-wide v0
.end method

.method public blacklist setBand(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setBand(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0, p1}, Lcom/android/server/PlayerExternalChipsetBase;->setBand(I)Z

    :goto_0
    iput p1, p0, Lcom/android/server/FMRadioService;->mBand:I

    return-void
.end method

.method public blacklist setChannelSpacing(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setChannelSpacing(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0, p1}, Lcom/android/server/PlayerExternalChipsetBase;->setChannelSpacing(I)Z

    :goto_0
    return-void
.end method

.method public blacklist setFMIntenna(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setFMIntenna(Z)V

    :cond_0
    return-void
.end method

.method public blacklist setIntegerTunningParameter(Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIntegerTunningParameter:  parameterName- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  value:- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez v1, :cond_1

    const-string/jumbo v3, "setIntegerTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v3, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v3, "Cnt_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "SkipTuningValue"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v3, "SNR_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_1

    :sswitch_3
    const-string v3, "RSSI_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v7

    goto :goto_1

    :goto_0
    move v3, v8

    :goto_1
    packed-switch v3, :pswitch_data_0

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v9, 0x5

    const-string v10, " for chip vendor - "

    const-string/jumbo v11, "setIntegerTunningParameter() : invalid parameterName - "

    if-eq v3, v9, :cond_e

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v12, 0xa

    if-ne v3, v12, :cond_3

    goto/16 :goto_f

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/FMRadioService;->SkipTuning_Value()V

    return-void

    :pswitch_1
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setCnt_th(I)V

    return-void

    :pswitch_2
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSNR_th(I)V

    return-void

    :pswitch_3
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setRSSI_th(I)V

    return-void

    :cond_3
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v13, 0x8

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/16 v4, 0x9

    const/4 v5, 0x4

    if-eq v3, v5, :cond_b

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v4, :cond_4

    goto/16 :goto_b

    :cond_4
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v15, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_5
    goto :goto_2

    :sswitch_4
    const-string v3, "FrequencyOffset_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v5, v7

    goto :goto_3

    :sswitch_5
    const-string v3, "PilotPower_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v5, 0x2

    goto :goto_3

    :sswitch_6
    const-string v3, "NoisePower_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v5, v6

    goto :goto_3

    :goto_2
    move v5, v8

    :goto_3
    packed-switch v5, :pswitch_data_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_4
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setPilotPowerThreshold(I)V

    goto :goto_4

    :pswitch_5
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setNoisePowerThreshold(I)V

    goto :goto_4

    :pswitch_6
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setFrequencyOffsetThreshold(I)V

    nop

    :goto_4
    goto/16 :goto_13

    :cond_6
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v14, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    :cond_7
    goto :goto_5

    :pswitch_7
    const-string v3, "IFCount2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_6

    :pswitch_8
    const-string v3, "IFCount1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v6, v7

    goto :goto_6

    :goto_5
    move v6, v8

    :goto_6
    packed-switch v6, :pswitch_data_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_9
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setIFCount2(I)V

    goto :goto_7

    :pswitch_a
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setIFCount1(I)V

    nop

    :goto_7
    goto/16 :goto_13

    :cond_8
    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v3, v13, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    :cond_9
    goto :goto_8

    :sswitch_7
    const-string v3, "BlendPAMD_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v4, v5

    goto :goto_9

    :sswitch_8
    const-string v3, "ATJCofig"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v4, v9

    goto :goto_9

    :sswitch_9
    const-string v3, "BlendRSSI_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x3

    goto :goto_9

    :sswitch_a
    const-string v3, "SeekSMG"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v4, v6

    goto :goto_9

    :sswitch_b
    const-string v3, "Softmute_th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x2

    goto :goto_9

    :sswitch_c
    const-string v3, "SeekDesenseRSSI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v4, v7

    goto :goto_9

    :goto_8
    move v4, v8

    :goto_9
    packed-switch v4, :pswitch_data_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_a

    :pswitch_b
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setATJ(I)V

    goto :goto_a

    :pswitch_c
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setBlendPAMD_th(I)V

    goto :goto_a

    :pswitch_d
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setBlendRSSI_th(I)V

    goto :goto_a

    :pswitch_e
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSoftmute_th(I)V

    goto :goto_a

    :pswitch_f
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSeekSMG(I)V

    goto :goto_a

    :pswitch_10
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSeekDesenseRSSI(I)V

    nop

    :goto_a
    goto/16 :goto_13

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIntegerTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " chipvendor - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_b
    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_3

    :cond_c
    goto/16 :goto_c

    :sswitch_d
    const-string v3, "AFRMSSIThreshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v4, v13

    goto/16 :goto_d

    :sswitch_e
    const-string v3, "RMSSIFirstStage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v4, v15

    goto/16 :goto_d

    :sswitch_f
    const-string v3, "SNR_th_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v4, 0xc

    goto/16 :goto_d

    :sswitch_10
    const-string v3, "CFOTh12"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v4, v9

    goto/16 :goto_d

    :sswitch_11
    const-string v3, "SINRThreshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v4, v5

    goto/16 :goto_d

    :sswitch_12
    const-string v3, "SINRSamples"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v4, v6

    goto/16 :goto_d

    :sswitch_13
    const-string v3, "OnChannelThreshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v4, 0x2

    goto/16 :goto_d

    :sswitch_14
    const-string v3, "BlendRmssi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v4, 0xe

    goto :goto_d

    :sswitch_15
    const-string v3, "RSSI_th_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v4, 0xb

    goto :goto_d

    :sswitch_16
    const-string v3, "OffChannelThreshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v4, 0x3

    goto :goto_d

    :sswitch_17
    const-string v3, "Cnt_th_2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v4, 0xd

    goto :goto_d

    :sswitch_18
    const-string v3, "SINRFirstStage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v4, v14

    goto :goto_d

    :sswitch_19
    const-string v3, "BlendSinr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v4, 0xf

    goto :goto_d

    :sswitch_1a
    const-string v3, "SearchAlgoType"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v4, v7

    goto :goto_d

    :sswitch_1b
    const-string v3, "GoodChannelRMSSIThreshold"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v4, v12

    goto :goto_d

    :sswitch_1c
    const-string v3, "AFRMSSISamples"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_d

    :goto_c
    move v4, v8

    :goto_d
    packed-switch v4, :pswitch_data_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_e

    :pswitch_11
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setBlendSinr(I)V

    goto :goto_e

    :pswitch_12
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setBlendRmssi(I)V

    goto :goto_e

    :pswitch_13
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setCnt_th_2(I)V

    goto :goto_e

    :pswitch_14
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSNR_th_2(I)V

    goto :goto_e

    :pswitch_15
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setRSSI_th_2(I)V

    goto :goto_e

    :pswitch_16
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setGoodChannelRMSSIThreshold(I)V

    goto :goto_e

    :pswitch_17
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setAFRMSSISamples(I)V

    goto :goto_e

    :pswitch_18
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setAFRMSSIThreshold(I)V

    goto :goto_e

    :pswitch_19
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSINRFirstStage(I)V

    goto :goto_e

    :pswitch_1a
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setRMSSIFirstStage(I)V

    goto :goto_e

    :pswitch_1b
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setCFOTh12(I)V

    goto :goto_e

    :pswitch_1c
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSINRThreshold(I)V

    goto :goto_e

    :pswitch_1d
    iget-boolean v3, v0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v3, v2}, Lcom/android/server/FMPlayerNativeBase;->setOffChannelThreshold(I)V

    goto :goto_e

    :pswitch_1e
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setOnChannelThreshold(I)V

    goto :goto_e

    :pswitch_1f
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSINRSamples(I)V

    goto :goto_e

    :pswitch_20
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSearchAlgoType(I)V

    nop

    :cond_d
    :goto_e
    goto :goto_13

    :cond_e
    :goto_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_4

    :cond_f
    goto :goto_10

    :sswitch_1d
    const-string v3, "SeekQA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_11

    :sswitch_1e
    const-string v3, "SeekDC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v6, v7

    goto :goto_11

    :goto_10
    move v6, v8

    :goto_11
    packed-switch v6, :pswitch_data_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_12

    :pswitch_21
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSeekQA(I)V

    goto :goto_12

    :pswitch_22
    invoke-direct {v0, v2}, Lcom/android/server/FMRadioService;->setSeekDC(I)V

    nop

    :goto_12
    nop

    :goto_13
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bea88a4 -> :sswitch_3
        -0x6debe1a4 -> :sswitch_2
        -0x3ba8f63 -> :sswitch_1
        0x7898f92a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x793b6ef8 -> :sswitch_6
        -0x2cd46d5a -> :sswitch_5
        0x40effc4 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x712e4381
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x673c1014 -> :sswitch_c
        -0x54753130 -> :sswitch_b
        -0x2740286b -> :sswitch_a
        -0x54ba1f5 -> :sswitch_9
        0x3de29be1 -> :sswitch_8
        0x71d9d97a -> :sswitch_7
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x7795fd00 -> :sswitch_1c
        -0x6097aadd -> :sswitch_1b
        -0x57b635eb -> :sswitch_1a
        -0x53297d95 -> :sswitch_19
        -0x4bc61798 -> :sswitch_18
        -0x49c09da3 -> :sswitch_17
        -0x401789e9 -> :sswitch_16
        -0x2b6ae3f1 -> :sswitch_15
        -0x121267c3 -> :sswitch_14
        0x2487eac7 -> :sswitch_13
        0x3471400f -> :sswitch_12
        0x3eabfaf1 -> :sswitch_11
        0x5435ba01 -> :sswitch_10
        0x5d86030f -> :sswitch_f
        0x6cdb6a9c -> :sswitch_e
        0x777fc5a2 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x6c9efae9 -> :sswitch_1e
        -0x6c9ef958 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist setListener(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FMRadioService] setListener :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/server/FMRadioService;->mFMRadioServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    :cond_0
    new-instance v1, Lcom/android/server/FMRadioService$ListenerRecord;

    invoke-interface {p1}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/server/FMRadioService$ListenerRecord;-><init>(Lcom/samsung/android/media/fmradio/internal/IFMEventListener;Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no of listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mListeners:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setLongTunningParameter(Ljava/lang/String;J)V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "long setLongTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string/jumbo v0, "setLongTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v0, "SeekRSSI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "SeekSNR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "DEConstant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :goto_0
    move v0, v4

    :goto_1
    const-string v5, " for chip vendor - "

    const-string/jumbo v6, "setLongTunningParameter() : invalid parameterName - "

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v7, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setDEConstant(J)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSeekSNR(J)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSeekRSSI(J)V

    nop

    :goto_2
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v7, 0x7

    if-ne v0, v7, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :cond_3
    goto :goto_3

    :sswitch_3
    const-string v0, "SoftMuteCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_4

    :sswitch_4
    const-string v0, "SoftStereoBlendRef"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    goto :goto_4

    :sswitch_5
    const-string v0, "SoftStereoBlendCoeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    :goto_3
    move v1, v4

    :goto_4
    packed-switch v1, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSoftStereoBlendRef(J)V

    goto :goto_5

    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSoftMuteCoeff(J)V

    goto :goto_5

    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/android/server/FMRadioService;->setSoftStereoBlendCoeff(J)V

    nop

    :cond_4
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4409c0bb -> :sswitch_2
        -0x27402841 -> :sswitch_1
        0x3f3abeef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x28a33b56 -> :sswitch_5
        0x681de184 -> :sswitch_4
        0x69f7a436 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public blacklist setMono()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->setMono()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/PlayerExternalChipsetBase;->setSoundMode(I)Z

    :goto_0
    return-void
.end method

.method public blacklist setRecordMode(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "fm_record=1"

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "fm_record=0"

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/FMRadioService;->isRecording:Z

    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_avc_mode"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    sget-boolean v3, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v3, :cond_4

    const-string v3, " setRecordMode avrcp on"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->isRecording:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    const-wide/16 v4, 0xb

    invoke-virtual {v3, v4, v5}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    :cond_4
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v3, v0}, Lcom/android/server/FMPlayerNativeBase;->setRecordMode(I)V

    return-void
.end method

.method public blacklist setSoftmute(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSoftmute(Z)V

    :cond_0
    return-void
.end method

.method public blacklist setSpeakerOn(Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSpeakerOn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isOn()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v0}, Lcom/android/server/PlayerExternalChipsetBase;->getTunedFrequency()I

    move-result v0

    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsSeeking:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3}, Lcom/android/server/PlayerExternalChipsetBase;->stopSeek()Z

    const-wide/16 v3, 0x1e

    invoke-direct {p0, v3, v4}, Lcom/android/server/FMRadioService;->setDelay(J)V

    iget-wide v3, p0, Lcom/android/server/FMRadioService;->mExtSeekFreq:J

    long-to-int v0, v3

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3}, Lcom/android/server/PlayerExternalChipsetBase;->off()Z

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3, v2}, Lcom/android/server/PlayerExternalChipsetBase;->setRecordMode(Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3, v1}, Lcom/android/server/PlayerExternalChipsetBase;->setRecordMode(Z)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3}, Lcom/android/server/PlayerExternalChipsetBase;->on()Z

    :goto_0
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRssi_th:I

    invoke-virtual {v3, v4}, Lcom/android/server/PlayerExternalChipsetBase;->setRssiThreshold(I)V

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mBand:I

    invoke-virtual {v3, v4}, Lcom/android/server/PlayerExternalChipsetBase;->setBand(I)Z

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mChannelSpacing:I

    invoke-virtual {v3, v4}, Lcom/android/server/PlayerExternalChipsetBase;->setChannelSpacing(I)Z

    sget v3, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRichwave_seekDC:I

    invoke-virtual {v3, v4}, Lcom/android/server/PlayerExternalChipsetBase;->setSeekDC(I)Z

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    iget v4, p0, Lcom/android/server/FMRadioService;->mRichwave_seekQA:I

    invoke-virtual {v3, v4}, Lcom/android/server/PlayerExternalChipsetBase;->setSeekQA(I)Z

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3}, Lcom/android/server/PlayerExternalChipsetBase;->muteOn()V

    :cond_3
    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3, v0}, Lcom/android/server/PlayerExternalChipsetBase;->tune(I)V

    iget-boolean v3, p0, Lcom/android/server/FMRadioService;->mRDSEnable:Z

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3, v2}, Lcom/android/server/PlayerExternalChipsetBase;->setRdsEnable(Z)Z

    :cond_4
    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1}, Lcom/android/server/FMPlayerNativeBase;->setSpeakerOn(Z)V

    :cond_6
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/FMRadioService;->setSlimbusEnable(I)V

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq v0, v3, :cond_7

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v3, 0x9

    if-ne v0, v3, :cond_a

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsSupportSoftmute:Z

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    move v0, v4

    goto :goto_2

    :cond_8
    move v0, v5

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->isPathSupportSoftmute(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "set softmute : true"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    goto :goto_3

    :cond_9
    const-string/jumbo v0, "set softmute : false"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/FMRadioService;->setSoftmute(Z)V

    :cond_a
    :goto_3
    const/4 v0, 0x6

    if-eqz p1, :cond_c

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v0, :cond_b

    const-string/jumbo v0, "set_fm_speaker=1"

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    goto :goto_4

    :cond_c
    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-ne v1, v0, :cond_d

    const-string/jumbo v0, "set_fm_speaker=0"

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->semSetRadioOutputPath(I)Z

    :goto_4
    invoke-direct {p0, v2}, Lcom/android/server/FMRadioService;->setSlimbusEnable(I)V

    return-void
.end method

.method public blacklist setStereo()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0}, Lcom/android/server/FMPlayerNativeBase;->setStereo()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/PlayerExternalChipsetBase;->setSoundMode(I)Z

    :goto_0
    return-void
.end method

.method public blacklist setStringTunningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStringTunningParameter: parameterName - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string/jumbo v0, "setStringTunningParameter:  parameterName is null. So do nothing"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v3, " for chip vendor - "

    const-string/jumbo v4, "setStringTunningParameter() : invalid parameterName - "

    const/4 v5, -0x1

    if-eq v0, v1, :cond_5

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    goto/16 :goto_3

    :cond_2
    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_3
    goto :goto_0

    :sswitch_0
    const-string v0, "FakeChannel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :sswitch_1
    const-string v0, "DeSenseList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :goto_0
    move v2, v5

    :goto_1
    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setDeSenseList(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setFakeChannel(Ljava/lang/String;)V

    nop

    :goto_2
    goto :goto_7

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStringTunningParameter() : this parameter is not support yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chipvendor - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_7

    :cond_5
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_6
    goto :goto_4

    :pswitch_2
    const-string v0, "HybridSearch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :goto_4
    move v2, v5

    :goto_5
    packed-switch v2, :pswitch_data_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/server/FMRadioService;->setHybridSearch(Ljava/lang/String;)V

    nop

    :goto_6
    nop

    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f620235 -> :sswitch_1
        -0x35ee1432 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x12b0651c
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public blacklist setVolume(J)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set chipset Volume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mScanProgress:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "setVolume :: unset on ScanProgress"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_c

    const-wide/16 v2, 0xf

    cmp-long v4, p1, v2

    if-lez v4, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v4, p0, Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bluetooth_avc_mode"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v7, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mAvrcpMode:Z

    const/16 v8, 0x8

    if-eqz v5, :cond_5

    if-ne v4, v8, :cond_5

    sget-boolean v5, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    if-eqz v5, :cond_5

    const-string v5, "Avrcp on"

    invoke-static {v5}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->isRecording:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/PlayerExternalChipsetBase;->setVolume(I)Z

    goto :goto_1

    :cond_5
    iget-boolean v2, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v2, :cond_6

    long-to-int v2, p1

    iget-object v3, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v3, v2}, Lcom/android/server/PlayerExternalChipsetBase;->setVolume(I)Z

    nop

    goto :goto_1

    :cond_6
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v2, v8, :cond_7

    iget-object v2, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->setVolume(J)V

    :cond_7
    :goto_1
    iput-wide p1, p0, Lcom/android/server/FMRadioService;->mResumeVol:J

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isAllSoundOff()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/android/server/FMRadioService;->isDNDEnable()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    sget v2, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_b

    cmp-long v0, p1, v0

    if-gtz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v0, :cond_b

    invoke-virtual {p0, v7}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_3

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, v6}, Lcom/android/server/FMRadioService;->mute(Z)V

    goto :goto_3

    :cond_a
    :goto_2
    const-string/jumbo v0, "setVolume :: AllSoundOff or DND is enabled. So FMRadio is muted."

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsMute:Z

    if-nez v0, :cond_b

    invoke-virtual {p0, v7}, Lcom/android/server/FMRadioService;->mute(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_3
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NullPointerException in setVolume() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FMRadioService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :goto_4
    return-void
.end method

.method public blacklist tune(J)V
    .locals 2

    sget-boolean v0, Lcom/android/server/FMRadioService;->DEBUGGABLE:Z

    const-string/jumbo v1, "tune"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/FMRadioService;->isValidPackage()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mOffProgress:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsOn:Z

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->mute(Z)V

    iget-boolean v0, p0, Lcom/android/server/FMRadioService;->mIsExternalChipset:Z

    if-eqz v0, :cond_3

    long-to-int v0, p1

    div-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lcom/android/server/FMRadioService;->mPlayerExternalChipset:Lcom/android/server/PlayerExternalChipsetBase;

    invoke-virtual {v1, v0}, Lcom/android/server/PlayerExternalChipsetBase;->tune(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNativeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/FMPlayerNativeBase;->tune(J)V

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/FMRadioService;->mute(Z)V

    const-string/jumbo v0, "tune notify event tune"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    return-void

    :cond_4
    :goto_2
    const-string/jumbo v0, "tune can not be processed becuase FM chipset is either off or off in process"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    return-void
.end method

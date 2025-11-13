.class public Landroid/media/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManager$FineStreamTypes;,
        Landroid/media/AudioManager$NativeEventHandlerDelegate;,
        Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;,
        Landroid/media/AudioManager$MuteAwaitConnectionCallback;,
        Landroid/media/AudioManager$CallInjectionModeChangedListener;,
        Landroid/media/AudioManager$CallIRedirectionClientInfo;,
        Landroid/media/AudioManager$CallRedirectionMode;,
        Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;,
        Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;,
        Landroid/media/AudioManager$VolumeGroupCallback;,
        Landroid/media/AudioManager$AudioServerStateCallback;,
        Landroid/media/AudioManager$OnAmPortUpdateListener;,
        Landroid/media/AudioManager$AudioDeviceRole;,
        Landroid/media/AudioManager$OnAudioPortUpdateListener;,
        Landroid/media/AudioManager$DeviceVolumeBehaviorState;,
        Landroid/media/AudioManager$DeviceVolumeBehavior;,
        Landroid/media/AudioManager$RecordConfigChangeCallbackData;,
        Landroid/media/AudioManager$AudioRecordingCallbackInfo;,
        Landroid/media/AudioManager$AudioRecordingCallback;,
        Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;,
        Landroid/media/AudioManager$AudioPlaybackCallbackInfo;,
        Landroid/media/AudioManager$AudioPlaybackCallback;,
        Landroid/media/AudioManager$BlockingFocusResultReceiver;,
        Landroid/media/AudioManager$SafeWaitObject;,
        Landroid/media/AudioManager$FocusRequestResult;,
        Landroid/media/AudioManager$ServiceEventHandlerDelegate;,
        Landroid/media/AudioManager$FocusRequestInfo;,
        Landroid/media/AudioManager$OnAudioFocusChangeListener;,
        Landroid/media/AudioManager$SystemSoundEffect;,
        Landroid/media/AudioManager$AudioMode;,
        Landroid/media/AudioManager$ModeDispatcherStub;,
        Landroid/media/AudioManager$OnModeChangedListener;,
        Landroid/media/AudioManager$AudioOffloadMode;,
        Landroid/media/AudioManager$AudioDirectPlaybackMode;,
        Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;,
        Landroid/media/AudioManager$DevRoleListeners;,
        Landroid/media/AudioManager$DevRoleListenerInfo;,
        Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;,
        Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;,
        Landroid/media/AudioManager$PrefDevListenerInfo;,
        Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;,
        Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;,
        Landroid/media/AudioManager$PublicStreamTypes;,
        Landroid/media/AudioManager$Flags;,
        Landroid/media/AudioManager$EncodedSurroundOutputMode;,
        Landroid/media/AudioManager$VolumeAdjustment;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY"

.field public static final whitelist ACTION_HDMI_AUDIO_PLUG:Ljava/lang/String; = "android.media.action.HDMI_AUDIO_PLUG"

.field public static final whitelist ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final whitelist ACTION_MICROPHONE_MUTE_CHANGED:Ljava/lang/String; = "android.media.action.MICROPHONE_MUTE_CHANGED"

.field public static final whitelist ACTION_SCO_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.media.SCO_AUDIO_STATE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_SCO_AUDIO_STATE_UPDATED:Ljava/lang/String; = "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

.field public static final whitelist ACTION_SPEAKERPHONE_STATE_CHANGED:Ljava/lang/String; = "android.media.action.SPEAKERPHONE_STATE_CHANGED"

.field public static final whitelist ACTION_VOLUME_CHANGED:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ADJUST_LOWER:I = -0x1

.field public static final whitelist ADJUST_MUTE:I = -0x64

.field public static final whitelist ADJUST_RAISE:I = 0x1

.field public static final whitelist ADJUST_SAME:I = 0x0

.field public static final whitelist ADJUST_TOGGLE_MUTE:I = 0x65

.field public static final whitelist ADJUST_UNMUTE:I = 0x64

.field public static final greylist-max-o AUDIOFOCUS_FLAGS_APPS:I = 0x3

.field public static final greylist-max-o AUDIOFOCUS_FLAGS_SYSTEM:I = 0x7

.field public static final whitelist AUDIOFOCUS_FLAG_DELAY_OK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIOFOCUS_FLAG_LOCK:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist AUDIOFOCUS_FLAG_PAUSES_ON_DUCKABLE_LOSS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist AUDIOFOCUS_FLAG_TEST:I = 0x8

.field public static final whitelist AUDIOFOCUS_GAIN:I = 0x1

.field public static final whitelist AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field public static final whitelist AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field public static final whitelist AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field public static final whitelist AUDIOFOCUS_LOSS:I = -0x1

.field public static final whitelist AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field public static final whitelist AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3

.field public static final whitelist AUDIOFOCUS_NONE:I = 0x0

.field public static final whitelist AUDIOFOCUS_REQUEST_DELAYED:I = 0x2

.field public static final whitelist AUDIOFOCUS_REQUEST_FAILED:I = 0x0

.field public static final whitelist AUDIOFOCUS_REQUEST_GRANTED:I = 0x1

.field public static final greylist-max-o AUDIOFOCUS_REQUEST_WAITING_FOR_EXT_POLICY:I = 0x64

.field static final greylist-max-o AUDIOPORT_GENERATION_INIT:I = 0x0

.field public static final whitelist AUDIO_SESSION_ID_GENERATE:I = 0x0

.field public static final blacklist CALL_REDIRECTION_AUDIO_MODES:J = 0xb4b1f8bL

.field public static final blacklist CALL_REDIRECT_NONE:I = 0x0

.field public static final blacklist CALL_REDIRECT_PSTN:I = 0x1

.field public static final blacklist CALL_REDIRECT_VOIP:I = 0x2

.field private static final greylist-max-o DEBUG:Z = false

.field public static final greylist-max-o DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final greylist-max-o DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final blacklist DEVICE_IN_BLE_HEADSET:I = -0x60000000

.field public static final greylist-max-o DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final greylist-max-o DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final greylist-max-o DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final blacklist DEVICE_IN_ECHO_REFERENCE:I = -0x70000000

.field public static final greylist-max-o DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final greylist-max-o DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final blacklist DEVICE_IN_HDMI_ARC:I = -0x78000000

.field public static final blacklist DEVICE_IN_HDMI_EARC:I = -0x77ffffff

.field public static final greylist-max-o DEVICE_IN_LINE:I = -0x7fff8000

.field public static final greylist-max-o DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final greylist-max-o DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final greylist-max-o DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final greylist-max-o DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final greylist-max-o DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final greylist-max-o DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final greylist-max-o DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final greylist-max-o DEVICE_NONE:I = 0x0

.field public static final greylist DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final greylist-max-o DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final blacklist DEVICE_OUT_BLE_BROADCAST:I = 0x20000002

.field public static final blacklist DEVICE_OUT_BLE_HEADSET:I = 0x20000000

.field public static final blacklist DEVICE_OUT_BLE_SPEAKER:I = 0x20000001

.field public static final greylist DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final greylist DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final greylist DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final greylist DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final greylist-max-o DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final greylist DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final greylist DEVICE_OUT_EARPIECE:I = 0x1

.field public static final blacklist DEVICE_OUT_ECHO_CANCELLER:I = 0x10000000

.field public static final greylist-max-o DEVICE_OUT_FM:I = 0x100000

.field public static final greylist DEVICE_OUT_HDMI:I = 0x400

.field public static final greylist-max-o DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final blacklist DEVICE_OUT_HDMI_EARC:I = 0x40001

.field public static final greylist-max-o DEVICE_OUT_LINE:I = 0x20000

.field public static final greylist-max-o DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final greylist-max-o DEVICE_OUT_SPDIF:I = 0x80000

.field public static final greylist DEVICE_OUT_SPEAKER:I = 0x2

.field public static final greylist-max-o DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final greylist-max-o DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final greylist-max-o DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final greylist-max-o DEVICE_OUT_USB_HEADSET:I = 0x4000000

.field public static final greylist DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final greylist DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_ABSOLUTE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_ABSOLUTE_MULTI_MODE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_FIXED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_FULL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DEVICE_VOLUME_BEHAVIOR_UNSET:I = -0x1

.field public static final whitelist DEVICE_VOLUME_BEHAVIOR_VARIABLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DIRECT_PLAYBACK_BITSTREAM_SUPPORTED:I = 0x4

.field public static final whitelist DIRECT_PLAYBACK_NOT_SUPPORTED:I = 0x0

.field public static final whitelist DIRECT_PLAYBACK_OFFLOAD_GAPLESS_SUPPORTED:I = 0x3

.field public static final whitelist DIRECT_PLAYBACK_OFFLOAD_SUPPORTED:I = 0x1

.field public static final whitelist ENCODED_SURROUND_OUTPUT_ALWAYS:I = 0x2

.field public static final whitelist ENCODED_SURROUND_OUTPUT_AUTO:I = 0x0

.field public static final whitelist ENCODED_SURROUND_OUTPUT_MANUAL:I = 0x3

.field public static final whitelist ENCODED_SURROUND_OUTPUT_NEVER:I = 0x1

.field public static final whitelist ENCODED_SURROUND_OUTPUT_UNKNOWN:I = -0x1

.field public static final whitelist ERROR:I = -0x1

.field public static final greylist-max-o ERROR_BAD_VALUE:I = -0x2

.field public static final whitelist ERROR_DEAD_OBJECT:I = -0x6

.field public static final greylist-max-o ERROR_INVALID_OPERATION:I = -0x3

.field public static final greylist-max-o ERROR_NO_INIT:I = -0x5

.field public static final greylist-max-o ERROR_PERMISSION_DENIED:I = -0x4

.field public static final whitelist EXTRA_AUDIO_PLUG_STATE:Ljava/lang/String; = "android.media.extra.AUDIO_PLUG_STATE"

.field public static final whitelist EXTRA_ENCODINGS:Ljava/lang/String; = "android.media.extra.ENCODINGS"

.field public static final greylist-max-o EXTRA_MASTER_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_MASTER_VOLUME_MUTED"

.field public static final whitelist EXTRA_MAX_CHANNEL_COUNT:Ljava/lang/String; = "android.media.extra.MAX_CHANNEL_COUNT"

.field public static final greylist-max-o EXTRA_PREV_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

.field public static final greylist-max-o EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final whitelist EXTRA_RINGER_MODE:Ljava/lang/String; = "android.media.EXTRA_RINGER_MODE"

.field public static final whitelist EXTRA_SCO_AUDIO_PREVIOUS_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

.field public static final whitelist EXTRA_SCO_AUDIO_STATE:Ljava/lang/String; = "android.media.extra.SCO_AUDIO_STATE"

.field public static final greylist-max-o EXTRA_STREAM_VOLUME_MUTED:Ljava/lang/String; = "android.media.EXTRA_STREAM_VOLUME_MUTED"

.field public static final whitelist EXTRA_VIBRATE_SETTING:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_SETTING"

.field public static final whitelist EXTRA_VIBRATE_TYPE:Ljava/lang/String; = "android.media.EXTRA_VIBRATE_TYPE"

.field public static final greylist-max-o EXTRA_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_DEVICES"

.field public static final whitelist EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_VOLUME_STREAM_TYPE_ALIAS:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE_ALIAS"

.field public static final whitelist EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o EXT_FOCUS_POLICY_TIMEOUT_MS:I = 0xc8

.field public static final blacklist FLAG_ABSOLUTE_VOLUME:I = 0x2000

.field public static final greylist-max-o FLAG_ACTIVE_MEDIA_ONLY:I = 0x200

.field public static final blacklist FLAG_ADJUST_LOWER:I = 0x10000

.field public static final blacklist FLAG_ADJUST_RAISE:I = 0x20000

.field public static final whitelist FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final whitelist FLAG_BLUETOOTH_ABS_VOLUME:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FLAG_DISMISS_UI_WARNINGS:I = 0x8000000

.field public static final blacklist FLAG_DISPLAY_VOLUME_CONTROL:I = 0x400000

.field public static final blacklist FLAG_DUAL_A2DP_MODE:I = 0x80000

.field public static final blacklist FLAG_FINE_VOLUME:I = 0x100000

.field public static final blacklist FLAG_FIXED_SCO_VOLUME:I = 0x40000

.field public static final greylist-max-o FLAG_FIXED_VOLUME:I = 0x20

.field public static final greylist-max-o FLAG_FROM_KEY:I = 0x1000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o FLAG_HDMI_SYSTEM_AUDIO_VOLUME:I = 0x100

.field public static final blacklist FLAG_MULTI_AUDIO_FOCUS:I = 0x10000000

.field public static final blacklist FLAG_MULTI_SOUND:I = 0x800000

.field private static final blacklist FLAG_NAMES:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_NO_VOICE_ASSISTANT:I = 0x200000

.field public static final whitelist FLAG_PLAY_SOUND:I = 0x4

.field public static final blacklist FLAG_REMOTE_MIC:I = 0x4000000

.field public static final whitelist FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final blacklist FLAG_SEC_SOUND_EFFECT_BASE:I = 0x63

.field public static final blacklist FLAG_SHOW_CSD_100_WARNINGS:I = 0x40000000

.field public static final greylist-max-o FLAG_SHOW_SILENT_HINT:I = 0x80

.field public static final whitelist FLAG_SHOW_UI:I = 0x1

.field public static final greylist-max-o FLAG_SHOW_UI_WARNINGS:I = 0x400

.field public static final greylist-max-o FLAG_SHOW_VIBRATE_HINT:I = 0x800

.field public static final blacklist FLAG_SKIP_RINGER_MODES:I = 0x1000000

.field public static final whitelist FLAG_VIBRATE:I = 0x10

.field public static final blacklist FM_RADIO:Ljava/lang/String; = "FM_RADIO"

.field private static final greylist-max-o FOCUS_CLIENT_ID_STRING:Ljava/lang/String; = "android_audio_focus_client_id"

.field public static final whitelist FX_BACK:I = 0xa

.field public static final whitelist FX_FOCUS_NAVIGATION_DOWN:I = 0x2

.field public static final whitelist FX_FOCUS_NAVIGATION_LEFT:I = 0x3

.field public static final blacklist FX_FOCUS_NAVIGATION_REPEAT_1:I = 0xc

.field public static final blacklist FX_FOCUS_NAVIGATION_REPEAT_2:I = 0xd

.field public static final blacklist FX_FOCUS_NAVIGATION_REPEAT_3:I = 0xe

.field public static final blacklist FX_FOCUS_NAVIGATION_REPEAT_4:I = 0xf

.field public static final whitelist FX_FOCUS_NAVIGATION_RIGHT:I = 0x4

.field public static final whitelist FX_FOCUS_NAVIGATION_UP:I = 0x1

.field public static final blacklist FX_HOME:I = 0xb

.field public static final whitelist FX_KEYPRESS_DELETE:I = 0x7

.field public static final whitelist FX_KEYPRESS_INVALID:I = 0x9

.field public static final whitelist FX_KEYPRESS_RETURN:I = 0x8

.field public static final whitelist FX_KEYPRESS_SPACEBAR:I = 0x6

.field public static final whitelist FX_KEYPRESS_STANDARD:I = 0x5

.field public static final whitelist FX_KEY_CLICK:I = 0x0

.field public static final whitelist GET_DEVICES_ALL:I = 0x3

.field public static final whitelist GET_DEVICES_INPUTS:I = 0x1

.field public static final whitelist GET_DEVICES_OUTPUTS:I = 0x2

.field public static final greylist-max-o INTERNAL_RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

.field public static final greylist-max-o MASTER_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.MASTER_MUTE_CHANGED_ACTION"

.field public static final whitelist MODE_CALL_REDIRECT:I = 0x5

.field public static final whitelist MODE_CALL_SCREENING:I = 0x4

.field public static final whitelist MODE_COMMUNICATION_REDIRECT:I = 0x6

.field public static final whitelist MODE_CURRENT:I = -0x1

.field public static final whitelist MODE_INVALID:I = -0x2

.field public static final whitelist MODE_IN_CALL:I = 0x2

.field public static final whitelist MODE_IN_COMMUNICATION:I = 0x3

.field public static final whitelist MODE_NORMAL:I = 0x0

.field public static final whitelist MODE_RINGTONE:I = 0x1

.field private static final greylist-max-o MSG_DEVICES_CALLBACK_REGISTERED:I = 0x0

.field private static final greylist-max-o MSG_DEVICES_DEVICES_ADDED:I = 0x1

.field private static final greylist-max-o MSG_DEVICES_DEVICES_REMOVED:I = 0x2

.field private static final greylist-max-o MSSG_FOCUS_CHANGE:I = 0x0

.field private static final greylist-max-o MSSG_PLAYBACK_CONFIG_CHANGE:I = 0x2

.field private static final greylist-max-o MSSG_RECORDING_CONFIG_CHANGE:I = 0x1

.field public static final blacklist NUM_NAVIGATION_REPEAT_SOUND_EFFECTS:I = 0x4

.field public static final greylist-max-r NUM_SOUND_EFFECTS:I = 0x17

.field public static final whitelist NUM_STREAMS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PLAYBACK_OFFLOAD_GAPLESS_SUPPORTED:I = 0x2

.field public static final whitelist PLAYBACK_OFFLOAD_NOT_SUPPORTED:I = 0x0

.field public static final whitelist PLAYBACK_OFFLOAD_SUPPORTED:I = 0x1

.field public static final whitelist PROPERTY_OUTPUT_FRAMES_PER_BUFFER:Ljava/lang/String; = "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

.field public static final whitelist PROPERTY_OUTPUT_SAMPLE_RATE:Ljava/lang/String; = "android.media.property.OUTPUT_SAMPLE_RATE"

.field public static final whitelist PROPERTY_SUPPORT_AUDIO_SOURCE_UNPROCESSED:Ljava/lang/String; = "android.media.property.SUPPORT_AUDIO_SOURCE_UNPROCESSED"

.field public static final whitelist PROPERTY_SUPPORT_MIC_NEAR_ULTRASOUND:Ljava/lang/String; = "android.media.property.SUPPORT_MIC_NEAR_ULTRASOUND"

.field public static final whitelist PROPERTY_SUPPORT_SPEAKER_NEAR_ULTRASOUND:Ljava/lang/String; = "android.media.property.SUPPORT_SPEAKER_NEAR_ULTRASOUND"

.field private static final blacklist PUBLIC_STREAM_TYPES:[I

.field public static final blacklist RECORDER_STATE_STARTED:I = 0x0

.field public static final blacklist RECORDER_STATE_STOPPED:I = 0x1

.field public static final blacklist RECORD_CONFIG_EVENT_NONE:I = -0x1

.field public static final blacklist RECORD_CONFIG_EVENT_POPUP:I = 0x63

.field public static final blacklist RECORD_CONFIG_EVENT_RELEASE:I = 0x3

.field public static final greylist-max-o RECORD_CONFIG_EVENT_START:I = 0x0

.field public static final greylist-max-o RECORD_CONFIG_EVENT_STOP:I = 0x1

.field public static final blacklist RECORD_CONFIG_EVENT_UPDATE:I = 0x2

.field public static final blacklist RECORD_RIID_INVALID:I = -0x1

.field public static final whitelist RINGER_MODE_CHANGED_ACTION:Ljava/lang/String; = "android.media.RINGER_MODE_CHANGED"

.field public static final greylist-max-o RINGER_MODE_MAX:I = 0x2

.field public static final whitelist RINGER_MODE_NORMAL:I = 0x2

.field public static final whitelist RINGER_MODE_SILENT:I = 0x0

.field public static final whitelist RINGER_MODE_VIBRATE:I = 0x1

.field public static final whitelist ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SCO_AUDIO_STATE_CONNECTED:I = 0x1

.field public static final whitelist SCO_AUDIO_STATE_CONNECTING:I = 0x2

.field public static final whitelist SCO_AUDIO_STATE_DISCONNECTED:I = 0x0

.field public static final whitelist SCO_AUDIO_STATE_ERROR:I = -0x1

.field public static final whitelist SEM_ACTION_AUDIO_BECOMING_NOISY:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY_SEC"

.field public static final whitelist SEM_ACTION_AUDIO_MODE_CHANGED:Ljava/lang/String; = "android.samsung.media.action.AUDIO_MODE"

.field public static final whitelist SEM_EXTRA_AUDIO_MODE:Ljava/lang/String; = "android.samsung.media.extra.AUDIO_MODE"

.field public static final whitelist SEM_EXTRA_VOLUME_SHOW_UI:Ljava/lang/String; = "android.media.EXTRA_VOLUME_SHOW_UI"

.field public static final whitelist SEM_EXTRA_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_DEVICES"

.field public static final whitelist SEM_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final whitelist SEM_EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final whitelist SEM_FLAG_UPDATE_STATE:I = 0x2000000

.field public static final blacklist SEM_FORCE_EARPIECE:I = 0x2711

.field public static final blacklist SEM_FORCE_NONE:I = 0x0

.field public static final blacklist SEM_OUT_DEVICE:Ljava/lang/String; = "audioParam;l_device_current_output"

.field public static final whitelist SEM_SITUATION_BURST_SHOT:I = 0x9

.field public static final whitelist SEM_SITUATION_CALL_CONNECTION:I = 0xe

.field public static final whitelist SEM_SITUATION_CALL_WAITING:I = 0xf

.field public static final whitelist SEM_SITUATION_CAMCORDING_START:I = 0x5

.field public static final whitelist SEM_SITUATION_CHARGER_CONNECTION:I = 0x10

.field public static final whitelist SEM_SITUATION_HEADSET_VOLUME:I = 0x2

.field public static final whitelist SEM_SITUATION_IMPLICIT_VOLUME:I = 0x0

.field public static final whitelist SEM_SITUATION_KEYBOARD:I = 0x2

.field public static final whitelist SEM_SITUATION_KEY_TONE:I = 0x0

.field public static final whitelist SEM_SITUATION_LOCK_SCREEN:I = 0x4

.field public static final blacklist SEM_SITUATION_LOW_BATTERY:I = 0xb

.field public static final whitelist SEM_SITUATION_MIDI:I = 0x6

.field public static final whitelist SEM_SITUATION_SHUTTER:I = 0x3

.field public static final whitelist SEM_SITUATION_SPEAKER_VOLUME:I = 0x1

.field public static final whitelist SEM_SITUATION_TOUCH_TONE:I = 0x1

.field public static final blacklist SEM_SITUATION_UNLOCK_SCREEN:I = 0x7

.field public static final whitelist SEM_SITUATION_VIDEO:I = 0x7

.field public static final whitelist SEM_SOUND_DRAG_AND_DROP:I = 0x6a

.field public static final whitelist SEM_SOUND_HW_TOUCH:I = 0x66

.field public static final whitelist SEM_SOUND_TOUCH:I = 0x64

.field public static final whitelist SEM_STREAM_BIXBY:I = 0x6

.field public static final whitelist SEM_STREAM_BLUETOOTH_SCO:I = 0x4

.field public static final whitelist SEM_STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field public static final whitelist SEM_STREAM_FM_RADIO:I = 0x1

.field public static final whitelist SEM_STREAM_SYSTEM_ENFORCED:I = 0x5

.field public static final blacklist SEM_STREAM_VIDEO_CALL:I = 0x2

.field public static final whitelist SEM_STREAM_VOICENOTE:I = 0x3

.field public static final whitelist SEM_VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field public static final blacklist SOUND_DETACH:I = 0x6a

.field public static final blacklist SOUND_SILENT_MODE_OFF:I = 0x65

.field public static final greylist SOUND_TIME_PICKER_FAST:I = 0x68

.field public static final greylist SOUND_TIME_PICKER_SCROLL:I = 0x67

.field public static final greylist SOUND_TIME_PICKER_SLOW:I = 0x69

.field public static final whitelist STREAM_ACCESSIBILITY:I = 0xa

.field public static final whitelist STREAM_ALARM:I = 0x4

.field public static final whitelist STREAM_ASSISTANT:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STREAM_BLUETOOTH_SCO:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field public static final whitelist STREAM_DTMF:I = 0x8

.field public static final blacklist STREAM_FM_RADIO:I = 0x3

.field public static final whitelist STREAM_MUSIC:I = 0x3

.field public static final greylist-max-o STREAM_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field public static final whitelist STREAM_NOTIFICATION:I = 0x5

.field public static final whitelist STREAM_RING:I = 0x2

.field public static final blacklist STREAM_SEC_VOICE_COMMUNICATION:I = 0x0

.field public static final whitelist STREAM_SYSTEM:I = 0x1

.field public static final greylist STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final greylist STREAM_TTS:I = 0x9

.field public static final blacklist STREAM_VIDEO_CALL:I = 0x0

.field public static final whitelist STREAM_VOICE_CALL:I = 0x0

.field public static final whitelist SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioManager"

.field public static final whitelist USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final whitelist VIBRATE_SETTING_CHANGED_ACTION:Ljava/lang/String; = "android.media.VIBRATE_SETTING_CHANGED"

.field public static final whitelist VIBRATE_SETTING_OFF:I = 0x0

.field public static final whitelist VIBRATE_SETTING_ON:I = 0x1

.field public static final whitelist VIBRATE_SETTING_ONLY_SILENT:I = 0x2

.field public static final whitelist VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final whitelist VIBRATE_TYPE_RINGER:I = 0x0

.field public static final greylist VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static final greylist-max-o VOLUME_MIN_DB:F = -758.0f

.field private static final blacklist sAudioAudioVolumeGroupChangedHandler:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

.field static greylist-max-o sAudioPatchesCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

.field static greylist-max-o sAudioPortGeneration:Ljava/lang/Integer;

.field static greylist-max-o sAudioPortsCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field static greylist-max-o sPreviousAudioPortsCached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sService:Landroid/media/IAudioService;

.field static blacklist sSetDeviceForceLock:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mApplicationContext:Landroid/content/Context;

.field private final greylist-max-o mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final greylist mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$FocusRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

.field private final greylist-max-o mAudioServerStateCbLock:Ljava/lang/Object;

.field private final greylist-max-o mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

.field private greylist-max-o mAudioServerStateExec:Ljava/util/concurrent/Executor;

.field private blacklist mCallIRedirectionClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioManager$CallIRedirectionClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallRedirectionLock:Ljava/lang/Object;

.field private blacklist mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

.field private final blacklist mCommDeviceChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDevRoleForCapturePresetListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

.field private final greylist-max-o mDeviceCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioDeviceCallback;",
            "Landroid/media/AudioManager$NativeEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeviceRoleListenersStatus:I

.field private blacklist mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

.field private greylist-max-o mFocusRequestsAwaitingResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/AudioManager$BlockingFocusResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFocusRequestsLock:Ljava/lang/Object;

.field private final greylist-max-o mICallBack:Landroid/os/IBinder;

.field private final blacklist mModeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/AudioManager$OnModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMuteAwaitConnDispatcherStub:Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

.field private final blacklist mMuteAwaitConnectionListenerLock:Ljava/lang/Object;

.field private blacklist mMuteAwaitConnectionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "Landroid/media/AudioManager$MuteAwaitConnectionCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mOriginalContext:Landroid/content/Context;

.field private final greylist-max-o mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

.field private greylist-max-o mPlaybackCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioManager$AudioPlaybackCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mPlaybackCallbackLock:Ljava/lang/Object;

.field private greylist-max-o mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

.field private blacklist mPrefDevDispatcherStub:Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

.field private final blacklist mPrefDevListenerLock:Ljava/lang/Object;

.field private blacklist mPrefDevListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioManager$PrefDevListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPreviousPorts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mRecCb:Landroid/media/IRecordingConfigDispatcher;

.field private greylist-max-o mRecordCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioManager$AudioRecordingCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mRecordCallbackLock:Ljava/lang/Object;

.field private final greylist-max-o mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

.field private greylist-max-o mVolumeKeyUpTime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAudioServerStateCb(Landroid/media/AudioManager;)Landroid/media/AudioManager$AudioServerStateCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioServerStateCbLock(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAudioServerStateExec(Landroid/media/AudioManager;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mAudioServerStateExec:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallIRedirectionClients(Landroid/media/AudioManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mCallIRedirectionClients:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallRedirectionLock(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mCallRedirectionLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallRedirectionModeListener(Landroid/media/AudioManager;)Landroid/media/AudioManager$CallInjectionModeChangedListener;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCommDeviceChangedListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mCommDeviceChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDevRoleForCapturePresetListeners(Landroid/media/AudioManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceCallbacks(Landroid/media/AudioManager;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusRequestsAwaitingResult(Landroid/media/AudioManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusRequestsLock(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmModeChangedListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mModeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMuteAwaitConnectionListenerLock(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMuteAwaitConnectionListeners(Landroid/media/AudioManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlaybackCallbackList(Landroid/media/AudioManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlaybackCallbackLock(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrefDevListenerLock(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mPrefDevListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrefDevListeners(Landroid/media/AudioManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecordCallbackList(Landroid/media/AudioManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecordCallbackLock(Landroid/media/AudioManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceEventHandlerDelegate(Landroid/media/AudioManager;)Landroid/media/AudioManager$ServiceEventHandlerDelegate;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioManager;->mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallIRedirectionClients(Landroid/media/AudioManager;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioManager;->mCallIRedirectionClients:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallRedirectionModeListener(Landroid/media/AudioManager;Landroid/media/AudioManager$CallInjectionModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbroadcastDeviceListChange_sync(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->broadcastDeviceListChange_sync(Landroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindFocusRequestInfo(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->findFocusRequestInfo(Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 115
    new-instance v0, Landroid/media/AudioPortEventHandler;

    invoke-direct {v0}, Landroid/media/AudioPortEventHandler;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    .line 116
    new-instance v0, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioAudioVolumeGroupChangedHandler:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    .line 424
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/media/AudioManager;->PUBLIC_STREAM_TYPES:[I

    .line 686
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    sput-object v1, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    .line 689
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FLAG_SHOW_UI"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FLAG_ALLOW_RINGER_MODES"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FLAG_PLAY_SOUND"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_REMOVE_SOUND_AND_VIBRATE"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_VIBRATE"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_FIXED_VOLUME"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_BLUETOOTH_ABS_VOLUME"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_SHOW_SILENT_HINT"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_HDMI_SYSTEM_AUDIO_VOLUME"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_ACTIVE_MEDIA_ONLY"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_SHOW_UI_WARNINGS"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_SHOW_VIBRATE_HINT"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_FROM_KEY"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_ABSOLUTE_VOLUME"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6554
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    .line 6555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    .line 6556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    .line 6557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    .line 8750
    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_FIXED_SCO_VOLUME"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8751
    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_DUAL_A2DP_MODE"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8752
    const/high16 v0, 0x100000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_FINE_VOLUME"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8753
    const/high16 v0, 0x200000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_NO_VOICE_ASSISTANT"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8754
    const/high16 v0, 0x400000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_DISPLAY_VOLUME_CONTROL"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8755
    const/high16 v0, 0x800000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_MULTI_SOUND"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8756
    const/high16 v0, 0x2000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "SEM_FLAG_UPDATE_STATE"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8757
    const/high16 v0, 0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_SKIP_RINGER_MODES"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8758
    const/high16 v0, 0x4000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_REMOTE_MIC"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8759
    const/high16 v0, 0x8000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_DISMISS_UI_WARNINGS"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8760
    const/high16 v0, 0x10000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_MULTI_AUDIO_FOCUS"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8761
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_SHOW_CSD_100_WARNINGS"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8762
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_ADJUST_LOWER"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8763
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "FLAG_ADJUST_RAISE"

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioManager;->sSetDeviceForceLock:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x8
        0xa
    .end array-data
.end method

.method public constructor greylist-max-r <init>()V
    .locals 2

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2013
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPrefDevListenerLock:Ljava/lang/Object;

    .line 2337
    new-instance v0, Landroid/media/AudioManager$1;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    .line 2385
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

    .line 2390
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    .line 3039
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mModeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 3857
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3869
    new-instance v0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    .line 3945
    new-instance v0, Landroid/media/AudioManager$2;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$2;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4052
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    .line 5095
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    .line 5126
    new-instance v0, Landroid/media/AudioManager$3;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$3;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    .line 5312
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    .line 5343
    new-instance v0, Landroid/media/AudioManager$4;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$4;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    .line 5384
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 6688
    iput-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    .line 6701
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    .line 7067
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 7157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    .line 7159
    new-instance v0, Landroid/media/AudioManager$5;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$5;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

    .line 7925
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mCommDeviceChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 8060
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mCallRedirectionLock:Ljava/lang/Object;

    .line 8557
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListenerLock:Ljava/lang/Object;

    .line 829
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2013
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPrefDevListenerLock:Ljava/lang/Object;

    .line 2337
    new-instance v0, Landroid/media/AudioManager$1;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$1;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    .line 2385
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

    .line 2390
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    .line 3039
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mModeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 3857
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3869
    new-instance v0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mServiceEventHandlerDelegate:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    .line 3945
    new-instance v0, Landroid/media/AudioManager$2;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$2;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4052
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    .line 5095
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    .line 5126
    new-instance v0, Landroid/media/AudioManager$3;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$3;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    .line 5312
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    .line 5343
    new-instance v0, Landroid/media/AudioManager$4;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$4;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    .line 5384
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 6688
    iput-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    .line 6701
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    .line 7067
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 7157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    .line 7159
    new-instance v0, Landroid/media/AudioManager$5;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$5;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Landroid/media/AudioManager;->mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

    .line 7925
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mCommDeviceChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 8060
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mCallRedirectionLock:Ljava/lang/Object;

    .line 8557
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListenerLock:Ljava/lang/Object;

    .line 836
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->setContext(Landroid/content/Context;)V

    .line 837
    return-void
.end method

.method private greylist-max-o addMicrophonesFromAudioDeviceInfo(Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6964
    .local p1, "microphones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MicrophoneInfo;>;"
    .local p2, "filterTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 6965
    .local v0, "devices":[Landroid/media/AudioDeviceInfo;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 6966
    .local v3, "device":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6967
    goto :goto_1

    .line 6969
    :cond_0
    invoke-static {v3}, Landroid/media/AudioManager;->microphoneInfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MicrophoneInfo;

    move-result-object v4

    .line 6970
    .local v4, "microphone":Landroid/media/MicrophoneInfo;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6965
    .end local v3    # "device":Landroid/media/AudioDeviceInfo;
    .end local v4    # "microphone":Landroid/media/MicrophoneInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6972
    :cond_1
    return-void
.end method

.method private blacklist addOnDevRoleForCapturePresetChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;I)I
    .locals 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "deviceRole"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "TT;I)I"
        }
    .end annotation

    .line 2263
    .local p2, "listener":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2264
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    iget-object v0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    .line 2266
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$DevRoleListeners;

    .line 2267
    .local v0, "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    if-nez v0, :cond_0

    .line 2268
    const/4 v1, -0x1

    return v1

    .line 2270
    :cond_0
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmDevRoleListenersLock(Landroid/media/AudioManager$DevRoleListeners;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2271
    :try_start_0
    invoke-static {v0, p2}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$mhasDevRoleListener(Landroid/media/AudioManager$DevRoleListeners;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2272
    const/4 v2, -0x2

    monitor-exit v1

    return v2

    .line 2275
    :cond_1
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fputmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;Ljava/util/ArrayList;)V

    .line 2278
    :cond_2
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2279
    .local v2, "oldCbCount":I
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Landroid/media/AudioManager$DevRoleListenerInfo;

    invoke-direct {v4, p0, p1, p2}, Landroid/media/AudioManager$DevRoleListenerInfo;-><init>(Landroid/media/AudioManager;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2280
    const/4 v3, 0x0

    if-nez v2, :cond_5

    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 2282
    iget-object v4, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2283
    :try_start_1
    iget v5, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    move v6, v5

    .line 2284
    .local v6, "deviceRoleListenerStatus":I
    const/4 v7, 0x1

    shl-int/2addr v7, p3

    or-int/2addr v5, v7

    iput v5, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    .line 2285
    if-eqz v6, :cond_3

    .line 2287
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v3

    .line 2289
    :cond_3
    :try_start_3
    iget-object v5, p0, Landroid/media/AudioManager;->mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

    if-nez v5, :cond_4

    .line 2290
    new-instance v5, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub-IA;)V

    iput-object v5, p0, Landroid/media/AudioManager;->mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2294
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v5

    iget-object v7, p0, Landroid/media/AudioManager;->mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

    invoke-interface {v5, v7}, Landroid/media/IAudioService;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2298
    nop

    .line 2299
    .end local v6    # "deviceRoleListenerStatus":I
    :try_start_5
    monitor-exit v4

    goto :goto_0

    .line 2296
    .restart local v6    # "deviceRoleListenerStatus":I
    :catch_0
    move-exception v3

    .line 2297
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .end local v2    # "oldCbCount":I
    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Ljava/lang/Object;, "TT;"
    .end local p3    # "deviceRole":I
    throw v5

    .line 2299
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "deviceRoleListenerStatus":I
    .restart local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .restart local v2    # "oldCbCount":I
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Ljava/lang/Object;, "TT;"
    .restart local p3    # "deviceRole":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Ljava/lang/Object;, "TT;"
    .end local p3    # "deviceRole":I
    :try_start_6
    throw v3

    .line 2301
    .end local v2    # "oldCbCount":I
    .restart local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Ljava/lang/Object;, "TT;"
    .restart local p3    # "deviceRole":I
    :cond_5
    :goto_0
    monitor-exit v1

    .line 2302
    return v3

    .line 2301
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2
.end method

.method public static final greylist-max-o adjustToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "adj"    # I

    .line 499
    sparse-switch p0, :sswitch_data_0

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown adjust mode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 505
    :sswitch_0
    const-string v0, "ADJUST_TOGGLE_MUTE"

    return-object v0

    .line 504
    :sswitch_1
    const-string v0, "ADJUST_UNMUTE"

    return-object v0

    .line 500
    :sswitch_2
    const-string v0, "ADJUST_RAISE"

    return-object v0

    .line 502
    :sswitch_3
    const-string v0, "ADJUST_SAME"

    return-object v0

    .line 501
    :sswitch_4
    const-string v0, "ADJUST_LOWER"

    return-object v0

    .line 503
    :sswitch_5
    const-string v0, "ADJUST_MUTE"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_5
        -0x1 -> :sswitch_4
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x64 -> :sswitch_1
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist audioFocusToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "focus"    # I

    .line 3742
    packed-switch p0, :pswitch_data_0

    .line 3760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AUDIO_FOCUS_UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3752
    :pswitch_0
    const-string v0, "AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE"

    return-object v0

    .line 3750
    :pswitch_1
    const-string v0, "AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK"

    return-object v0

    .line 3748
    :pswitch_2
    const-string v0, "AUDIOFOCUS_GAIN_TRANSIENT"

    return-object v0

    .line 3746
    :pswitch_3
    const-string v0, "AUDIOFOCUS_GAIN"

    return-object v0

    .line 3744
    :pswitch_4
    const-string v0, "AUDIOFOCUS_NONE"

    return-object v0

    .line 3754
    :pswitch_5
    const-string v0, "AUDIOFOCUS_LOSS"

    return-object v0

    .line 3756
    :pswitch_6
    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT"

    return-object v0

    .line 3758
    :pswitch_7
    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x3
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

.method private greylist-max-o broadcastDeviceListChange_sync(Landroid/os/Handler;)V
    .locals 6
    .param p1, "handler"    # Landroid/os/Handler;

    .line 7077
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7078
    .local v0, "current_ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v1

    .line 7079
    .local v1, "status":I
    if-eqz v1, :cond_0

    .line 7080
    return-void

    .line 7083
    :cond_0
    const/4 v2, 0x3

    if-eqz p1, :cond_1

    .line 7085
    nop

    .line 7086
    invoke-static {v0, v2}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 7087
    .local v2, "deviceList":[Landroid/media/AudioDeviceInfo;
    const/4 v3, 0x0

    .line 7088
    invoke-static {p1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 7087
    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7089
    .end local v2    # "deviceList":[Landroid/media/AudioDeviceInfo;
    goto :goto_1

    .line 7090
    :cond_1
    iget-object v3, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 7091
    invoke-static {v3, v0, v2}, Landroid/media/AudioManager;->calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v3

    .line 7092
    .local v3, "added_devices":[Landroid/media/AudioDeviceInfo;
    iget-object v4, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 7093
    invoke-static {v0, v4, v2}, Landroid/media/AudioManager;->calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 7094
    .local v2, "removed_devices":[Landroid/media/AudioDeviceInfo;
    array-length v4, v3

    if-nez v4, :cond_2

    array-length v4, v2

    if-eqz v4, :cond_5

    .line 7095
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 7096
    iget-object v5, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager$NativeEventHandlerDelegate;

    invoke-virtual {v5}, Landroid/media/AudioManager$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 7097
    if-eqz p1, :cond_4

    .line 7098
    array-length v5, v2

    if-eqz v5, :cond_3

    .line 7099
    const/4 v5, 0x2

    invoke-static {p1, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7103
    :cond_3
    array-length v5, v3

    if-eqz v5, :cond_4

    .line 7104
    const/4 v5, 0x1

    invoke-static {p1, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7095
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7113
    .end local v2    # "removed_devices":[Landroid/media/AudioDeviceInfo;
    .end local v3    # "added_devices":[Landroid/media/AudioDeviceInfo;
    .end local v4    # "i":I
    :cond_5
    :goto_1
    iput-object v0, p0, Landroid/media/AudioManager;->mPreviousPorts:Ljava/util/ArrayList;

    .line 7114
    return-void
.end method

.method private static greylist-max-o calcListDeltas(Ljava/util/ArrayList;Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;
    .locals 7
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;I)[",
            "Landroid/media/AudioDeviceInfo;"
        }
    .end annotation

    .line 6802
    .local p0, "ports_A":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    .local p1, "ports_B":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6804
    .local v0, "delta_ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    const/4 v1, 0x0

    .line 6805
    .local v1, "cur_port":Landroid/media/AudioDevicePort;
    const/4 v2, 0x0

    .local v2, "cur_index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 6806
    const/4 v3, 0x0

    .line 6807
    .local v3, "cur_port_found":Z
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/media/AudioDevicePort;

    .line 6808
    const/4 v4, 0x0

    .line 6809
    .local v4, "prev_index":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    if-nez v3, :cond_1

    .line 6811
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->id()I

    move-result v5

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioDevicePort;

    invoke-virtual {v6}, Landroid/media/AudioDevicePort;->id()I

    move-result v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :goto_2
    move v3, v5

    .line 6810
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6814
    .end local v4    # "prev_index":I
    :cond_1
    if-nez v3, :cond_2

    .line 6815
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6805
    .end local v3    # "cur_port_found":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6819
    .end local v2    # "cur_index":I
    :cond_3
    invoke-static {v0, p2}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    return-object v2
.end method

.method private blacklist checkCallRedirectionFormat(Landroid/media/AudioFormat;Z)V
    .locals 3
    .param p1, "format"    # Landroid/media/AudioFormat;
    .param p2, "isOutput"    # Z

    .line 8037
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 8038
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 8039
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, " Unsupported encoding "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8041
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    const/16 v2, 0x1f40

    if-lt v0, v2, :cond_6

    .line 8042
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    const v2, 0xbb80

    if-gt v0, v2, :cond_6

    .line 8045
    const/16 v0, 0xc

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 8046
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 8047
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, " Unsupported output channel mask "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8049
    :cond_3
    :goto_1
    if-nez p2, :cond_5

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_5

    .line 8050
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    if-ne v1, v0, :cond_4

    goto :goto_2

    .line 8051
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, " Unsupported input channel mask "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8053
    :cond_5
    :goto_2
    return-void

    .line 8043
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, " Unsupported sample rate "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkFlags(Landroid/media/AudioDevicePort;I)Z
    .locals 3
    .param p0, "port"    # Landroid/media/AudioDevicePort;
    .param p1, "flags"    # I

    .line 6741
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->role()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 6742
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->role()I

    move-result v0

    if-ne v0, v2, :cond_2

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 6741
    :goto_0
    return v2
.end method

.method private static greylist-max-o checkTypes(Landroid/media/AudioDevicePort;)Z
    .locals 1
    .param p0, "port"    # Landroid/media/AudioDevicePort;

    .line 6746
    invoke-virtual {p0}, Landroid/media/AudioDevicePort;->type()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
    .locals 1
    .param p0, "patch"    # [Landroid/media/AudioPatch;
    .param p1, "sources"    # [Landroid/media/AudioPortConfig;
    .param p2, "sinks"    # [Landroid/media/AudioPortConfig;

    .line 6461
    invoke-static {p0, p1, p2}, Landroid/media/AudioSystem;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    move-result v0

    return v0
.end method

.method public static blacklist enforceValidVolumeBehavior(I)V
    .locals 3
    .param p0, "volumeBehavior"    # I

    .line 5868
    packed-switch p0, :pswitch_data_0

    .line 5876
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal volume behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5874
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;)V"
        }
    .end annotation

    .line 6426
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 6427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6428
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/media/AudioDevicePort;

    if-eqz v1, :cond_0

    .line 6429
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDevicePort;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6427
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6432
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o findFocusRequestInfo(Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 3862
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$FocusRequestInfo;

    return-object v0
.end method

.method public static greylist-max-o flagsToString(I)Ljava/lang/String;
    .locals 6
    .param p0, "flags"    # I

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Landroid/media/AudioManager;->FLAG_NAMES:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x2c

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 709
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 710
    .local v4, "flag":I
    and-int v5, p0, v4

    if-eqz v5, :cond_1

    .line 711
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 712
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 714
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    not-int v3, v4

    and-int/2addr p0, v3

    .line 717
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "flag":I
    :cond_1
    goto :goto_0

    .line 718
    :cond_2
    if-eqz p0, :cond_4

    .line 719
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 720
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 722
    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 724
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getAudioProductStrategies()Ljava/util/List;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation

    .line 7399
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 7401
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 7402
    :catch_0
    move-exception v1

    .line 7403
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "keys"    # Ljava/lang/String;

    .line 10277
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10280
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p0}, Landroid/media/IAudioService;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 10281
    :catch_0
    move-exception v1

    .line 10282
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in getAudioServiceConfig"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10284
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist getAudioVolumeGroups()Ljava/util/List;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation

    .line 7419
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 7421
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 7422
    :catch_0
    move-exception v1

    .line 7423
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist getCallRedirectMode()I
    .locals 3

    .line 8026
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 8027
    .local v0, "mode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 8030
    :cond_0
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 8033
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 8031
    :cond_2
    :goto_0
    return v1

    .line 8029
    :cond_3
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o getContext()Landroid/content/Context;
    .locals 1

    .line 840
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/media/AudioManager;->setContext(Landroid/content/Context;)V

    .line 843
    :cond_0
    iget-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 844
    return-object v0

    .line 846
    :cond_1
    iget-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    return-object v0
.end method

.method public static blacklist getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;
    .locals 6
    .param p0, "portId"    # I
    .param p1, "flags"    # I

    .line 6856
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 6857
    return-object v0

    .line 6859
    :cond_0
    invoke-static {p1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 6860
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 6861
    .local v4, "device":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v5

    if-ne v5, p0, :cond_1

    .line 6862
    return-object v4

    .line 6860
    .end local v4    # "device":Landroid/media/AudioDeviceInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6865
    :cond_2
    return-object v0
.end method

.method public static blacklist getDeviceInfoFromType(I)Landroid/media/AudioDeviceInfo;
    .locals 1
    .param p0, "deviceType"    # I

    .line 7871
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/AudioManager;->getDeviceInfoFromTypeAndAddress(ILjava/lang/String;)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDeviceInfoFromTypeAndAddress(ILjava/lang/String;)Landroid/media/AudioDeviceInfo;
    .locals 6
    .param p0, "type"    # I
    .param p1, "address"    # Ljava/lang/String;

    .line 7894
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 7895
    .local v0, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v1, 0x0

    .line 7896
    .local v1, "deviceForType":Landroid/media/AudioDeviceInfo;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 7897
    .local v4, "device":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    if-ne v5, p0, :cond_1

    .line 7898
    move-object v1, v4

    .line 7899
    if-eqz p1, :cond_0

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7900
    :cond_0
    return-object v4

    .line 7896
    .end local v4    # "device":Landroid/media/AudioDeviceInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7904
    :cond_2
    return-object v1
.end method

.method public static greylist-max-o getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;
    .locals 3
    .param p0, "flags"    # I

    .line 6835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6836
    .local v0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v1

    .line 6837
    .local v1, "status":I
    if-eqz v1, :cond_0

    .line 6839
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/media/AudioDeviceInfo;

    return-object v2

    .line 6842
    :cond_0
    invoke-static {v0, p0}, Landroid/media/AudioManager;->infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist getDirectPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "format"    # Landroid/media/AudioFormat;
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .line 2506
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2507
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2508
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->getDirectPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method private blacklist getFmRadioPackageName()Ljava/lang/String;
    .locals 4

    .line 9146
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 9147
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 9148
    .local v1, "caller":I
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 9150
    .local v2, "packageNames":[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 9151
    const-string v3, "com.sec.android.app.fm"

    return-object v3

    .line 9153
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v2, v3

    return-object v3
.end method

.method public static blacklist getHalVersion()Ljava/lang/String;
    .locals 3

    .line 8550
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getHalVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8551
    :catch_0
    move-exception v0

    .line 8552
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioManager"

    const-string v2, "Error querying getHalVersion"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8553
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;
    .locals 3
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 3979
    if-nez p1, :cond_0

    .line 3980
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3982
    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getNthNavigationRepeatSoundEffect(I)I
    .locals 2
    .param p0, "n"    # I

    .line 3584
    packed-switch p0, :pswitch_data_0

    .line 3594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid navigation repeat sound effect id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    const/4 v0, -0x1

    return v0

    .line 3592
    :pswitch_0
    const/16 v0, 0xf

    return v0

    .line 3590
    :pswitch_1
    const/16 v0, 0xe

    return v0

    .line 3588
    :pswitch_2
    const/16 v0, 0xd

    return v0

    .line 3586
    :pswitch_3
    const/16 v0, 0xc

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .locals 2
    .param p0, "format"    # Landroid/media/AudioFormat;
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2577
    if-eqz p0, :cond_1

    .line 2580
    if-eqz p1, :cond_0

    .line 2583
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->getOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0

    .line 2581
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2578
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null AudioFormat"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getPrefDevListenerInfo(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)Landroid/media/AudioManager$PrefDevListenerInfo;
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;

    .line 2064
    iget-object v0, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2065
    return-object v1

    .line 2067
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$PrefDevListenerInfo;

    .line 2068
    .local v2, "info":Landroid/media/AudioManager$PrefDevListenerInfo;
    iget-object v3, v2, Landroid/media/AudioManager$PrefDevListenerInfo;->mListener:Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;

    if-ne v3, p1, :cond_1

    .line 2069
    return-object v2

    .line 2071
    .end local v2    # "info":Landroid/media/AudioManager$PrefDevListenerInfo;
    :cond_1
    goto :goto_0

    .line 2072
    :cond_2
    return-object v1
.end method

.method public static final blacklist getPublicStreamTypes()[I
    .locals 1

    .line 432
    sget-object v0, Landroid/media/AudioManager;->PUBLIC_STREAM_TYPES:[I

    return-object v0
.end method

.method static greylist getService()Landroid/media/IAudioService;
    .locals 2

    .line 862
    sget-object v0, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_0

    .line 863
    return-object v0

    .line 865
    :cond_0
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 866
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManager;->sService:Landroid/media/IAudioService;

    .line 867
    return-object v1
.end method

.method public static blacklist hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 7507
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7509
    if-eqz p0, :cond_0

    .line 7510
    invoke-static {p0, p1}, Landroid/media/AudioManager;->hasHapticChannelsImpl(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0

    .line 7513
    :cond_0
    sget-object v0, Landroid/media/AudioManager;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 7514
    .local v0, "cachedContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 7518
    invoke-static {v0, p1}, Landroid/media/AudioManager;->hasHapticChannelsImpl(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    return v1

    .line 7526
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IAudioService;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 7527
    :catch_0
    move-exception v1

    .line 7528
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static blacklist hasHapticChannelsImpl(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 7477
    const-string v0, "haptic-channel-count"

    const-string v1, "AudioManager"

    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    .line 7479
    .local v2, "extractor":Landroid/media/MediaExtractor;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p0, p1, v3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 7480
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7481
    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 7482
    .local v4, "format":Landroid/media/MediaFormat;
    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7483
    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v5, :cond_0

    .line 7484
    const/4 v0, 0x1

    return v0

    .line 7480
    .end local v4    # "format":Landroid/media/MediaFormat;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 7491
    :catch_0
    move-exception v0

    .line 7492
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasHapticChannels failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 7487
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 7488
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasHapticChannels failure:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7493
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 7495
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o hasPlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z
    .locals 2
    .param p1, "cb"    # Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 5101
    iget-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5103
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    iget-object v1, v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5104
    const/4 v1, 0x1

    return v1

    .line 5102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5108
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist hasPrefDevListener(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;

    .line 2077
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getPrefDevListenerInfo(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)Landroid/media/AudioManager$PrefDevListenerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o hasRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z
    .locals 2
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 5318
    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5320
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    iget-object v1, v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5321
    const/4 v1, 0x1

    return v1

    .line 5319
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5325
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o infoListFromPortList(Ljava/util/ArrayList;I)[Landroid/media/AudioDeviceInfo;
    .locals 7
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;I)[",
            "Landroid/media/AudioDeviceInfo;"
        }
    .end annotation

    .line 6772
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    const/4 v0, 0x0

    .line 6773
    .local v0, "numRecs":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDevicePort;

    .line 6774
    .local v2, "port":Landroid/media/AudioDevicePort;
    invoke-static {v2}, Landroid/media/AudioManager;->checkTypes(Landroid/media/AudioDevicePort;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, p1}, Landroid/media/AudioManager;->checkFlags(Landroid/media/AudioDevicePort;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6775
    add-int/lit8 v0, v0, 0x1

    .line 6777
    .end local v2    # "port":Landroid/media/AudioDevicePort;
    :cond_0
    goto :goto_0

    .line 6780
    :cond_1
    new-array v1, v0, [Landroid/media/AudioDeviceInfo;

    .line 6781
    .local v1, "deviceList":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    .line 6782
    .local v2, "slot":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDevicePort;

    .line 6783
    .local v4, "port":Landroid/media/AudioDevicePort;
    invoke-static {v4}, Landroid/media/AudioManager;->checkTypes(Landroid/media/AudioDevicePort;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4, p1}, Landroid/media/AudioManager;->checkFlags(Landroid/media/AudioDevicePort;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6784
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "slot":I
    .local v5, "slot":I
    new-instance v6, Landroid/media/AudioDeviceInfo;

    invoke-direct {v6, v4}, Landroid/media/AudioDeviceInfo;-><init>(Landroid/media/AudioDevicePort;)V

    aput-object v6, v1, v2

    move v2, v5

    .line 6786
    .end local v4    # "port":Landroid/media/AudioDevicePort;
    .end local v5    # "slot":I
    .restart local v2    # "slot":I
    :cond_2
    goto :goto_1

    .line 6788
    :cond_3
    return-object v1
.end method

.method public static blacklist isCurrentHapticPlaybackSupported(Z)Z
    .locals 2
    .param p0, "isCall"    # Z

    .line 10422
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_ACH_RINGTONE:Z

    if-eqz v0, :cond_0

    .line 10424
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getRingerModeInternal()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 10425
    const/4 v0, 0x1

    return v0

    .line 10427
    :catch_0
    move-exception v0

    .line 10429
    :cond_0
    invoke-static {}, Landroid/media/AudioSystem;->isHapticPlaybackSupported()Z

    move-result v0

    return v0
.end method

.method public static whitelist isHapticPlaybackSupported()Z
    .locals 1

    .line 7356
    invoke-static {}, Landroid/media/AudioSystem;->isHapticPlaybackSupported()Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o isInputDevice(I)Z
    .locals 2
    .param p0, "device"    # I

    .line 5650
    const/high16 v0, -0x80000000

    and-int v1, p0, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z
    .locals 2
    .param p0, "format"    # Landroid/media/AudioFormat;
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .line 2527
    if-eqz p0, :cond_2

    .line 2530
    if-eqz p1, :cond_1

    .line 2533
    invoke-static {p0, p1}, Landroid/media/AudioSystem;->getOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2531
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2528
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null AudioFormat"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o isOutputDevice(I)Z
    .locals 1
    .param p0, "device"    # I

    .line 5641
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static greylist-max-o isPublicStreamType(I)Z
    .locals 1
    .param p0, "streamType"    # I

    .line 1225
    packed-switch p0, :pswitch_data_0

    .line 1236
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1234
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static greylist-max-r isValidRingerMode(I)Z
    .locals 3
    .param p0, "ringerMode"    # I

    .line 1097
    if-ltz p0, :cond_1

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 1100
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1102
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p0}, Landroid/media/IAudioService;->isValidRingerMode(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1103
    :catch_0
    move-exception v1

    .line 1104
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1098
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$registerMuteAwaitConnectionCallback$3(Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;)V
    .locals 1
    .param p0, "stub"    # Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    .line 8411
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->register(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$unregisterMuteAwaitConnectionCallback$4(Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;)V
    .locals 1
    .param p0, "stub"    # Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    .line 8432
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->register(Z)V

    return-void
.end method

.method public static greylist-max-o listAudioDevicePorts(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;)I"
        }
    .end annotation

    .line 6396
    .local p0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    if-nez p0, :cond_0

    .line 6397
    const/4 v0, -0x2

    return v0

    .line 6399
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6400
    .local v0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    .line 6401
    .local v1, "status":I
    if-nez v1, :cond_1

    .line 6402
    invoke-static {v0, p0}, Landroid/media/AudioManager;->filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 6404
    :cond_1
    return v1
.end method

.method public static greylist listAudioPatches(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;)I"
        }
    .end annotation

    .line 6487
    .local p0, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public static greylist listAudioPorts(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    .line 6377
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o listPreviousAudioDevicePorts(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDevicePort;",
            ">;)I"
        }
    .end annotation

    .line 6413
    .local p0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    if-nez p0, :cond_0

    .line 6414
    const/4 v0, -0x2

    return v0

    .line 6416
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6417
    .local v0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v1

    .line 6418
    .local v1, "status":I
    if-nez v1, :cond_1

    .line 6419
    invoke-static {v0, p0}, Landroid/media/AudioManager;->filterDevicePorts(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 6421
    :cond_1
    return v1
.end method

.method public static greylist-max-o listPreviousAudioPorts(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    .line 6387
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/4 v0, 0x0

    invoke-static {v0, v0, p0}, Landroid/media/AudioManager;->updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o microphoneInfoFromAudioDeviceInfo(Landroid/media/AudioDeviceInfo;)Landroid/media/MicrophoneInfo;
    .locals 17
    .param p0, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 6942
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    .line 6943
    .local v0, "deviceType":I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6945
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    move v6, v1

    goto :goto_1

    .line 6946
    :cond_1
    const/4 v1, 0x3

    move v6, v1

    goto :goto_1

    .line 6944
    :cond_2
    :goto_0
    const/4 v1, 0x1

    move v6, v1

    .line 6946
    :goto_1
    nop

    .line 6947
    .local v6, "micLocation":I
    new-instance v1, Landroid/media/MicrophoneInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6948
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6949
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x1

    const/4 v8, -0x1

    sget-object v9, Landroid/media/MicrophoneInfo;->POSITION_UNKNOWN:Landroid/media/MicrophoneInfo$Coordinate3F;

    sget-object v10, Landroid/media/MicrophoneInfo;->ORIENTATION_UNKNOWN:Landroid/media/MicrophoneInfo$Coordinate3F;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const v13, -0x800001

    const v14, -0x800001

    const v15, -0x800001

    const/16 v16, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Landroid/media/MicrophoneInfo;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/media/MicrophoneInfo$Coordinate3F;Landroid/media/MicrophoneInfo$Coordinate3F;Ljava/util/List;Ljava/util/List;FFFI)V

    .line 6955
    .local v1, "microphone":Landroid/media/MicrophoneInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MicrophoneInfo;->setId(I)V

    .line 6956
    return-object v1
.end method

.method static blacklist registerAudioPolicyStatic(Landroid/media/audiopolicy/AudioPolicy;)I
    .locals 10
    .param p0, "policy"    # Landroid/media/audiopolicy/AudioPolicy;

    .line 4875
    if-eqz p0, :cond_2

    .line 4878
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v8

    .line 4880
    .local v8, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->getMediaProjection()Landroid/media/projection/MediaProjection;

    move-result-object v0

    move-object v9, v0

    .line 4881
    .local v9, "projection":Landroid/media/projection/MediaProjection;
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->getConfig()Landroid/media/audiopolicy/AudioPolicyConfig;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 4882
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->hasFocusListener()Z

    move-result v3

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->isFocusPolicy()Z

    move-result v4

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->isTestFocusPolicy()Z

    move-result v5

    .line 4883
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->isVolumeController()Z

    move-result v6

    .line 4884
    if-nez v9, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v9}, Landroid/media/projection/MediaProjection;->getProjection()Landroid/media/projection/IMediaProjection;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 4881
    move-object v0, v8

    invoke-interface/range {v0 .. v7}, Landroid/media/IAudioService;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)Ljava/lang/String;

    move-result-object v0

    .line 4885
    .local v0, "regId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 4886
    const/4 v1, -0x1

    return v1

    .line 4888
    :cond_1
    invoke-virtual {p0, v0}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4893
    .end local v0    # "regId":Ljava/lang/String;
    .end local v9    # "projection":Landroid/media/projection/MediaProjection;
    nop

    .line 4894
    const/4 v0, 0x0

    return v0

    .line 4891
    :catch_0
    move-exception v0

    .line 4892
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4876
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v8    # "service":Landroid/media/IAudioService;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist releaseAudioPatch(Landroid/media/AudioPatch;)I
    .locals 1
    .param p0, "patch"    # Landroid/media/AudioPatch;

    .line 6477
    invoke-static {p0}, Landroid/media/AudioSystem;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    move-result v0

    return v0
.end method

.method private blacklist removeOnDevRoleForCapturePresetChangedListener(Ljava/lang/Object;I)I
    .locals 6
    .param p2, "deviceRole"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)I"
        }
    .end annotation

    .line 2307
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    iget-object v0, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListeners:Ljava/util/Map;

    .line 2309
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$DevRoleListeners;

    .line 2310
    .local v0, "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    if-nez v0, :cond_0

    .line 2311
    const/4 v1, -0x1

    return v1

    .line 2313
    :cond_0
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmDevRoleListenersLock(Landroid/media/AudioManager$DevRoleListeners;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2314
    :try_start_0
    invoke-static {v0, p1}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$mremoveDevRoleListener(Landroid/media/AudioManager$DevRoleListeners;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2315
    const/4 v2, -0x2

    monitor-exit v1

    return v2

    .line 2317
    :cond_1
    invoke-static {v0}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 2319
    iget-object v2, p0, Landroid/media/AudioManager;->mDevRoleForCapturePresetListenersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2320
    :try_start_1
    iget v4, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    const/4 v5, 0x1

    shl-int/2addr v5, p2

    xor-int/2addr v4, v5

    iput v4, p0, Landroid/media/AudioManager;->mDeviceRoleListenersStatus:I

    .line 2321
    if-eqz v4, :cond_2

    .line 2323
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v3

    .line 2326
    :cond_2
    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioManager;->mDevicesRoleForCapturePresetDispatcherStub:Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;

    invoke-interface {v4, v5}, Landroid/media/IAudioService;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2330
    nop

    .line 2331
    :try_start_4
    monitor-exit v2

    goto :goto_0

    .line 2328
    :catch_0
    move-exception v3

    .line 2329
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "listener":Ljava/lang/Object;, "TT;"
    .end local p2    # "deviceRole":I
    throw v4

    .line 2331
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "listener":Ljava/lang/Object;, "TT;"
    .restart local p2    # "deviceRole":I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "listener":Ljava/lang/Object;, "TT;"
    .end local p2    # "deviceRole":I
    :try_start_5
    throw v3

    .line 2333
    .restart local v0    # "devRoleListeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "listener":Ljava/lang/Object;, "TT;"
    .restart local p2    # "deviceRole":I
    :cond_3
    :goto_0
    monitor-exit v1

    .line 2334
    return v3

    .line 2333
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method

.method private greylist-max-o removePlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z
    .locals 2
    .param p1, "cb"    # Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 5115
    iget-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5117
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    iget-object v1, v1, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5118
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5119
    const/4 v1, 0x1

    return v1

    .line 5116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5123
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist removePrefDevListener(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)Z
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;

    .line 2085
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getPrefDevListenerInfo(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)Landroid/media/AudioManager$PrefDevListenerInfo;

    move-result-object v0

    .line 2086
    .local v0, "infoToRemove":Landroid/media/AudioManager$PrefDevListenerInfo;
    if-eqz v0, :cond_0

    .line 2087
    iget-object v1, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2088
    const/4 v1, 0x1

    return v1

    .line 2090
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private greylist-max-o removeRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z
    .locals 2
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 5332
    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 5333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5334
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    iget-object v1, v1, Landroid/media/AudioManager$AudioRecordingCallbackInfo;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5335
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5336
    const/4 v1, 0x1

    return v1

    .line 5333
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5340
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static greylist-max-o resetAudioPortGeneration()I
    .locals 3

    .line 6561
    sget-object v0, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    monitor-enter v0

    .line 6562
    :try_start_0
    sget-object v1, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6563
    .local v1, "generation":I
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    .line 6564
    monitor-exit v0

    .line 6565
    return v1

    .line 6564
    .end local v1    # "generation":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist semGetActiveStreamType()I
    .locals 5

    .line 9166
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9167
    .local v0, "service":Landroid/media/IAudioService;
    const/high16 v1, -0x80000000

    .line 9169
    .local v1, "activeStreamType":I
    const/high16 v2, -0x80000000

    :try_start_0
    invoke-interface {v0, v2}, Landroid/media/IAudioService;->secGetActiveStreamType(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 9172
    goto :goto_0

    .line 9170
    :catch_0
    move-exception v2

    .line 9171
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "AudioManager"

    const-string v4, "Dead object in semGetActiveStreamType"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9173
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v1
.end method

.method public static whitelist semGetDeviceOut(I)I
    .locals 1
    .param p0, "typeDevice"    # I

    .line 9755
    invoke-static {p0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    return v0
.end method

.method public static whitelist semGetEarProtectLimit()I
    .locals 1

    .line 10213
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    if-eqz v0, :cond_0

    .line 10214
    const/16 v0, 0x8

    return v0

    .line 10216
    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public static whitelist semGetStreamType(I)I
    .locals 1
    .param p0, "samsung_stream"    # I

    .line 9684
    const/4 v0, -0x1

    .line 9686
    .local v0, "valid_stream":I
    packed-switch p0, :pswitch_data_0

    .line 9704
    const/4 v0, -0x1

    goto :goto_0

    .line 9697
    :pswitch_0
    const/4 v0, 0x7

    .line 9698
    goto :goto_0

    .line 9694
    :pswitch_1
    const/4 v0, 0x6

    .line 9695
    goto :goto_0

    .line 9701
    :pswitch_2
    const/16 v0, 0xb

    .line 9702
    goto :goto_0

    .line 9691
    :pswitch_3
    const/4 v0, 0x0

    .line 9692
    goto :goto_0

    .line 9688
    :pswitch_4
    const/4 v0, 0x3

    .line 9689
    nop

    .line 9708
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static whitelist semIsBixbyStreamSupported()Z
    .locals 1

    .line 9314
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist semIsFineVolumeSupported()Z
    .locals 1

    .line 9378
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist semIsUhqSupported()Z
    .locals 1

    .line 9301
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_UHQ:Z

    return v0
.end method

.method public static greylist-max-o setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I
    .locals 8
    .param p0, "port"    # Landroid/media/AudioPort;
    .param p1, "gain"    # Landroid/media/AudioGainConfig;

    .line 6496
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6499
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioPort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v0

    .line 6500
    .local v0, "activeConfig":Landroid/media/AudioPortConfig;
    new-instance v7, Landroid/media/AudioPortConfig;

    invoke-virtual {v0}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v3

    .line 6501
    invoke-virtual {v0}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v4

    invoke-virtual {v0}, Landroid/media/AudioPortConfig;->format()I

    move-result v5

    move-object v1, v7

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    .line 6502
    .local v1, "config":Landroid/media/AudioPortConfig;
    const/16 v2, 0x8

    iput v2, v1, Landroid/media/AudioPortConfig;->mConfigMask:I

    .line 6503
    invoke-static {v1}, Landroid/media/AudioSystem;->setAudioPortConfig(Landroid/media/AudioPortConfig;)I

    move-result v2

    return v2

    .line 6497
    .end local v0    # "activeConfig":Landroid/media/AudioPortConfig;
    .end local v1    # "config":Landroid/media/AudioPortConfig;
    :cond_1
    :goto_0
    const/4 v0, -0x2

    return v0
.end method

.method public static blacklist setAudioServiceConfig(Ljava/lang/String;)V
    .locals 4
    .param p0, "keyValuePairs"    # Ljava/lang/String;

    .line 10261
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10264
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p0}, Landroid/media/IAudioService;->setAudioServiceConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10267
    goto :goto_0

    .line 10265
    :catch_0
    move-exception v1

    .line 10266
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in setAudioServiceConfig"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10268
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private greylist-max-o setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 850
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    .line 851
    if-eqz v0, :cond_0

    .line 852
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    goto :goto_0

    .line 854
    :cond_0
    iput-object p1, p0, Landroid/media/AudioManager;->mOriginalContext:Landroid/content/Context;

    .line 856
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/media/AudioManager;->sContext:Ljava/lang/ref/WeakReference;

    .line 857
    return-void
.end method

.method public static greylist-max-o setPortIdForMicrophones(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;)V"
        }
    .end annotation

    .line 6917
    .local p0, "microphones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MicrophoneInfo;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 6918
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 6919
    const/4 v0, 0x0

    .line 6920
    .local v0, "foundPortId":Z
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 6921
    .local v5, "device":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioDevicePort;->type()I

    move-result v6

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MicrophoneInfo;

    invoke-virtual {v7}, Landroid/media/MicrophoneInfo;->getInternalDeviceType()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 6922
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MicrophoneInfo;

    invoke-virtual {v7}, Landroid/media/MicrophoneInfo;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6923
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MicrophoneInfo;

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/MicrophoneInfo;->setId(I)V

    .line 6924
    const/4 v0, 0x1

    .line 6925
    goto :goto_2

    .line 6920
    .end local v5    # "device":Landroid/media/AudioDeviceInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6928
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    .line 6929
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find port id for device with type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6930
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MicrophoneInfo;

    invoke-virtual {v4}, Landroid/media/MicrophoneInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6931
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MicrophoneInfo;

    invoke-virtual {v4}, Landroid/media/MicrophoneInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6929
    const-string v4, "AudioManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6932
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6918
    .end local v0    # "foundPortId":Z
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 6935
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private blacklist setPreferredDevicesForCapturePreset(ILjava/util/List;)Z
    .locals 4
    .param p1, "capturePreset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)Z"
        }
    .end annotation

    .line 2161
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    invoke-static {p1}, Landroid/media/MediaRecorder;->isValidAudioSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2163
    return v1

    .line 2165
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2169
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    .line 2170
    .local v3, "device":Landroid/media/AudioDeviceAttributes;
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    .end local v3    # "device":Landroid/media/AudioDeviceAttributes;
    goto :goto_0

    .line 2174
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setPreferredDevicesForCapturePreset(ILjava/util/List;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2175
    .local v0, "status":I
    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 2176
    .end local v0    # "status":I
    :catch_0
    move-exception v0

    .line 2177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2166
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only support setting one preferred devices for capture preset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setRttEnabled(Z)V
    .locals 2
    .param p0, "rttEnabled"    # Z

    .line 7540
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->setRttEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7543
    nop

    .line 7544
    return-void

    .line 7541
    :catch_0
    move-exception v0

    .line 7542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static blacklist unregisterAudioPolicyAsyncStatic(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 3
    .param p0, "policy"    # Landroid/media/audiopolicy/AudioPolicy;

    .line 4909
    if-eqz p0, :cond_0

    .line 4912
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4914
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 4915
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4918
    nop

    .line 4919
    return-void

    .line 4916
    :catch_0
    move-exception v1

    .line 4917
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 4910
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o updateAudioPortCache(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;)I"
        }
    .end annotation

    .line 6570
    .local p0, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .local p1, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .local p2, "previousPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0}, Landroid/media/AudioPortEventHandler;->init()V

    .line 6571
    sget-object v4, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    monitor-enter v4

    .line 6573
    :try_start_0
    sget-object v0, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_e

    .line 6574
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 6575
    .local v6, "patchGeneration":[I
    new-array v0, v0, [I

    .line 6577
    .local v0, "portGeneration":[I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 6578
    .local v7, "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 6581
    .local v8, "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    :cond_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 6582
    invoke-static {v7, v0}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v9

    .line 6583
    .local v9, "status":I
    if-eqz v9, :cond_1

    .line 6584
    const-string v5, "AudioManager"

    const-string/jumbo v10, "updateAudioPortCache: listAudioPorts failed"

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6585
    monitor-exit v4

    return v9

    .line 6587
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 6588
    invoke-static {v8, v6}, Landroid/media/AudioSystem;->listAudioPatches(Ljava/util/ArrayList;[I)I

    move-result v10

    move v9, v10

    .line 6589
    if-eqz v9, :cond_2

    .line 6590
    const-string v5, "AudioManager"

    const-string/jumbo v10, "updateAudioPortCache: listAudioPatches failed"

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6591
    monitor-exit v4

    return v9

    .line 6595
    :cond_2
    aget v10, v6, v5

    aget v11, v0, v5

    if-eq v10, v11, :cond_3

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 6599
    :cond_3
    aget v10, v6, v5

    aget v11, v0, v5

    if-eq v10, v11, :cond_4

    .line 6600
    const/4 v5, -0x1

    monitor-exit v4

    return v5

    .line 6603
    :cond_4
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_7

    .line 6604
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v12

    array-length v12, v12

    if-ge v11, v12, :cond_5

    .line 6605
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-static {v12, v7}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    move-result-object v12

    .line 6607
    .local v12, "portCfg":Landroid/media/AudioPortConfig;
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioPatch;

    invoke-virtual {v13}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v13

    aput-object v12, v13, v11

    .line 6604
    .end local v12    # "portCfg":Landroid/media/AudioPortConfig;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 6609
    .end local v11    # "j":I
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_2
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v12

    array-length v12, v12

    if-ge v11, v12, :cond_6

    .line 6610
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioPatch;

    invoke-virtual {v12}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-static {v12, v7}, Landroid/media/AudioManager;->updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;

    move-result-object v12

    .line 6612
    .restart local v12    # "portCfg":Landroid/media/AudioPortConfig;
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioPatch;

    invoke-virtual {v13}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v13

    aput-object v12, v13, v11

    .line 6609
    .end local v12    # "portCfg":Landroid/media/AudioPortConfig;
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 6603
    .end local v11    # "j":I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 6615
    .end local v10    # "i":I
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPatch;>;"
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 6616
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioPatch;

    .line 6617
    .local v11, "newPatch":Landroid/media/AudioPatch;
    const/4 v12, 0x0

    .line 6618
    .local v12, "hasInvalidPort":Z
    invoke-virtual {v11}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v13

    array-length v14, v13

    move v15, v5

    :goto_4
    if-ge v15, v14, :cond_9

    aget-object v16, v13, v15

    .line 6619
    .local v16, "portCfg":Landroid/media/AudioPortConfig;
    if-nez v16, :cond_8

    .line 6620
    const/4 v12, 0x1

    .line 6621
    goto :goto_5

    .line 6618
    .end local v16    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 6624
    :cond_9
    :goto_5
    invoke-virtual {v11}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v13

    array-length v14, v13

    move v15, v5

    :goto_6
    if-ge v15, v14, :cond_b

    aget-object v16, v13, v15

    .line 6625
    .restart local v16    # "portCfg":Landroid/media/AudioPortConfig;
    if-nez v16, :cond_a

    .line 6626
    const/4 v12, 0x1

    .line 6627
    goto :goto_7

    .line 6624
    .end local v16    # "portCfg":Landroid/media/AudioPortConfig;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 6630
    :cond_b
    :goto_7
    if-eqz v12, :cond_c

    .line 6633
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 6635
    .end local v11    # "newPatch":Landroid/media/AudioPatch;
    .end local v12    # "hasInvalidPort":Z
    :cond_c
    goto :goto_3

    .line 6637
    .end local v10    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioPatch;>;"
    :cond_d
    sget-object v10, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    sput-object v10, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    .line 6638
    sput-object v7, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    .line 6639
    sput-object v8, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    .line 6640
    aget v10, v0, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sput-object v10, Landroid/media/AudioManager;->sAudioPortGeneration:Ljava/lang/Integer;

    .line 6642
    .end local v0    # "portGeneration":[I
    .end local v6    # "patchGeneration":[I
    .end local v7    # "newPorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v8    # "newPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    .end local v9    # "status":I
    :cond_e
    if-eqz v1, :cond_f

    .line 6643
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->clear()V

    .line 6644
    sget-object v0, Landroid/media/AudioManager;->sAudioPortsCached:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6646
    :cond_f
    if-eqz v2, :cond_10

    .line 6647
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 6648
    sget-object v0, Landroid/media/AudioManager;->sAudioPatchesCached:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6650
    :cond_10
    if-eqz v3, :cond_11

    .line 6651
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 6652
    sget-object v0, Landroid/media/AudioManager;->sPreviousAudioPortsCached:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6654
    :cond_11
    monitor-exit v4

    .line 6655
    return v5

    .line 6654
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static greylist-max-o updatePortConfig(Landroid/media/AudioPortConfig;Ljava/util/ArrayList;)Landroid/media/AudioPortConfig;
    .locals 8
    .param p0, "portCfg"    # Landroid/media/AudioPortConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioPortConfig;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;)",
            "Landroid/media/AudioPortConfig;"
        }
    .end annotation

    .line 6659
    .local p1, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v0

    .line 6661
    .local v0, "port":Landroid/media/AudioPort;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6664
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPort;

    invoke-virtual {v2}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6665
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/media/AudioPort;

    .line 6666
    goto :goto_1

    .line 6661
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6669
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 6671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePortConfig port not found for handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioHandle;->id()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6672
    const/4 v2, 0x0

    return-object v2

    .line 6674
    :cond_2
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->gain()Landroid/media/AudioGainConfig;

    move-result-object v2

    .line 6675
    .local v2, "gainCfg":Landroid/media/AudioGainConfig;
    if-eqz v2, :cond_3

    .line 6676
    invoke-virtual {v2}, Landroid/media/AudioGainConfig;->index()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/media/AudioPort;->gain(I)Landroid/media/AudioGain;

    move-result-object v3

    .line 6677
    .local v3, "gain":Landroid/media/AudioGain;
    invoke-virtual {v2}, Landroid/media/AudioGainConfig;->mode()I

    move-result v4

    .line 6678
    invoke-virtual {v2}, Landroid/media/AudioGainConfig;->channelMask()I

    move-result v5

    .line 6679
    invoke-virtual {v2}, Landroid/media/AudioGainConfig;->values()[I

    move-result-object v6

    .line 6680
    invoke-virtual {v2}, Landroid/media/AudioGainConfig;->rampDurationMs()I

    move-result v7

    .line 6677
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v2

    .line 6682
    .end local v3    # "gain":Landroid/media/AudioGain;
    :cond_3
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v3

    .line 6683
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v4

    .line 6684
    invoke-virtual {p0}, Landroid/media/AudioPortConfig;->format()I

    move-result v5

    .line 6682
    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/media/AudioPort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public whitelist abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 4646
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public whitelist abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "aa"    # Landroid/media/AudioAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4661
    const/4 v0, 0x0

    .line 4662
    .local v0, "status":I
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 4663
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 4665
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4666
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4665
    invoke-interface {v1, v2, v3, p2, v4}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 4669
    nop

    .line 4670
    return v0

    .line 4667
    :catch_0
    move-exception v2

    .line 4668
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public greylist-max-r abandonAudioFocusForCall()V
    .locals 4

    .line 4630
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4632
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 4633
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4632
    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/media/IAudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4636
    nop

    .line 4637
    return-void

    .line 4634
    :catch_0
    move-exception v1

    .line 4635
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist abandonAudioFocusForTest(Landroid/media/AudioFocusRequest;Ljava/lang/String;)I
    .locals 4
    .param p1, "afr"    # Landroid/media/AudioFocusRequest;
    .param p2, "clientFakeId"    # Ljava/lang/String;

    .line 4342
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4343
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4345
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4346
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    const-string v3, "com.android.test.fakeclient"

    .line 4345
    invoke-interface {v0, v1, p2, v2, v3}, Landroid/media/IAudioService;->abandonAudioFocusForTest(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4347
    :catch_0
    move-exception v0

    .line 4348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I
    .locals 2
    .param p1, "focusRequest"    # Landroid/media/AudioFocusRequest;

    .line 4173
    if-eqz p1, :cond_0

    .line 4176
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    .line 4177
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 4176
    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0

    .line 4174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusRequest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addAssistantServicesUids([I)V
    .locals 2
    .param p1, "assistantUids"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8449
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->addAssistantServicesUids([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8452
    nop

    .line 8453
    return-void

    .line 8450
    :catch_0
    move-exception v0

    .line 8451
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addOnCommunicationDeviceChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    .line 7936
    iget-object v0, p0, Landroid/media/AudioManager;->mCommDeviceChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/AudioManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioManager;)V

    const-string v2, "addOnCommunicationDeviceChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 7939
    return-void
.end method

.method public whitelist addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioManager$OnModeChangedListener;

    .line 3074
    iget-object v0, p0, Landroid/media/AudioManager;->mModeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/AudioManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/AudioManager$$ExternalSyntheticLambda1;-><init>(Landroid/media/AudioManager;)V

    const-string v2, "addOnModeChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 3076
    return-void
.end method

.method public whitelist addOnPreferredDeviceForStrategyChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1923
    return-void
.end method

.method public whitelist addOnPreferredDevicesForCapturePresetChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2222
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2224
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioManager;->addOnDevRoleForCapturePresetChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;I)I

    move-result v0

    .line 2226
    .local v0, "status":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2230
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 2235
    return-void

    .line 2231
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempt to call addOnPreferredDevicesForCapturePresetChangedListener() on a previously registered listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2228
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown error happened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addOnPreferredDevicesForStrategyChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1953
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    iget-object v0, p0, Landroid/media/AudioManager;->mPrefDevListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1956
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/AudioManager;->hasPrefDevListener(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1962
    iget-object v1, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1963
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    .line 1965
    :cond_0
    iget-object v1, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1966
    .local v1, "oldCbCount":I
    iget-object v2, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/media/AudioManager$PrefDevListenerInfo;

    invoke-direct {v3, p2, p1}, Landroid/media/AudioManager$PrefDevListenerInfo;-><init>(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1967
    if-nez v1, :cond_2

    iget-object v2, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1969
    iget-object v2, p0, Landroid/media/AudioManager;->mPrefDevDispatcherStub:Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

    if-nez v2, :cond_1

    .line 1970
    new-instance v2, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub-IA;)V

    iput-object v2, p0, Landroid/media/AudioManager;->mPrefDevDispatcherStub:Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1973
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioManager;->mPrefDevDispatcherStub:Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

    invoke-interface {v2, v3}, Landroid/media/IAudioService;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1976
    goto :goto_0

    .line 1974
    :catch_0
    move-exception v2

    .line 1975
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    throw v3

    .line 1978
    .end local v1    # "oldCbCount":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1979
    return-void

    .line 1957
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempt to call addOnPreferredDevicesForStrategyChangedListener() on a previously registered listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    throw v1

    .line 1978
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist adjustStreamVolume(III)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .line 969
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v6

    .line 971
    .local v6, "service":Landroid/media/IAudioService;
    nop

    .line 972
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 971
    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    nop

    .line 976
    return-void

    .line 973
    :catch_0
    move-exception v0

    .line 974
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist adjustStreamVolumeForUid(IIILjava/lang/String;III)V
    .locals 10
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "targetSdkVersion"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 7626
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 7627
    invoke-static {p5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 7626
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Landroid/media/IAudioService;->adjustStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7630
    nop

    .line 7631
    return-void

    .line 7628
    :catch_0
    move-exception v0

    .line 7629
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist adjustSuggestedStreamVolume(III)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I

    .line 1031
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 1032
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v0, p2, p1, p3}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    .line 1033
    return-void
.end method

.method public blacklist adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;III)V
    .locals 10
    .param p1, "suggestedStreamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "targetSdkVersion"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 7583
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 7584
    invoke-static {p5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 7583
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Landroid/media/IAudioService;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7587
    nop

    .line 7588
    return-void

    .line 7585
    :catch_0
    move-exception v0

    .line 7586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist adjustVolume(II)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .line 1002
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 1003
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    .line 1004
    return-void
.end method

.method public blacklist areNavigationRepeatSoundEffectsEnabled()Z
    .locals 2

    .line 3616
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->areNavigationRepeatSoundEffectsEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3617
    :catch_0
    move-exception v0

    .line 3618
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V
    .locals 2
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 8324
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8326
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8329
    nop

    .line 8330
    return-void

    .line 8327
    :catch_0
    move-exception v0

    .line 8328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearAudioServerStateCallback()V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7222
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7223
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    if-eqz v1, :cond_0

    .line 7224
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7226
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioManager;->mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7230
    goto :goto_0

    .line 7228
    :catch_0
    move-exception v2

    .line 7229
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/media/AudioManager;
    throw v3

    .line 7232
    .end local v1    # "service":Landroid/media/IAudioService;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateExec:Ljava/util/concurrent/Executor;

    .line 7233
    iput-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    .line 7234
    monitor-exit v0

    .line 7235
    return-void

    .line 7234
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist clearCommunicationDevice()V
    .locals 3

    .line 7773
    const-string v0, "AudioManager"

    const-string v1, "clearCommunicationDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7776
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/media/IAudioService;->setCommunicationDevice(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7779
    nop

    .line 7780
    return-void

    .line 7777
    :catch_0
    move-exception v0

    .line 7778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearPreferredDevicesForCapturePreset(I)Z
    .locals 2
    .param p1, "capturePreset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2125
    invoke-static {p1}, Landroid/media/MediaRecorder;->isValidAudioSource(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2126
    return v1

    .line 2129
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->clearPreferredDevicesForCapturePreset(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2130
    .local v0, "status":I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 2131
    .end local v0    # "status":I
    :catch_0
    move-exception v0

    .line 2132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o disableSafeMediaVolume()V
    .locals 2

    .line 6263
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->disableSafeMediaVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6266
    nop

    .line 6267
    return-void

    .line 6264
    :catch_0
    move-exception v0

    .line 6265
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist dispatchAudioFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/AudioPolicy;)I
    .locals 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "focusChange"    # I
    .param p3, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4608
    if-eqz p1, :cond_1

    .line 4611
    if-eqz p3, :cond_0

    .line 4614
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4616
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p3}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 4617
    :catch_0
    move-exception v1

    .line 4618
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 4612
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null AudioPolicy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4609
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 894
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 895
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 896
    return-void
.end method

.method public blacklist enableVolumeLimiter(Z)V
    .locals 4
    .param p1, "on"    # Z

    .line 10293
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 10294
    .local v0, "caller":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v1}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 10296
    const-string v2, "l_volume_limit_key"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10297
    const-string v3, "enable"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v1

    .line 10298
    const-string v2, "package"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v1

    .line 10299
    invoke-virtual {v1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v1

    .line 10300
    .local v1, "audioParameter":Lcom/samsung/android/media/AudioParameter;
    invoke-virtual {v1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 10301
    return-void
.end method

.method public greylist forceVolumeControlStream(I)V
    .locals 3
    .param p1, "streamType"    # I

    .line 1551
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1553
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->forceVolumeControlStream(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1556
    nop

    .line 1557
    return-void

    .line 1554
    :catch_0
    move-exception v1

    .line 1555
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist generateAudioSessionId()I
    .locals 3

    .line 3304
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    move-result v0

    .line 3305
    .local v0, "session":I
    if-lez v0, :cond_0

    .line 3306
    return v0

    .line 3308
    :cond_0
    const-string v1, "AudioManager"

    const-string v2, "Failure to generate a new audio session ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist getActiveAssistantServicesUids()[I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8534
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getActiveAssistantServiceUids()[I

    move-result-object v0

    .line 8535
    .local v0, "uids":[I
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 8536
    .end local v0    # "uids":[I
    :catch_0
    move-exception v0

    .line 8537
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getActivePlaybackConfigurations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 5080
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5082
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 5083
    :catch_0
    move-exception v1

    .line 5084
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getActiveRecordingConfigurations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 5270
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5272
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 5273
    :catch_0
    move-exception v1

    .line 5274
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceInfo;)J
    .locals 2
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6164
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6166
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 6167
    :catch_0
    move-exception v0

    .line 6168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllowedCapturePolicy()I
    .locals 4

    .line 1718
    const/4 v0, 0x1

    .line 1720
    .local v0, "result":I
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getAllowedCapturePolicy()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1723
    goto :goto_0

    .line 1721
    :catch_0
    move-exception v1

    .line 1722
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query allowed capture policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist getAppDevice(I)I
    .locals 5
    .param p1, "uid"    # I

    .line 9827
    const/4 v0, 0x0

    .line 9828
    .local v0, "device":I
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 9831
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->getAppDevice(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 9834
    goto :goto_0

    .line 9832
    :catch_0
    move-exception v2

    .line 9833
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "AudioManager"

    const-string v4, "Dead object in getAppDevice"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9836
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist getAppVolume(I)I
    .locals 4
    .param p1, "uid"    # I

    .line 9864
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9867
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getAppVolume(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 9868
    :catch_0
    move-exception v1

    .line 9869
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in getAppVolume"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9871
    .end local v1    # "e":Landroid/os/RemoteException;
    const/16 v1, 0x64

    return v1
.end method

.method public whitelist getAssistantServicesUids()[I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8491
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getAssistantServicesUids()[I

    move-result-object v0

    .line 8492
    .local v0, "uids":[I
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 8493
    .end local v0    # "uids":[I
    :catch_0
    move-exception v0

    .line 8494
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAudioDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;
    .locals 10
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 5765
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5766
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5767
    .local v0, "service":Landroid/media/IAudioService;
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getDevicesForAttributesUnprotected(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 5771
    .local v0, "devicesForAttributes":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    nop

    .line 5774
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 5775
    .local v1, "outputDeviceInfos":[Landroid/media/AudioDeviceInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5776
    .local v2, "deviceInfosForAttributes":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    .line 5777
    .local v4, "deviceForAttributes":Landroid/media/AudioDeviceAttributes;
    array-length v5, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v1, v6

    .line 5778
    .local v7, "deviceInfo":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v8

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 5779
    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 5780
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 5779
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5781
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5777
    .end local v7    # "deviceInfo":Landroid/media/AudioDeviceInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 5784
    .end local v4    # "deviceForAttributes":Landroid/media/AudioDeviceAttributes;
    :cond_1
    goto :goto_0

    .line 5785
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 5768
    .end local v0    # "devicesForAttributes":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    .end local v1    # "outputDeviceInfos":[Landroid/media/AudioDeviceInfo;
    .end local v2    # "deviceInfosForAttributes":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    :catch_0
    move-exception v0

    .line 5769
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AudioManager"

    const-string v2, "No audio devices available for specified attributes."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5770
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getAudioHwSyncForSession(I)I
    .locals 3
    .param p1, "sessionId"    # I

    .line 7694
    invoke-static {p1}, Landroid/media/AudioSystem;->getAudioHwSyncForSession(I)I

    move-result v0

    .line 7695
    .local v0, "hwSyncId":I
    if-eqz v0, :cond_0

    .line 7698
    return v0

    .line 7696
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "HW A/V synchronization is not supported."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getAvailableCommunicationDevices()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 7812
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7813
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceInfo;>;"
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getAvailableCommunicationDeviceIds()[I

    move-result-object v1

    .line 7814
    .local v1, "portIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 7815
    .local v4, "portId":I
    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v5

    .line 7816
    .local v5, "device":Landroid/media/AudioDeviceInfo;
    if-nez v5, :cond_0

    .line 7817
    goto :goto_1

    .line 7819
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7814
    .end local v4    # "portId":I
    .end local v5    # "device":Landroid/media/AudioDeviceInfo;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7821
    :cond_1
    return-object v0

    .line 7822
    .end local v0    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceInfo;>;"
    .end local v1    # "portIds":[I
    :catch_0
    move-exception v0

    .line 7823
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAvailableDeviceMaskForQuickSoundPath()I
    .locals 2

    .line 9253
    const-string v0, "g_sound_path_available_devices"

    invoke-static {v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9255
    .local v0, "devices":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 9256
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 9258
    :cond_0
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-static {v1}, Lcom/samsung/android/media/SemAudioSystem;->makeDeviceBit(Ljava/util/Set;)I

    move-result v1

    return v1
.end method

.method public whitelist getCallDownlinkExtractionAudioRecord(Landroid/media/AudioFormat;)Landroid/media/AudioRecord;
    .locals 7
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8164
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/AudioManager;->checkCallRedirectionFormat(Landroid/media/AudioFormat;Z)V

    .line 8167
    const/4 v0, 0x0

    .line 8168
    .local v0, "record":Landroid/media/AudioRecord;
    invoke-direct {p0}, Landroid/media/AudioManager;->getCallRedirectMode()I

    move-result v1

    .line 8169
    .local v1, "redirectMode":I
    if-eqz v1, :cond_4

    .line 8172
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioManager;->isPstnCallAudioInterceptable()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 8173
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, " PSTN Call audio not accessible "

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8176
    :cond_1
    :goto_0
    new-instance v2, Landroid/media/AudioRecord$Builder;

    invoke-direct {v2}, Landroid/media/AudioRecord$Builder;-><init>()V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x3

    .line 8178
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 8179
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 8177
    invoke-virtual {v2, v3}, Landroid/media/AudioRecord$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioRecord$Builder;

    move-result-object v2

    .line 8180
    invoke-virtual {v2, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v2

    .line 8181
    invoke-virtual {v2, v1}, Landroid/media/AudioRecord$Builder;->setCallRedirectionMode(I)Landroid/media/AudioRecord$Builder;

    move-result-object v2

    .line 8182
    invoke-virtual {v2}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v0

    .line 8184
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-eqz v2, :cond_3

    .line 8185
    iget-object v2, p0, Landroid/media/AudioManager;->mCallRedirectionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8186
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    if-nez v3, :cond_2

    .line 8187
    new-instance v3, Landroid/media/AudioManager$CallInjectionModeChangedListener;

    invoke-direct {v3, p0}, Landroid/media/AudioManager$CallInjectionModeChangedListener;-><init>(Landroid/media/AudioManager;)V

    iput-object v3, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8189
    nop

    .line 8190
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    .line 8189
    invoke-virtual {p0, v3, v4}, Landroid/media/AudioManager;->addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8195
    nop

    .line 8196
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/AudioManager;->mCallIRedirectionClients:Ljava/util/ArrayList;

    goto :goto_1

    .line 8191
    :catch_0
    move-exception v3

    .line 8192
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "AudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOnModeChangedListener failed with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8193
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    .line 8194
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, " Cannot register mode listener "

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "record":Landroid/media/AudioRecord;
    .end local v1    # "redirectMode":I
    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "format":Landroid/media/AudioFormat;
    throw v4

    .line 8198
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "record":Landroid/media/AudioRecord;
    .restart local v1    # "redirectMode":I
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "format":Landroid/media/AudioFormat;
    :cond_2
    :goto_1
    new-instance v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;

    invoke-direct {v3, p0}, Landroid/media/AudioManager$CallIRedirectionClientInfo;-><init>(Landroid/media/AudioManager;)V

    .line 8199
    .local v3, "info":Landroid/media/AudioManager$CallIRedirectionClientInfo;
    iput v1, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->redirectMode:I

    .line 8200
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->trackOrRecord:Ljava/lang/ref/WeakReference;

    .line 8201
    iget-object v4, p0, Landroid/media/AudioManager;->mCallIRedirectionClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8202
    nop

    .end local v3    # "info":Landroid/media/AudioManager$CallIRedirectionClientInfo;
    monitor-exit v2

    .line 8206
    return-object v0

    .line 8202
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 8204
    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, " Cannot create the AudioRecord"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8170
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " not available in mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8171
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getCallUplinkInjectionAudioTrack(Landroid/media/AudioFormat;)Landroid/media/AudioTrack;
    .locals 7
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8092
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8093
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/AudioManager;->checkCallRedirectionFormat(Landroid/media/AudioFormat;Z)V

    .line 8095
    const/4 v1, 0x0

    .line 8096
    .local v1, "track":Landroid/media/AudioTrack;
    invoke-direct {p0}, Landroid/media/AudioManager;->getCallRedirectMode()I

    move-result v2

    .line 8097
    .local v2, "redirectMode":I
    if-eqz v2, :cond_4

    .line 8100
    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioManager;->isPstnCallAudioInterceptable()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 8101
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, " PSTN Call audio not accessible "

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8104
    :cond_1
    :goto_0
    new-instance v3, Landroid/media/AudioTrack$Builder;

    invoke-direct {v3}, Landroid/media/AudioTrack$Builder;-><init>()V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v5, 0x11

    .line 8106
    invoke-virtual {v4, v5}, Landroid/media/AudioAttributes$Builder;->setSystemUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 8107
    invoke-virtual {v4, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 8108
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 8105
    invoke-virtual {v3, v0}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 8109
    invoke-virtual {v0, p1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 8110
    invoke-virtual {v0, v2}, Landroid/media/AudioTrack$Builder;->setCallRedirectionMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    .line 8111
    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v0

    .line 8113
    .end local v1    # "track":Landroid/media/AudioTrack;
    .local v0, "track":Landroid/media/AudioTrack;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-eqz v1, :cond_3

    .line 8114
    iget-object v1, p0, Landroid/media/AudioManager;->mCallRedirectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8115
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    if-nez v3, :cond_2

    .line 8116
    new-instance v3, Landroid/media/AudioManager$CallInjectionModeChangedListener;

    invoke-direct {v3, p0}, Landroid/media/AudioManager$CallInjectionModeChangedListener;-><init>(Landroid/media/AudioManager;)V

    iput-object v3, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8118
    nop

    .line 8119
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    .line 8118
    invoke-virtual {p0, v3, v4}, Landroid/media/AudioManager;->addOnModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$OnModeChangedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8124
    nop

    .line 8125
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/AudioManager;->mCallIRedirectionClients:Ljava/util/ArrayList;

    goto :goto_1

    .line 8120
    :catch_0
    move-exception v3

    .line 8121
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "AudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOnModeChangedListener failed with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8122
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/media/AudioManager;->mCallRedirectionModeListener:Landroid/media/AudioManager$CallInjectionModeChangedListener;

    .line 8123
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, " Cannot register mode listener "

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "track":Landroid/media/AudioTrack;
    .end local v2    # "redirectMode":I
    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "format":Landroid/media/AudioFormat;
    throw v4

    .line 8127
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "track":Landroid/media/AudioTrack;
    .restart local v2    # "redirectMode":I
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "format":Landroid/media/AudioFormat;
    :cond_2
    :goto_1
    new-instance v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;

    invoke-direct {v3, p0}, Landroid/media/AudioManager$CallIRedirectionClientInfo;-><init>(Landroid/media/AudioManager;)V

    .line 8128
    .local v3, "info":Landroid/media/AudioManager$CallIRedirectionClientInfo;
    iput v2, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->redirectMode:I

    .line 8129
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->trackOrRecord:Ljava/lang/ref/WeakReference;

    .line 8130
    iget-object v4, p0, Landroid/media/AudioManager;->mCallIRedirectionClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8131
    nop

    .end local v3    # "info":Landroid/media/AudioManager$CallIRedirectionClientInfo;
    monitor-exit v1

    .line 8135
    return-object v0

    .line 8131
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 8133
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, " Cannot create the AudioTrack"

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8098
    .end local v0    # "track":Landroid/media/AudioTrack;
    .restart local v1    # "track":Landroid/media/AudioTrack;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " not available in mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8099
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCommunicationDevice()Landroid/media/AudioDeviceInfo;
    .locals 2

    .line 7798
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getCommunicationDevice()I

    move-result v0

    const/4 v1, 0x2

    .line 7797
    invoke-static {v0, v1}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7799
    :catch_0
    move-exception v0

    .line 7800
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
    .locals 3
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5922
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5924
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5926
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 5927
    :catch_0
    move-exception v1

    .line 5928
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getDevices(I)[Landroid/media/AudioDeviceInfo;
    .locals 1
    .param p1, "flags"    # I

    .line 6761
    invoke-static {p1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;
    .locals 3
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 5742
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5743
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5745
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 5746
    :catch_0
    move-exception v1

    .line 5747
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist getDevicesForStream(I)I
    .locals 3
    .param p1, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5708
    packed-switch p1, :pswitch_data_0

    .line 5724
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 5717
    :pswitch_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5719
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getDeviceMaskForStream(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 5720
    :catch_0
    move-exception v1

    .line 5721
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist getDirectProfilesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;
    .locals 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation

    .line 7844
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7846
    .local v0, "audioProfilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioProfile;>;"
    invoke-static {p1, v0}, Landroid/media/AudioSystem;->getDirectProfilesForAttributes(Landroid/media/AudioAttributes;Ljava/util/ArrayList;)I

    move-result v1

    .line 7847
    .local v1, "status":I
    if-eqz v1, :cond_0

    .line 7848
    const-string v2, "AudioManager"

    const-string v3, "getDirectProfilesForAttributes failed."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7849
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 7851
    :cond_0
    return-object v0
.end method

.method public whitelist getEncodedSurroundMode()I
    .locals 2

    .line 7273
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 7274
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7273
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getEncodedSurroundMode(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7275
    :catch_0
    move-exception v0

    .line 7276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J
    .locals 2
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 4363
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4365
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 4366
    :catch_0
    move-exception v0

    .line 4367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getFineVolume(II)I
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .line 9411
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 9414
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9416
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->getFineVolume(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 9417
    :catch_0
    move-exception v1

    .line 9418
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in getFineVolume"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9420
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1

    .line 9412
    .end local v0    # "service":Landroid/media/IAudioService;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getFloatVolumeTable()[F
    .locals 4

    .line 10354
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10357
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getFloatVolumeTable()[F

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 10358
    :catch_0
    move-exception v1

    .line 10359
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "getFloatVolumeTable error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10361
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .locals 3
    .param p1, "focusGain"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;

    .line 4549
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4551
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 4552
    :catch_0
    move-exception v1

    .line 4553
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getHwOffloadFormatsSupportedForA2dp()Ljava/util/List;
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation

    .line 7012
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7013
    .local v0, "formatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7015
    .local v1, "codecConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothCodecConfig;>;"
    const/16 v2, 0x80

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getHwOffloadFormatsSupportedForBluetoothMedia(ILjava/util/ArrayList;)I

    move-result v2

    .line 7017
    .local v2, "status":I
    if-eqz v2, :cond_0

    .line 7018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHwOffloadEncodingFormatsSupportedForA2DP failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7019
    return-object v1

    .line 7022
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 7023
    .local v4, "format":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/media/AudioSystem;->audioFormatToBluetoothSourceCodec(I)I

    move-result v5

    .line 7024
    .local v5, "btSourceCodec":I
    const v6, 0xf4240

    if-eq v5, v6, :cond_1

    .line 7025
    new-instance v6, Landroid/bluetooth/BluetoothCodecConfig$Builder;

    invoke-direct {v6}, Landroid/bluetooth/BluetoothCodecConfig$Builder;-><init>()V

    .line 7026
    invoke-virtual {v6, v5}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->setCodecType(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothCodecConfig$Builder;->build()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v6

    .line 7025
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7028
    .end local v4    # "format":Ljava/lang/Integer;
    .end local v5    # "btSourceCodec":I
    :cond_1
    goto :goto_0

    .line 7029
    :cond_2
    return-object v1
.end method

.method public blacklist getHwOffloadFormatsSupportedForLeAudio()Ljava/util/List;
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation

    .line 7043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7044
    .local v0, "formatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7046
    .local v1, "leAudioCodecConfigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothLeAudioCodecConfig;>;"
    const/high16 v2, 0x20000000

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->getHwOffloadFormatsSupportedForBluetoothMedia(ILjava/util/ArrayList;)I

    move-result v2

    .line 7048
    .local v2, "status":I
    if-eqz v2, :cond_0

    .line 7049
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHwOffloadEncodingFormatsSupportedForLeAudio failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7050
    return-object v1

    .line 7053
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 7054
    .local v4, "format":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/media/AudioSystem;->audioFormatToBluetoothLeAudioSourceCodec(I)I

    move-result v5

    .line 7055
    .local v5, "btLeAudioCodec":I
    const v6, 0xf4240

    if-eq v5, v6, :cond_1

    .line 7056
    new-instance v6, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;

    invoke-direct {v6}, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;-><init>()V

    .line 7057
    invoke-virtual {v6, v5}, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->setCodecType(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;

    move-result-object v6

    .line 7058
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->build()Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    move-result-object v6

    .line 7056
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7060
    .end local v4    # "format":Ljava/lang/Integer;
    .end local v5    # "btLeAudioCodec":I
    :cond_1
    goto :goto_0

    .line 7061
    :cond_2
    return-object v1
.end method

.method public whitelist getLastAudibleStreamVolume(I)I
    .locals 3
    .param p1, "streamType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1248
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1250
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getLastAudibleStreamVolume(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1251
    :catch_0
    move-exception v1

    .line 1252
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getLimitedVolume()I
    .locals 1

    .line 9503
    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceInfo;)J
    .locals 2
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6185
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6187
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 6189
    :catch_0
    move-exception v0

    .line 6190
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 3
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1386
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1389
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1390
    :catch_0
    move-exception v1

    .line 1391
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getMicrophones()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MicrophoneInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6984
    .local v0, "microphones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MicrophoneInfo;>;"
    invoke-static {v0}, Landroid/media/AudioSystem;->getMicrophones(Ljava/util/ArrayList;)I

    move-result v1

    .line 6985
    .local v1, "status":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 6986
    .local v2, "filterTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6987
    if-eqz v1, :cond_1

    .line 6989
    const/4 v3, -0x3

    const-string v4, "AudioManager"

    if-eq v1, v3, :cond_0

    .line 6990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMicrophones failed:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6992
    :cond_0
    const-string v3, "fallback on device info"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6993
    invoke-direct {p0, v0, v2}, Landroid/media/AudioManager;->addMicrophonesFromAudioDeviceInfo(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 6994
    return-object v0

    .line 6996
    :cond_1
    invoke-static {v0}, Landroid/media/AudioManager;->setPortIdForMicrophones(Ljava/util/ArrayList;)V

    .line 6997
    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6998
    invoke-direct {p0, v0, v2}, Landroid/media/AudioManager;->addMicrophonesFromAudioDeviceInfo(Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 6999
    return-object v0
.end method

.method public whitelist getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 3
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1407
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1410
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1411
    :catch_0
    move-exception v1

    .line 1412
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getMode()I
    .locals 6

    .line 2999
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3001
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3004
    .local v1, "mode":I
    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3008
    .local v2, "sdk":I
    goto :goto_0

    .line 3005
    .end local v2    # "sdk":I
    :catch_0
    move-exception v2

    .line 3007
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move v2, v3

    .line 3009
    .local v2, "sdk":I
    :goto_0
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_0

    .line 3010
    const/4 v1, 0x2

    goto :goto_1

    .line 3011
    :cond_0
    const/4 v3, 0x5

    const-wide/32 v4, 0xb4b1f8b

    if-ne v1, v3, :cond_1

    .line 3012
    invoke-static {v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3013
    const/4 v1, 0x2

    goto :goto_1

    .line 3014
    :cond_1
    const/4 v3, 0x6

    if-ne v1, v3, :cond_2

    .line 3015
    invoke-static {v4, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v3, :cond_2

    .line 3016
    const/4 v1, 0x3

    .line 3018
    :cond_2
    :goto_1
    return v1

    .line 3019
    .end local v1    # "mode":I
    .end local v2    # "sdk":I
    :catch_1
    move-exception v1

    .line 3020
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getModeInternal()I
    .locals 4

    .line 10484
    const/4 v0, 0x0

    .line 10486
    .local v0, "mode":I
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getModeInternal()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 10489
    goto :goto_0

    .line 10487
    :catch_0
    move-exception v1

    .line 10488
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Error get mode internal"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10490
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public blacklist getMuteInterval()I
    .locals 4

    .line 10158
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10161
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getMuteInterval()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 10162
    :catch_0
    move-exception v1

    .line 10163
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Error calling getMuteInterval"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10164
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8304
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8305
    :catch_0
    move-exception v0

    .line 8306
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getOutputLatency(I)I
    .locals 1
    .param p1, "streamType"    # I

    .line 6203
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputLatency(I)I

    move-result v0

    return v0
.end method

.method public whitelist getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "keys"    # Ljava/lang/String;

    .line 3429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getParameters keys = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    const-string v0, "g_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3432
    invoke-static {p1}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3434
    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPinAppName(I)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # I

    .line 10056
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10059
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 10060
    :catch_0
    move-exception v1

    .line 10061
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Error calling getPinAppName"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10062
    const-string v2, ""

    return-object v2
.end method

.method public blacklist getPinDeviceName(I)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # I

    .line 10073
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10076
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l_multi_sound_key;pin_device_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 10078
    :catch_0
    move-exception v1

    .line 10079
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in getPinDeviceName"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10081
    .end local v1    # "e":Landroid/os/RemoteException;
    const-string v1, ""

    return-object v1
.end method

.method public whitelist getPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Landroid/media/AudioDeviceAttributes;
    .locals 2
    .param p1, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1785
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getPreferredDevicesForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Ljava/util/List;

    move-result-object v0

    .line 1786
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    :goto_0
    return-object v1
.end method

.method public whitelist getPreferredDevicesForCapturePreset(I)Ljava/util/List;
    .locals 2
    .param p1, "capturePreset"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 2148
    invoke-static {p1}, Landroid/media/MediaRecorder;->isValidAudioSource(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2152
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getPreferredDevicesForCapturePreset(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2153
    :catch_0
    move-exception v0

    .line 2154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPreferredDevicesForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Ljava/util/List;
    .locals 2
    .param p1, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 1838
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getPreferredDevicesForStrategy(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1841
    :catch_0
    move-exception v0

    .line 1842
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPrevRingerMode()I
    .locals 4

    .line 10192
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10195
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getPrevRingerMode()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 10196
    :catch_0
    move-exception v1

    .line 10197
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Error calling getPrevRingerMode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10198
    const/4 v2, -0x1

    return v2
.end method

.method public whitelist getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 6096
    const-string v0, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6097
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v0

    .line 6098
    .local v0, "outputSampleRate":I
    if-lez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    .line 6099
    .end local v0    # "outputSampleRate":I
    :cond_1
    const-string v0, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6100
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputFrameCount()I

    move-result v0

    .line 6101
    .local v0, "outputFramesPerBuffer":I
    if-lez v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1

    .line 6102
    .end local v0    # "outputFramesPerBuffer":I
    :cond_3
    const-string v0, "android.media.property.SUPPORT_MIC_NEAR_ULTRASOUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6105
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6107
    :cond_4
    const-string v0, "android.media.property.SUPPORT_SPEAKER_NEAR_ULTRASOUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6108
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6110
    :cond_5
    const-string v0, "android.media.property.SUPPORT_AUDIO_SOURCE_UNPROCESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6111
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6115
    :cond_6
    return-object v1
.end method

.method public blacklist getRemainingMuteIntervalMs()I
    .locals 4

    .line 10175
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10178
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getRemainingMuteIntervalMs()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 10179
    :catch_0
    move-exception v1

    .line 10180
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Error calling getRemainingMuteIntervalMs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10181
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist getReportedSurroundFormats()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7344
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7345
    :catch_0
    move-exception v0

    .line 7346
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRingerMode()I
    .locals 3

    .line 1056
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1058
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getRingerModeExternal()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1059
    :catch_0
    move-exception v1

    .line 1060
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist getRingerModeInternal()I
    .locals 2

    .line 6289
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getRingerModeInternal()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6290
    :catch_0
    move-exception v0

    .line 6291
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 2

    .line 6036
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6037
    :catch_0
    move-exception v0

    .line 6038
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRouting(I)I
    .locals 1
    .param p1, "mode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3239
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSpatializer()Landroid/media/Spatializer;
    .locals 1

    .line 2596
    new-instance v0, Landroid/media/Spatializer;

    invoke-direct {v0, p0}, Landroid/media/Spatializer;-><init>(Landroid/media/AudioManager;)V

    return-object v0
.end method

.method public whitelist getStreamMaxVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .line 1116
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1118
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1119
    :catch_0
    move-exception v1

    .line 1120
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getStreamMinVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .line 1134
    invoke-static {p1}, Landroid/media/AudioManager;->isPublicStreamType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result v0

    return v0

    .line 1135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getStreamMinVolumeInt(I)I
    .locals 3
    .param p1, "streamType"    # I

    .line 1149
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1151
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getStreamMinVolume(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1152
    :catch_0
    move-exception v1

    .line 1153
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getStreamVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .line 1166
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1168
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1169
    :catch_0
    move-exception v1

    .line 1170
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getStreamVolume(II)I
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .line 10023
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10025
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->getStreamVolumeForDevice(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 10026
    :catch_0
    move-exception v1

    .line 10027
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in getStreamVolume"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10029
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist getStreamVolumeDb(III)F
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "deviceType"    # I

    .line 1206
    invoke-static {p1}, Landroid/media/AudioManager;->isPublicStreamType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1209
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    if-gt p2, v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 1212
    invoke-static {p3}, Landroid/media/AudioDeviceInfo;->isValidAudioDeviceTypeOut(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1215
    nop

    .line 1216
    invoke-static {p3}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    .line 1215
    invoke-static {p1, p2, v0}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v0

    .line 1217
    .local v0, "gain":F
    const v1, -0x3bc28000    # -758.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 1218
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    return v1

    .line 1220
    :cond_0
    return v0

    .line 1213
    .end local v0    # "gain":F
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio output device type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1210
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream volume index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1207
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSupportedSystemUsages()[I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1441
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1443
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getSupportedSystemUsages()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1444
    :catch_0
    move-exception v1

    .line 1445
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o getSurroundFormats()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 7290
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getSurroundFormats()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7291
    :catch_0
    move-exception v0

    .line 7292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getUiSoundsStreamType()I
    .locals 3

    .line 1263
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1265
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getUiSoundsStreamType()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1266
    :catch_0
    move-exception v1

    .line 1267
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getVibrateSetting(I)I
    .locals 3
    .param p1, "vibrateType"    # I

    .line 1605
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1607
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getVibrateSetting(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1608
    :catch_0
    move-exception v1

    .line 1609
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 3
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1365
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1368
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1369
    :catch_0
    move-exception v1

    .line 1370
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist handleBluetoothActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V
    .locals 3
    .param p1, "newDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "previousDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "info"    # Landroid/media/BluetoothProfileConnectionInfo;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 6021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBluetoothActiveDeviceChanged newDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6022
    invoke-static {p1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " prevDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6023
    invoke-static {p2}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6021
    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6025
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6027
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->handleBluetoothActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6030
    nop

    .line 6031
    return-void

    .line 6028
    :catch_0
    move-exception v1

    .line 6029
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist hasRegisteredDynamicPolicy()Z
    .locals 3

    .line 4948
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4950
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->hasRegisteredDynamicPolicy()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 4951
    :catch_0
    move-exception v1

    .line 4952
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist isAppMute(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 9896
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9899
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isAppMute(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 9900
    :catch_0
    move-exception v1

    .line 9901
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in isAppMute"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9903
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o isAudioFocusExclusive()Z
    .locals 3

    .line 3279
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3281
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getCurrentAudioFocus()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3282
    :catch_0
    move-exception v1

    .line 3283
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isAudioServerRunning()Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7244
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 7246
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isAudioServerRunning()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 7247
    :catch_0
    move-exception v1

    .line 7248
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isBluetoothA2dpOn()Z
    .locals 3

    .line 2833
    const/16 v0, 0x80

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2835
    return v2

    .line 2836
    :cond_0
    const/16 v0, 0x100

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2838
    return v2

    .line 2839
    :cond_1
    const/16 v0, 0x200

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 2841
    return v2

    .line 2843
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBluetoothScoAvailableOffCall()Z
    .locals 2

    .line 2681
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isBluetoothScoOn()Z
    .locals 3

    .line 2809
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2811
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isBluetoothScoOn()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2812
    :catch_0
    move-exception v1

    .line 2813
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isCallScreeningModeSupported()Z
    .locals 3

    .line 3102
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3104
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCallScreeningModeSupported()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3105
    :catch_0
    move-exception v1

    .line 3106
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist isForceSpeakerOn()Z
    .locals 4

    .line 9073
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9075
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isForceSpeakerOn()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 9076
    :catch_0
    move-exception v1

    .line 9077
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in isForceSpeakerOn"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9078
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist isFullVolumeDevice()Z
    .locals 6

    .line 5942
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 5943
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5944
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 5945
    .local v0, "attributes":Landroid/media/AudioAttributes;
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v2

    .line 5946
    .local v2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    .line 5947
    .local v4, "device":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {p0, v4}, Landroid/media/AudioManager;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 5948
    return v1

    .line 5950
    .end local v4    # "device":Landroid/media/AudioDeviceAttributes;
    :cond_0
    goto :goto_0

    .line 5951
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isHdmiSystemAudioSupported()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6331
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isHdmiSystemAudioSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6332
    :catch_0
    move-exception v0

    .line 6333
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isHomeSoundEffectEnabled()Z
    .locals 2

    .line 3640
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isHomeSoundEffectEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3641
    :catch_0
    move-exception v0

    .line 3642
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist isMasterMute()Z
    .locals 3

    .line 1533
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1535
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isMasterMute()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1536
    :catch_0
    move-exception v1

    .line 1537
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isMicrophoneMute()Z
    .locals 3

    .line 2923
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2925
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isMicrophoneMuted()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2926
    :catch_0
    move-exception v1

    .line 2927
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist isMultiSoundOn()Z
    .locals 4

    .line 9944
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9947
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isMultiSoundOn()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 9948
    :catch_0
    move-exception v1

    .line 9949
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in isMultiSoundOn"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9951
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isMusicActive()Z
    .locals 3

    .line 3248
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3250
    .local v0, "service":Landroid/media/IAudioService;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->isMusicActive(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3251
    :catch_0
    move-exception v1

    .line 3252
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-r isMusicActiveRemotely()Z
    .locals 3

    .line 3264
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3266
    .local v0, "service":Landroid/media/IAudioService;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->isMusicActive(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3267
    :catch_0
    move-exception v1

    .line 3268
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isPstnCallAudioInterceptable()Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7991
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 7993
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isPstnCallAudioInterceptable()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 7994
    :catch_0
    move-exception v1

    .line 7995
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isRampingRingerEnabled()Z
    .locals 3

    .line 1071
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "apply_ramping_ringer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public blacklist isSafeMediaVolumeDeviceOn(I)Z
    .locals 2
    .param p1, "device"    # I

    .line 10088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_safe_media_volume_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10090
    .local v0, "strReturn":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10091
    const/4 v1, 0x1

    return v1

    .line 10093
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isSafeMediaVolumeStateActive()Z
    .locals 3

    .line 10106
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10108
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isSafeMediaVolumeStateActive()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 10109
    :catch_0
    move-exception v1

    .line 10110
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist isSilentMode()Z
    .locals 2

    .line 5397
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 5398
    .local v0, "ringerMode":I
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5401
    .local v1, "silentMode":Z
    :cond_1
    :goto_0
    return v1
.end method

.method public whitelist isSpeakerphoneOn()Z
    .locals 3

    .line 1664
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1666
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isSpeakerphoneOn()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1667
    :catch_0
    move-exception v1

    .line 1668
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o isStreamAffectedByMute(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .line 6251
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isStreamAffectedByMute(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6252
    :catch_0
    move-exception v0

    .line 6253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isStreamAffectedByRingerMode(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .line 6239
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6240
    :catch_0
    move-exception v0

    .line 6241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isStreamMute(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .line 1518
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1520
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isStreamMute(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1521
    :catch_0
    move-exception v1

    .line 1522
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist isSurroundFormatEnabled(I)Z
    .locals 2
    .param p1, "audioFormat"    # I

    .line 7327
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isSurroundFormatEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7328
    :catch_0
    move-exception v0

    .line 7329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isUltrasoundSupported()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7376
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isUltrasoundSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7377
    :catch_0
    move-exception v0

    .line 7378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isUsingAudio(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 9554
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->isUsingAudio(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist isUsingAudio(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 9566
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AudioManager"

    if-eqz v0, :cond_0

    .line 9567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid package : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9568
    return v1

    .line 9571
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9573
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p2}, Landroid/media/IAudioService;->isUsingAudio(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 9574
    :catch_0
    move-exception v3

    .line 9575
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Dead object in isUsingAudio"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9577
    .end local v3    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist isVolumeFixed()Z
    .locals 4

    .line 936
    const/4 v0, 0x0

    .line 938
    .local v0, "res":Z
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->isVolumeFixed()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 941
    goto :goto_0

    .line 939
    :catch_0
    move-exception v1

    .line 940
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Error querying isVolumeFixed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 942
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist isWiredHeadsetOn()Z
    .locals 2

    .line 2866
    const/4 v0, 0x4

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 2868
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x4000000

    .line 2870
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2872
    const/4 v0, 0x0

    return v0

    .line 2874
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method synthetic blacklist lambda$addOnCommunicationDeviceChangedListener$1$android-media-AudioManager()Landroid/media/CallbackUtil$DispatcherStub;
    .locals 2

    .line 7938
    new-instance v0, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$CommunicationDeviceDispatcherStub-IA;)V

    return-object v0
.end method

.method synthetic blacklist lambda$addOnModeChangedListener$0$android-media-AudioManager()Landroid/media/CallbackUtil$DispatcherStub;
    .locals 1

    .line 3075
    new-instance v0, Landroid/media/AudioManager$ModeDispatcherStub;

    invoke-direct {v0, p0}, Landroid/media/AudioManager$ModeDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-object v0
.end method

.method synthetic blacklist lambda$registerMuteAwaitConnectionCallback$2$android-media-AudioManager()Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;
    .locals 2

    .line 8410
    new-instance v0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub-IA;)V

    return-object v0
.end method

.method public whitelist loadSoundEffects()V
    .locals 3

    .line 3716
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3718
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->loadSoundEffects()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3721
    nop

    .line 3722
    return-void

    .line 3719
    :catch_0
    move-exception v1

    .line 3720
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "usagesToMute"    # [I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p3, "timeout"    # J
    .param p5, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 8275
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 8278
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8279
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 8282
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8283
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8285
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/media/IAudioService;->muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8288
    nop

    .line 8289
    return-void

    .line 8286
    :catch_0
    move-exception v0

    .line 8287
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8280
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array of usages to mute cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8276
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 2
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .line 6227
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6230
    nop

    .line 6231
    return-void

    .line 6228
    :catch_0
    move-exception v0

    .line 6229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist playSoundEffect(I)V
    .locals 1
    .param p1, "effectType"    # I

    .line 3654
    invoke-static {p1}, Lcom/samsung/android/media/AudioFxHelper;->getPlaySoundTypeForSEP(I)I

    move-result p1

    .line 3656
    if-ltz p1, :cond_1

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3659
    :cond_0
    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->playSoundEffect(II)V

    .line 3660
    return-void

    .line 3657
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist playSoundEffect(IF)V
    .locals 3
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .line 3697
    invoke-static {p1}, Lcom/samsung/android/media/AudioFxHelper;->getPlaySoundTypeForSEP(I)I

    move-result p1

    .line 3699
    if-ltz p1, :cond_1

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3703
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3705
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->playSoundEffectVolume(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3708
    nop

    .line 3709
    return-void

    .line 3706
    :catch_0
    move-exception v1

    .line 3707
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 3700
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public greylist-max-o playSoundEffect(II)V
    .locals 3
    .param p1, "effectType"    # I
    .param p2, "userId"    # I

    .line 3672
    invoke-static {p1}, Lcom/samsung/android/media/AudioFxHelper;->getPlaySoundTypeForSEP(I)I

    move-result p1

    .line 3674
    if-ltz p1, :cond_1

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 3678
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3680
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->playSoundEffect(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3683
    nop

    .line 3684
    return-void

    .line 3681
    :catch_0
    move-exception v1

    .line 3682
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 3675
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public greylist-max-o preDispatchKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "stream"    # I

    .line 906
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 907
    .local v0, "keyCode":I
    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Landroid/media/AudioManager;->mVolumeKeyUpTime:J

    const-wide/16 v3, 0x12c

    add-long/2addr v1, v3

    .line 909
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 914
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v1, p2, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 917
    :cond_0
    return-void
.end method

.method public whitelist registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/AudioDeviceCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 6879
    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 6880
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6881
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 6882
    iget-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    if-nez v1, :cond_0

    .line 6883
    new-instance v1, Landroid/media/AudioManager$OnAmPortUpdateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/AudioManager$OnAmPortUpdateListener;-><init>(Landroid/media/AudioManager;Landroid/media/AudioManager$OnAmPortUpdateListener-IA;)V

    iput-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    .line 6885
    :cond_0
    iget-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 6887
    :cond_1
    new-instance v1, Landroid/media/AudioManager$NativeEventHandlerDelegate;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/AudioManager$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 6889
    .local v1, "delegate":Landroid/media/AudioManager$NativeEventHandlerDelegate;
    iget-object v2, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6890
    invoke-virtual {v1}, Landroid/media/AudioManager$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/media/AudioManager;->broadcastDeviceListChange_sync(Landroid/os/Handler;)V

    .line 6892
    .end local v1    # "delegate":Landroid/media/AudioManager$NativeEventHandlerDelegate;
    :cond_2
    monitor-exit v0

    .line 6893
    return-void

    .line 6892
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o registerAudioFocusRequest(Landroid/media/AudioFocusRequest;)V
    .locals 4
    .param p1, "afr"    # Landroid/media/AudioFocusRequest;

    .line 3993
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListenerHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3994
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Landroid/media/AudioManager$FocusRequestInfo;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 3995
    :cond_0
    new-instance v2, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v2, p0, v0}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    invoke-virtual {v2}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    :goto_0
    invoke-direct {v1, p1, v2}, Landroid/media/AudioManager$FocusRequestInfo;-><init>(Landroid/media/AudioFocusRequest;Landroid/os/Handler;)V

    .line 3996
    .local v1, "fri":Landroid/media/AudioManager$FocusRequestInfo;
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v2

    .line 3997
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3998
    return-void
.end method

.method public whitelist registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V
    .locals 6
    .param p1, "cb"    # Landroid/media/AudioManager$AudioPlaybackCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 5007
    if-eqz p1, :cond_3

    .line 5011
    iget-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5013
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 5014
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    .line 5016
    :cond_0
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5017
    .local v1, "oldCbCount":I
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->hasPlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5018
    iget-object v2, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    new-instance v3, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;

    new-instance v4, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v4, p0, p2}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    .line 5019
    invoke-virtual {v4}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/media/AudioManager$AudioPlaybackCallbackInfo;-><init>(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 5018
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5020
    iget-object v2, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5021
    .local v2, "newCbCount":I
    if-nez v1, :cond_1

    if-lez v2, :cond_1

    .line 5025
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/media/IAudioService;->registerPlaybackCallbackWithPackage(Landroid/media/IPlaybackConfigDispatcher;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5031
    goto :goto_0

    .line 5029
    :catch_0
    move-exception v3

    .line 5030
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "cb":Landroid/media/AudioManager$AudioPlaybackCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v4

    .line 5033
    .end local v2    # "newCbCount":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "cb":Landroid/media/AudioManager$AudioPlaybackCallback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    :goto_0
    goto :goto_1

    .line 5034
    :cond_2
    const-string v2, "AudioManager"

    const-string v3, "attempt to call registerAudioPlaybackCallback() on a previouslyregistered callback"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5037
    .end local v1    # "oldCbCount":I
    :goto_1
    monitor-exit v0

    .line 5038
    return-void

    .line 5037
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5008
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPlaybackCallback argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I
    .locals 1
    .param p1, "policy"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4871
    invoke-static {p1}, Landroid/media/AudioManager;->registerAudioPolicyStatic(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v0

    return v0
.end method

.method public greylist registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .line 6536
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0}, Landroid/media/AudioPortEventHandler;->init()V

    .line 6537
    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->registerListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 6538
    return-void
.end method

.method public whitelist registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V
    .locals 6
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 5201
    if-eqz p1, :cond_3

    .line 5205
    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5207
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 5208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    .line 5210
    :cond_0
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5211
    .local v1, "oldCbCount":I
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->hasRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5212
    iget-object v2, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    new-instance v3, Landroid/media/AudioManager$AudioRecordingCallbackInfo;

    new-instance v4, Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {v4, p0, p2}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    .line 5213
    invoke-virtual {v4}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/media/AudioManager$AudioRecordingCallbackInfo;-><init>(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    .line 5212
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5214
    iget-object v2, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 5215
    .local v2, "newCbCount":I
    if-nez v1, :cond_1

    if-lez v2, :cond_1

    .line 5217
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5219
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5222
    goto :goto_0

    .line 5220
    :catch_0
    move-exception v4

    .line 5221
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "cb":Landroid/media/AudioManager$AudioRecordingCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v5

    .line 5224
    .end local v2    # "newCbCount":I
    .end local v3    # "service":Landroid/media/IAudioService;
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "cb":Landroid/media/AudioManager$AudioRecordingCallback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    :goto_0
    goto :goto_1

    .line 5225
    :cond_2
    const-string v2, "AudioManager"

    const-string v3, "attempt to call registerAudioRecordingCallback() on a previouslyregistered callback"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5228
    .end local v1    # "oldCbCount":I
    :goto_1
    monitor-exit v0

    .line 5229
    return-void

    .line 5228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5202
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioRecordingCallback argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "eventReceiver"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4717
    if-nez p1, :cond_0

    .line 4718
    return-void

    .line 4720
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 4721
    return-void
.end method

.method public whitelist registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4685
    if-nez p1, :cond_0

    .line 4686
    return-void

    .line 4688
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4689
    const-string v0, "AudioManager"

    const-string v1, "registerMediaButtonEventReceiver() error: receiver and context package names don\'t match"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4691
    return-void

    .line 4694
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4696
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4697
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4700
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 4701
    return-void
.end method

.method public greylist-max-o registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;

    .line 4728
    if-nez p1, :cond_0

    .line 4729
    const-string v0, "AudioManager"

    const-string v1, "Cannot call registerMediaButtonIntent() with a null parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4730
    return-void

    .line 4732
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 4733
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/session/MediaSessionLegacyHelper;->addMediaButtonListener(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/content/Context;)V

    .line 4734
    return-void
.end method

.method public whitelist registerMuteAwaitConnectionCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$MuteAwaitConnectionCallback;)V
    .locals 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/AudioManager$MuteAwaitConnectionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8404
    iget-object v0, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8406
    :try_start_0
    const-string v1, "registerMuteAwaitConnectionCallback"

    iget-object v4, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListeners:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/media/AudioManager;->mMuteAwaitConnDispatcherStub:Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    new-instance v6, Landroid/media/AudioManager$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Landroid/media/AudioManager$$ExternalSyntheticLambda2;-><init>(Landroid/media/AudioManager;)V

    new-instance v7, Landroid/media/AudioManager$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Landroid/media/AudioManager$$ExternalSyntheticLambda3;-><init>()V

    .line 8407
    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Landroid/media/CallbackUtil;->addListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)Landroid/util/Pair;

    move-result-object v1

    .line 8412
    .local v1, "res":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<Landroid/media/AudioManager$MuteAwaitConnectionCallback;>;>;Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListeners:Ljava/util/ArrayList;

    .line 8413
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    iput-object v2, p0, Landroid/media/AudioManager;->mMuteAwaitConnDispatcherStub:Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    .line 8414
    .end local v1    # "res":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<Landroid/media/AudioManager$MuteAwaitConnectionCallback;>;>;Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;>;"
    monitor-exit v0

    .line 8415
    return-void

    .line 8414
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist registerRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 1
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4789
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4792
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->registerWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    .line 4793
    return-void

    .line 4790
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist registerRemoteController(Landroid/media/RemoteController;)Z
    .locals 1
    .param p1, "rctlr"    # Landroid/media/RemoteController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4829
    if-nez p1, :cond_0

    .line 4830
    const/4 v0, 0x0

    return v0

    .line 4832
    :cond_0
    invoke-virtual {p1}, Landroid/media/RemoteController;->startListeningToSessions()V

    .line 4833
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist registerVolumeGroupCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$VolumeGroupCallback;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/AudioManager$VolumeGroupCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7449
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7450
    const-string/jumbo v0, "volume group change cb must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7451
    sget-object v0, Landroid/media/AudioManager;->sAudioAudioVolumeGroupChangedHandler:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->init()V

    .line 7453
    invoke-virtual {v0, p2}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->registerListener(Landroid/media/AudioManager$VolumeGroupCallback;)V

    .line 7454
    return-void
.end method

.method public greylist-max-r reloadAudioSettings()V
    .locals 3

    .line 5373
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5375
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->reloadAudioSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5378
    nop

    .line 5379
    return-void

    .line 5376
    :catch_0
    move-exception v1

    .line 5377
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist removeAssistantServicesUids([I)V
    .locals 2
    .param p1, "assistantUids"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8466
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->removeAssistantServicesUids([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8469
    nop

    .line 8470
    return-void

    .line 8467
    :catch_0
    move-exception v0

    .line 8468
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeOnCommunicationDeviceChangedListener(Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    .line 7948
    iget-object v0, p0, Landroid/media/AudioManager;->mCommDeviceChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnCommunicationDeviceChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7950
    return-void
.end method

.method public whitelist removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioManager$OnModeChangedListener;

    .line 3084
    iget-object v0, p0, Landroid/media/AudioManager;->mModeChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnModeChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3085
    return-void
.end method

.method public whitelist removeOnPreferredDeviceForStrategyChangedListener(Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioManager$OnPreferredDeviceForStrategyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1938
    return-void
.end method

.method public whitelist removeOnPreferredDevicesForCapturePresetChangedListener(Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2246
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/AudioManager;->removeOnDevRoleForCapturePresetChangedListener(Ljava/lang/Object;I)I

    move-result v0

    .line 2249
    .local v0, "status":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2253
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 2258
    return-void

    .line 2254
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempt to call removeOnPreferredDevicesForCapturePresetChangedListener() on an unregistered listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2251
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown error happened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist removeOnPreferredDevicesForStrategyChangedListener(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1990
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    iget-object v0, p0, Landroid/media/AudioManager;->mPrefDevListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1992
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->removePrefDevListener(Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1997
    iget-object v1, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 2000
    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioManager;->mPrefDevDispatcherStub:Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

    invoke-interface {v2, v3}, Landroid/media/IAudioService;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2005
    :try_start_2
    iput-object v1, p0, Landroid/media/AudioManager;->mPrefDevDispatcherStub:Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

    .line 2006
    iput-object v1, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2007
    goto :goto_1

    .line 2005
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 2002
    :catch_0
    move-exception v2

    .line 2003
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "listener":Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2005
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "listener":Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    :goto_0
    :try_start_4
    iput-object v1, p0, Landroid/media/AudioManager;->mPrefDevDispatcherStub:Landroid/media/AudioManager$StrategyPreferredDevicesDispatcherStub;

    .line 2006
    iput-object v1, p0, Landroid/media/AudioManager;->mPrefDevListeners:Ljava/util/ArrayList;

    .line 2007
    nop

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "listener":Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    throw v2

    .line 2009
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "listener":Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    :cond_0
    :goto_1
    monitor-exit v0

    .line 2010
    return-void

    .line 1993
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempt to call removeOnPreferredDeviceForStrategyChangedListener() on an unregistered listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "listener":Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    throw v1

    .line 2009
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "listener":Landroid/media/AudioManager$OnPreferredDevicesForStrategyChangedListener;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public whitelist removePreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;)Z
    .locals 2
    .param p1, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1760
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->removePreferredDevicesForStrategy(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1764
    .local v0, "status":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1765
    .end local v0    # "status":I
    :catch_0
    move-exception v0

    .line 1766
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestAudioFocus(Landroid/media/AudioFocusRequest;)I
    .locals 1
    .param p1, "focusRequest"    # Landroid/media/AudioFocusRequest;

    .line 4162
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v0

    return v0
.end method

.method public whitelist requestAudioFocus(Landroid/media/AudioFocusRequest;Landroid/media/audiopolicy/AudioPolicy;)I
    .locals 18
    .param p1, "afr"    # Landroid/media/AudioFocusRequest;
    .param p2, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4389
    move-object/from16 v1, p0

    if-eqz p1, :cond_6

    .line 4393
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusRequest;->locksFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4394
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal null audio policy when locking audio focus"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4397
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/media/AudioManager;->registerAudioFocusRequest(Landroid/media/AudioFocusRequest;)V

    .line 4398
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v2

    .line 4402
    .local v2, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4406
    .local v0, "sdk":I
    move v14, v0

    goto :goto_1

    .line 4403
    .end local v0    # "sdk":I
    :catch_0
    move-exception v0

    .line 4405
    .local v0, "e":Ljava/lang/NullPointerException;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move v14, v3

    .line 4408
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .local v14, "sdk":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v15

    .line 4410
    .local v15, "clientId":Ljava/lang/String;
    iget-object v13, v1, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    monitor-enter v13

    .line 4413
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v0

    const-string v3, "FM_RADIO"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4414
    .local v0, "isFmRadioAttribute":Z
    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_FM_RADIO:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 4415
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioManager;->getFmRadioPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    .local v3, "callingPackageName":Ljava/lang/String;
    goto :goto_2

    .line 4417
    .end local v3    # "callingPackageName":Ljava/lang/String;
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    .line 4421
    .local v16, "callingPackageName":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 4422
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    move-result v5

    iget-object v6, v1, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v7, v1, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 4426
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 4427
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioFocusRequest;->getFlags()I

    move-result v11

    .line 4428
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    move-object v12, v3

    .line 4421
    move-object v3, v2

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v17, v13

    move v13, v14

    :try_start_2
    invoke-interface/range {v3 .. v13}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4432
    .end local v0    # "isFmRadioAttribute":Z
    .end local v16    # "callingPackageName":Ljava/lang/String;
    .local v3, "status":I
    nop

    .line 4433
    const/16 v0, 0x64

    if-eq v3, v0, :cond_4

    .line 4435
    :try_start_3
    monitor-exit v17

    return v3

    .line 4437
    :cond_4
    iget-object v0, v1, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 4438
    new-instance v0, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, v1, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    .line 4441
    :cond_5
    new-instance v0, Landroid/media/AudioManager$BlockingFocusResultReceiver;

    invoke-direct {v0, v15}, Landroid/media/AudioManager$BlockingFocusResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 4442
    .local v4, "focusReceiver":Landroid/media/AudioManager$BlockingFocusResultReceiver;
    iget-object v0, v1, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    invoke-virtual {v0, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4443
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4444
    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager$BlockingFocusResultReceiver;->waitForResult(J)V

    .line 4448
    iget-object v5, v1, Landroid/media/AudioManager;->mFocusRequestsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4449
    :try_start_4
    iget-object v0, v1, Landroid/media/AudioManager;->mFocusRequestsAwaitingResult:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4450
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4451
    invoke-virtual {v4}, Landroid/media/AudioManager$BlockingFocusResultReceiver;->requestResult()I

    move-result v0

    return v0

    .line 4450
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 4430
    .end local v3    # "status":I
    .end local v4    # "focusReceiver":Landroid/media/AudioManager$BlockingFocusResultReceiver;
    :catch_1
    move-exception v0

    goto :goto_4

    .line 4443
    :catchall_1
    move-exception v0

    move-object/from16 v17, v13

    goto :goto_5

    .line 4430
    :catch_2
    move-exception v0

    move-object/from16 v17, v13

    .line 4431
    .local v0, "e":Landroid/os/RemoteException;
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v2    # "service":Landroid/media/IAudioService;
    .end local v14    # "sdk":I
    .end local v15    # "clientId":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "afr":Landroid/media/AudioFocusRequest;
    .end local p2    # "ap":Landroid/media/audiopolicy/AudioPolicy;
    throw v3

    .line 4443
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "service":Landroid/media/IAudioService;
    .restart local v14    # "sdk":I
    .restart local v15    # "clientId":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "afr":Landroid/media/AudioFocusRequest;
    .restart local p2    # "ap":Landroid/media/audiopolicy/AudioPolicy;
    :catchall_2
    move-exception v0

    :goto_5
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 4390
    .end local v2    # "service":Landroid/media/IAudioService;
    .end local v14    # "sdk":I
    .end local v15    # "clientId":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Illegal null AudioFocusRequest"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 4
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "streamType"    # I
    .param p3, "durationHint"    # I

    .line 4082
    const-string v0, "AudioManager"

    const-string v1, "requestAudioFocus()"

    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 4084
    const/4 v1, 0x0

    .line 4090
    .local v1, "status":I
    :try_start_0
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4092
    invoke-virtual {v2, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    const/4 v3, 0x0

    .line 4090
    invoke-virtual {p0, p1, v2, p3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 4097
    goto :goto_0

    .line 4095
    :catch_0
    move-exception v2

    .line 4096
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Audio focus request denied due to "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4099
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return v1
.end method

.method public whitelist requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I
    .locals 7
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "requestAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "durationHint"    # I
    .param p4, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4218
    and-int/lit8 v0, p4, 0x3

    if-ne p4, v0, :cond_0

    .line 4222
    and-int/lit8 v5, p4, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;IILandroid/media/audiopolicy/AudioPolicy;)I

    move-result v0

    return v0

    .line 4219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4220
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;IILandroid/media/audiopolicy/AudioPolicy;)I
    .locals 6
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .param p2, "requestAttributes"    # Landroid/media/AudioAttributes;
    .param p3, "durationHint"    # I
    .param p4, "flags"    # I
    .param p5, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4263
    if-eqz p2, :cond_b

    .line 4266
    invoke-static {p3}, Landroid/media/AudioFocusRequest;->isValidFocusGain(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4269
    and-int/lit8 v0, p4, 0x7

    if-ne p4, v0, :cond_9

    .line 4273
    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4274
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null focus listener when flagged as accepting delayed focus grant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4277
    :cond_1
    :goto_0
    and-int/lit8 v0, p4, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 4279
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null focus listener when flagged as pausing instead of ducking"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4282
    :cond_3
    :goto_1
    and-int/lit8 v0, p4, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    if-eqz p5, :cond_4

    goto :goto_2

    .line 4283
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null audio policy when locking audio focus"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4287
    :cond_5
    :goto_2
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, p3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    const/4 v4, 0x0

    .line 4288
    invoke-virtual {v0, p1, v4}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListenerInt(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 4289
    invoke-virtual {v0, p2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    and-int/lit8 v4, p4, 0x1

    const/4 v5, 0x0

    if-ne v4, v1, :cond_6

    move v4, v1

    goto :goto_3

    :cond_6
    move v4, v5

    .line 4290
    :goto_3
    invoke-virtual {v0, v4}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    and-int/lit8 v4, p4, 0x2

    if-ne v4, v2, :cond_7

    move v2, v1

    goto :goto_4

    :cond_7
    move v2, v5

    .line 4292
    :goto_4
    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    and-int/lit8 v2, p4, 0x4

    if-ne v2, v3, :cond_8

    goto :goto_5

    :cond_8
    move v1, v5

    .line 4294
    :goto_5
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setLocksFocus(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 4295
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    .line 4296
    .local v0, "afr":Landroid/media/AudioFocusRequest;
    invoke-virtual {p0, v0, p5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v1

    return v1

    .line 4270
    .end local v0    # "afr":Landroid/media/AudioFocusRequest;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4271
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4267
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid duration hint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4264
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r requestAudioFocusForCall(II)V
    .locals 12
    .param p1, "streamType"    # I
    .param p2, "durationHint"    # I

    .line 4525
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v11

    .line 4527
    .local v11, "service":Landroid/media/IAudioService;
    :try_start_0
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4528
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    const/4 v4, 0x0

    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 4531
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4532
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4527
    move-object v0, v11

    move v2, p2

    invoke-interface/range {v0 .. v10}, Landroid/media/IAudioService;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4537
    nop

    .line 4538
    return-void

    .line 4535
    :catch_0
    move-exception v0

    .line 4536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist requestAudioFocusForTest(Landroid/media/AudioFocusRequest;Ljava/lang/String;II)I
    .locals 10
    .param p1, "afr"    # Landroid/media/AudioFocusRequest;
    .param p2, "clientFakeId"    # Ljava/lang/String;
    .param p3, "clientFakeUid"    # I
    .param p4, "clientTargetSdk"    # I

    .line 4314
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4315
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4317
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 4318
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFocusGain()I

    move-result v2

    iget-object v3, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/media/AudioManager;->mAudioFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const-string v6, "com.android.test.fakeclient"

    .line 4322
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getFlags()I

    move-result v5

    or-int/lit8 v7, v5, 0x8

    .line 4317
    move-object v5, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v0 .. v9}, Landroid/media/IAudioService;->requestAudioFocusForTest(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4324
    :catch_0
    move-exception v0

    .line 4325
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist semDismissVolumePanel()V
    .locals 4

    .line 10227
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10230
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->dismissVolumePanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10233
    goto :goto_0

    .line 10231
    :catch_0
    move-exception v1

    .line 10232
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in dismissVolumePanel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10234
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist semGetAudioFocusedPackageName()Ljava/lang/String;
    .locals 4

    .line 10244
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10247
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 10248
    :catch_0
    move-exception v1

    .line 10249
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in getCurrentAudioFocusPackageName"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10251
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist semGetAvailableDeviceMaskForQuickSoundPath()I
    .locals 1

    .line 9202
    invoke-virtual {p0}, Landroid/media/AudioManager;->getAvailableDeviceMaskForQuickSoundPath()I

    move-result v0

    return v0
.end method

.method public whitelist semGetCurrentDeviceType()I
    .locals 3

    .line 9516
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9518
    .local v0, "service":Landroid/media/IAudioService;
    const/4 v1, 0x3

    :try_start_0
    invoke-interface {v0, v1}, Landroid/media/IAudioService;->getDeviceMaskForStream(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9521
    .local v1, "device":I
    goto :goto_0

    .line 9519
    .end local v1    # "device":I
    :catch_0
    move-exception v2

    .line 9520
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    .line 9523
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "device":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v1

    if-eqz v2, :cond_4

    .line 9530
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    .line 9531
    const/4 v1, 0x2

    goto :goto_1

    .line 9532
    :cond_0
    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 9533
    const/high16 v1, 0x40000

    goto :goto_1

    .line 9534
    :cond_1
    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 9535
    const/high16 v1, 0x80000

    goto :goto_1

    .line 9536
    :cond_2
    const/high16 v2, 0x200000

    and-int/2addr v2, v1

    if-eqz v2, :cond_3

    .line 9537
    const/high16 v1, 0x200000

    goto :goto_1

    .line 9539
    :cond_3
    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {v2}, Lcom/samsung/android/media/SemAudioSystem;->makeDeviceBit(Ljava/util/Set;)I

    move-result v2

    and-int/2addr v1, v2

    .line 9542
    :cond_4
    :goto_1
    invoke-static {v1}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v2

    return v2
.end method

.method public whitelist semGetFineVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .line 9404
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->getFineVolume(II)I

    move-result v0

    return v0
.end method

.method public whitelist semGetFineVolume(II)I
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "deviceType"    # I

    .line 9353
    invoke-static {p2}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    .line 9354
    .local v0, "internalDevice":I
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->getFineVolume(II)I

    move-result v1

    return v1
.end method

.method public blacklist semGetFineVolume(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "streamType"    # I

    .line 10338
    if-eqz p1, :cond_0

    .line 10341
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10343
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->getA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 10344
    :catch_0
    move-exception v1

    .line 10345
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "semGetFineVolume error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10347
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1

    .line 10339
    .end local v0    # "service":Landroid/media/IAudioService;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public blacklist semGetPinDevice()I
    .locals 4

    .line 10039
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10042
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getPinDevice()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 10043
    :catch_0
    move-exception v1

    .line 10044
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Error calling semGetPinDevice"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10045
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist semGetRadioOutputPath()I
    .locals 4

    .line 9124
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9126
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->getRadioOutputPath()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 9127
    :catch_0
    move-exception v1

    .line 9128
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in getRadioOutputPath"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9129
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist semGetRingerModeInternal()I
    .locals 1

    .line 10395
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    return v0
.end method

.method public whitelist semGetSituationVolume(II)F
    .locals 3
    .param p1, "situation"    # I
    .param p2, "device"    # I

    .line 9767
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9768
    .local v0, "ret":F
    const/4 v1, 0x1

    if-lt p1, v1, :cond_3

    const/16 v1, 0x10

    if-le p1, v1, :cond_0

    goto :goto_2

    .line 9772
    :cond_0
    if-ltz p2, :cond_2

    const/4 v1, 0x2

    if-le p2, v1, :cond_1

    goto :goto_1

    .line 9777
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g_volume_situation_key;type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9778
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9777
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 9783
    goto :goto_0

    .line 9781
    :catch_0
    move-exception v1

    .line 9782
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 9784
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0

    .line 9774
    :cond_2
    :goto_1
    return v0

    .line 9770
    :cond_3
    :goto_2
    return v0
.end method

.method public whitelist semGetStreamVolume(II)I
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "deviceType"    # I

    .line 10009
    invoke-static {p2}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    .line 10010
    .local v0, "internalDevice":I
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->getStreamVolume(II)I

    move-result v1

    return v1
.end method

.method public whitelist semIsFineVolumeAvailable()Z
    .locals 1

    .line 9366
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist semIsFmRadioActive()Z
    .locals 1

    .line 9141
    invoke-static {}, Lcom/samsung/android/audio/AudioManagerHelper;->isFMPlayerActive()Z

    move-result v0

    return v0
.end method

.method public whitelist semIsRecordActive(I)Z
    .locals 3
    .param p1, "source"    # I

    .line 10126
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 10127
    const-string v1, "l_record_active_enable"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    .line 10129
    .local v0, "param":Lcom/samsung/android/media/AudioParameter;
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10130
    .local v1, "isRecordActive":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public whitelist semIsSafeMediaVolumeDeviceOn()Z
    .locals 2

    .line 9589
    const-string v0, "l_safe_media_volume_enable"

    invoke-static {v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9591
    .local v0, "strReturn":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9592
    const/4 v1, 0x1

    return v1

    .line 9594
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist semIsScreenCallAvailable()Z
    .locals 1

    .line 10477
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SCREEN_CALL:Z

    return v0
.end method

.method public whitelist semIsScreenCallEnabled()Z
    .locals 2

    .line 10465
    const-string v0, "l_screen_call"

    invoke-static {v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10466
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public whitelist semIsSplitSoundOn()Z
    .locals 2

    .line 9272
    const-string v0, "l_smart_view_split_sound_enable"

    invoke-static {v0}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9273
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9274
    const/4 v1, 0x1

    return v1

    .line 9276
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist semIsUhqAvailable()Z
    .locals 1

    .line 9290
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_UHQ:Z

    return v0
.end method

.method public whitelist semIsVoiceCallActive()Z
    .locals 3

    .line 9184
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 9185
    const-string v1, "l_stream_active"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    .line 9186
    .local v0, "param":Lcom/samsung/android/media/AudioParameter;
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioManager;->getAudioServiceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9187
    .local v1, "ret":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public whitelist semSetDeviceForced(ILjava/lang/String;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/lang/String;

    .line 9221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioManager;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public whitelist semSetFineVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .line 9392
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioManager;->setFineVolume(IIII)V

    .line 9393
    return-void
.end method

.method public whitelist semSetFineVolume(IIII)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "deviceType"    # I

    .line 9338
    invoke-static {p4}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v0

    .line 9339
    .local v0, "internalDevice":I
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioManager;->setFineVolume(IIII)V

    .line 9340
    return-void
.end method

.method public blacklist semSetFineVolume(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "streamType"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .line 10323
    if-eqz p1, :cond_0

    .line 10326
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v6

    .line 10329
    .local v6, "service":Landroid/media/IAudioService;
    const/high16 v0, 0x100000

    or-int v4, p4, v0

    .line 10330
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 10329
    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10333
    goto :goto_0

    .line 10331
    :catch_0
    move-exception v0

    .line 10332
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioManager"

    const-string v2, "semSetFineVolume error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10334
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 10324
    .end local v6    # "service":Landroid/media/IAudioService;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public blacklist semSetForceUseForMedia(I)V
    .locals 2
    .param p1, "forced_config"    # I

    .line 9607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_forced_device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 9608
    return-void
.end method

.method public whitelist semSetRadioOutputPath(I)Z
    .locals 5
    .param p1, "path"    # I

    .line 9098
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9100
    .local v0, "service":Landroid/media/IAudioService;
    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "AudioManager"

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 9105
    :cond_0
    :try_start_0
    const-string v1, "Invalid path"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9106
    return v2

    .line 9102
    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setRadioOutputPath(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9103
    const/4 v1, 0x1

    return v1

    .line 9108
    :catch_0
    move-exception v1

    .line 9109
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "Dead object in setRadioOutputPath"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9110
    return v2
.end method

.method public whitelist semSetRemoteMic(Z)V
    .locals 4
    .param p1, "on"    # Z

    .line 10371
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10374
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l_remote_mic_enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string/jumbo v2, "true"

    goto :goto_0

    .line 10375
    :cond_0
    const-string v2, "false"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10376
    .local v1, "param":Ljava/lang/String;
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setRemoteMic(Z)V

    .line 10377
    invoke-static {v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10380
    .end local v1    # "param":Ljava/lang/String;
    goto :goto_1

    .line 10378
    :catch_0
    move-exception v1

    .line 10379
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "semSetRemoteMic error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10381
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public whitelist semSetScreenCallEnabled(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 10452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "semSetScreenCallEnabled state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_screen_call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10454
    if-eqz p1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10453
    invoke-static {v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 10455
    return-void
.end method

.method public whitelist semSetStreamVolume(IIII)V
    .locals 9
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "deviceType"    # I

    .line 9986
    invoke-static {p4}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v7

    .line 9987
    .local v7, "internalDevice":I
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v8

    .line 9990
    .local v8, "service":Landroid/media/IAudioService;
    nop

    .line 9991
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 9990
    move-object v0, v8

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, v7

    invoke-interface/range {v0 .. v6}, Landroid/media/IAudioService;->setStreamVolumeForDeviceWithAttribution(IIILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9995
    goto :goto_0

    .line 9993
    :catch_0
    move-exception v0

    .line 9994
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioManager"

    const-string v2, "Dead object in semSetStreamVolume"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9996
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist semSetVolumeLimitEnabled(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "enabled"    # Z

    .line 9493
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->setMaxLimitedSpkVolume(IZ)V

    .line 9494
    return-void
.end method

.method public blacklist setA2dpSuspended(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A2dpSuspended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3418
    return-void
.end method

.method public whitelist setActiveAssistantServiceUids([I)V
    .locals 2
    .param p1, "assistantUids"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8516
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setActiveAssistantServiceUids([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8519
    nop

    .line 8520
    return-void

    .line 8517
    :catch_0
    move-exception v0

    .line 8518
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceInfo;J)Z
    .locals 2
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;
    .param p2, "delayMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6144
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6146
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    new-instance v1, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v1, p1}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    invoke-interface {v0, v1, p2, p3}, Landroid/media/IAudioService;->setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6148
    :catch_0
    move-exception v0

    .line 6149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAllowedCapturePolicy(I)V
    .locals 5
    .param p1, "capturePolicy"    # I

    .line 1699
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1701
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setAllowedCapturePolicy(I)I

    move-result v1

    .line 1702
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 1703
    const-string v2, "AudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not setAllowedCapturePolicy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1704
    return-void

    .line 1708
    .end local v1    # "result":I
    :cond_0
    nop

    .line 1709
    return-void

    .line 1706
    :catch_0
    move-exception v1

    .line 1707
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setAppDevice(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "device"    # I

    .line 9796
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioManager;->setAppDevice(IIZ)V

    .line 9797
    return-void
.end method

.method public blacklist setAppDevice(IIZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "device"    # I
    .param p3, "shouldShowNotification"    # Z

    .line 9810
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9812
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/media/IAudioService;->setAppDevice(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9815
    goto :goto_0

    .line 9813
    :catch_0
    move-exception v1

    .line 9814
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in setAppDevice"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9816
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setAppMute(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "shouldMute"    # Z

    .line 9881
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9884
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setAppMute(IZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9887
    goto :goto_0

    .line 9885
    :catch_0
    move-exception v1

    .line 9886
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in setAppMute"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9888
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setAppVolume(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "ratio"    # I

    .line 9846
    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    if-ltz p2, :cond_0

    .line 9849
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9852
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setAppVolume(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9855
    goto :goto_0

    .line 9853
    :catch_0
    move-exception v1

    .line 9854
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in setAppVolume"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9856
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 9847
    .end local v0    # "service":Landroid/media/IAudioService;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ratio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioServerStateCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioServerStateCallback;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "stateCallback"    # Landroid/media/AudioManager$AudioServerStateCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7192
    if-eqz p2, :cond_2

    .line 7195
    if-eqz p1, :cond_1

    .line 7200
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioServerStateCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7201
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    if-nez v1, :cond_0

    .line 7205
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7207
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioManager;->mAudioServerStateDispatcher:Landroid/media/IAudioServerStateDispatcher;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7210
    nop

    .line 7211
    :try_start_2
    iput-object p1, p0, Landroid/media/AudioManager;->mAudioServerStateExec:Ljava/util/concurrent/Executor;

    .line 7212
    iput-object p2, p0, Landroid/media/AudioManager;->mAudioServerStateCb:Landroid/media/AudioManager$AudioServerStateCallback;

    .line 7213
    .end local v1    # "service":Landroid/media/IAudioService;
    monitor-exit v0

    .line 7214
    return-void

    .line 7208
    .restart local v1    # "service":Landroid/media/IAudioService;
    :catch_0
    move-exception v2

    .line 7209
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "stateCallback":Landroid/media/AudioManager$AudioServerStateCallback;
    throw v3

    .line 7202
    .end local v1    # "service":Landroid/media/IAudioService;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "stateCallback":Landroid/media/AudioManager$AudioServerStateCallback;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setAudioServerStateCallback called with already registered callabck"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "stateCallback":Landroid/media/AudioManager$AudioServerStateCallback;
    throw v1

    .line 7213
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "stateCallback":Landroid/media/AudioManager$AudioServerStateCallback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 7196
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null Executor for the AudioServerStateCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7193
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioServerStateCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBluetoothA2dpOn(Z)V
    .locals 0
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2823
    return-void
.end method

.method public blacklist setBluetoothHeadsetProperties(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hasNrecEnabled"    # Z
    .param p3, "hasWbsEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bt_headset_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";bt_headset_nrec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3407
    const-string v1, "on"

    const-string v2, "off"

    if-eqz p2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";bt_wbs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3408
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3406
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3409
    return-void
.end method

.method public whitelist setBluetoothScoOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 2794
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2796
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setBluetoothScoOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2799
    nop

    .line 2800
    return-void

    .line 2797
    :catch_0
    move-exception v1

    .line 2798
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;

    .line 7753
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7754
    if-eqz p1, :cond_0

    .line 7755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCommunicationDevice deviceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7758
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 7761
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/media/IAudioService;->setCommunicationDevice(Landroid/os/IBinder;I)Z

    move-result v0

    return v0

    .line 7759
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In valid device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "device":Landroid/media/AudioDeviceInfo;
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7762
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "device":Landroid/media/AudioDeviceInfo;
    :catch_0
    move-exception v0

    .line 7763
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setDeviceToForceByUser(ILjava/lang/String;Z)I
    .locals 5
    .param p1, "device"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "force"    # Z

    .line 9232
    sget-object v0, Landroid/media/AudioManager;->sSetDeviceForceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9233
    :try_start_0
    const-string v1, "AudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceToForceByUser Device 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9234
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9236
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Landroid/media/IAudioService;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 9237
    :catch_0
    move-exception v2

    .line 9238
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "AudioManager"

    const-string v4, "Dead object in setDeviceToForceByUser"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9240
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 9241
    .end local v1    # "service":Landroid/media/IAudioService;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V
    .locals 3
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "deviceVolumeBehavior"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5896
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5897
    invoke-static {p2}, Landroid/media/AudioManager;->enforceValidVolumeBehavior(I)V

    .line 5899
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5901
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    .line 5902
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5901
    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5905
    nop

    .line 5906
    return-void

    .line 5903
    :catch_0
    move-exception v1

    .line 5904
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setEncodedSurroundMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .line 7260
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setEncodedSurroundMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7261
    :catch_0
    move-exception v0

    .line 7262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setFineVolume(IIII)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I

    .line 9427
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 9430
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9432
    .local v0, "service":Landroid/media/IAudioService;
    const/high16 v1, 0x100000

    or-int v4, p3, v1

    .line 9433
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 9432
    move-object v1, v0

    move v2, p1

    move v3, p2

    move v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->setFineVolume(IIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9436
    goto :goto_0

    .line 9434
    :catch_0
    move-exception v1

    .line 9435
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in setFineVolume"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9437
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 9428
    .end local v0    # "service":Landroid/media/IAudioService;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFocusRequestResult(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/AudioPolicy;)V
    .locals 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I
    .param p3, "ap"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4569
    if-eqz p1, :cond_1

    .line 4572
    if-eqz p3, :cond_0

    .line 4575
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4577
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p3}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4580
    nop

    .line 4581
    return-void

    .line 4578
    :catch_0
    move-exception v1

    .line 4579
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 4573
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4570
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setForceSpeakerOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .line 9057
    const-string v0, "AudioManager"

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 9059
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setForceSpeakerOn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9060
    invoke-interface {v1, p1}, Landroid/media/IAudioService;->setForceSpeakerOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9063
    goto :goto_0

    .line 9061
    :catch_0
    move-exception v2

    .line 9062
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Dead object in setForceSpeakerOn"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9064
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public greylist-max-o setHdmiSystemAudioSupported(Z)I
    .locals 2
    .param p1, "on"    # Z

    .line 6316
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setHdmiSystemAudioSupported(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6317
    :catch_0
    move-exception v0

    .line 6318
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setHfpEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hfp_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3379
    return-void
.end method

.method public blacklist setHfpSamplingRate(I)V
    .locals 2
    .param p1, "rate"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hfp_set_sampling_rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3397
    return-void
.end method

.method public blacklist setHfpVolume(I)V
    .locals 2
    .param p1, "volume"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hfp_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3388
    return-void
.end method

.method public blacklist setHomeSoundEffectEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3628
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setHomeSoundEffectEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3631
    goto :goto_0

    .line 3629
    :catch_0
    move-exception v0

    .line 3632
    :goto_0
    return-void
.end method

.method public greylist setMasterMute(ZI)V
    .locals 7
    .param p1, "mute"    # Z
    .param p2, "flags"    # I

    .line 1039
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v6

    .line 1041
    .local v6, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1042
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1041
    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    nop

    .line 1046
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setMaxLimitedSpkVolume(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .line 9472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxLimitedSpkVolume, uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9473
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 9474
    const-string v1, "l_volume_prevent_overheat_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 9475
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 9476
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 9477
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    .line 9478
    .local v0, "parameters":Lcom/samsung/android/media/AudioParameter;
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 9479
    return-void
.end method

.method public whitelist setMicrophoneMute(Z)V
    .locals 4
    .param p1, "on"    # Z

    .line 2888
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2890
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2891
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2890
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2894
    nop

    .line 2895
    return-void

    .line 2892
    :catch_0
    move-exception v1

    .line 2893
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-r setMicrophoneMuteFromSwitch(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 2909
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2911
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMicrophoneMuteFromSwitch(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2914
    nop

    .line 2915
    return-void

    .line 2912
    :catch_0
    move-exception v1

    .line 2913
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 2976
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2978
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/media/IAudioService;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2981
    nop

    .line 2982
    return-void

    .line 2979
    :catch_0
    move-exception v1

    .line 2980
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setMultiAudioFocusEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 7677
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setMultiAudioFocusEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7680
    nop

    .line 7681
    return-void

    .line 7678
    :catch_0
    move-exception v0

    .line 7679
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setMultiSoundOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 9913
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->setMultiSoundOn(ZZ)V

    .line 9914
    return-void
.end method

.method public blacklist setMultiSoundOn(ZZ)V
    .locals 4
    .param p1, "on"    # Z
    .param p2, "shouldShowNotification"    # Z

    .line 9925
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9928
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setMultiSoundOn(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9931
    goto :goto_0

    .line 9929
    :catch_0
    move-exception v1

    .line 9930
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Dead object in setMultiSoundOn"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9932
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setMuteInterval(I)V
    .locals 4
    .param p1, "interval"    # I

    .line 10142
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10145
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->setMuteInterval(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10148
    goto :goto_0

    .line 10146
    :catch_0
    move-exception v1

    .line 10147
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string v3, "Error calling setMuteInterval"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10149
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setNavigationRepeatSoundEffectsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3604
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setNavigationRepeatSoundEffectsEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3607
    goto :goto_0

    .line 3605
    :catch_0
    move-exception v0

    .line 3608
    :goto_0
    return-void
.end method

.method public greylist-max-o setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3339
    return-void
.end method

.method public whitelist setParameters(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .line 3350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setParameters keyValuePairs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    const-string v0, "g_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3353
    invoke-static {p1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    goto :goto_0

    .line 3354
    :cond_0
    nop

    .line 3355
    const-string v1, "factory_test"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3356
    invoke-static {p1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    goto :goto_0

    .line 3357
    :cond_1
    nop

    .line 3358
    const-string v1, "ptt_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    goto :goto_0

    .line 3360
    :cond_2
    nop

    .line 3361
    const-string v0, "HACSetting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3362
    invoke-static {p1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    goto :goto_0

    .line 3363
    :cond_3
    nop

    .line 3364
    const-string v0, "g_sco_samplerate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3365
    invoke-static {p1}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    goto :goto_0

    .line 3368
    :cond_4
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3370
    :goto_0
    return-void
.end method

.method public whitelist setPreferredDeviceForCapturePreset(ILandroid/media/AudioDeviceAttributes;)Z
    .locals 2
    .param p1, "capturePreset"    # I
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2111
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/AudioDeviceAttributes;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/media/AudioManager;->setPreferredDevicesForCapturePreset(ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public whitelist setPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)Z
    .locals 2
    .param p1, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1745
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/AudioDeviceAttributes;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->setPreferredDevicesForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public whitelist setPreferredDevicesForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Ljava/util/List;)Z
    .locals 2
    .param p1, "strategy"    # Landroid/media/audiopolicy/AudioProductStrategy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)Z"
        }
    .end annotation

    .line 1806
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1812
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 1813
    .local v1, "device":Landroid/media/AudioDeviceAttributes;
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    .end local v1    # "device":Landroid/media/AudioDeviceAttributes;
    goto :goto_0

    .line 1817
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Landroid/media/IAudioService;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    .local v0, "status":I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1819
    .end local v0    # "status":I
    :catch_0
    move-exception v0

    .line 1820
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1809
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to set preferred devices for strategy with a empty list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRampingRingerEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1083
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1084
    nop

    .line 1083
    const-string v1, "apply_ramping_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1085
    return-void
.end method

.method public whitelist setRingerMode(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    .line 1288
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1289
    return-void

    .line 1291
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1293
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->setRingerModeExternal(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1296
    nop

    .line 1297
    return-void

    .line 1294
    :catch_0
    move-exception v1

    .line 1295
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist setRingerModeInternal(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .line 6276
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->setRingerModeInternal(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6279
    nop

    .line 6280
    return-void

    .line 6277
    :catch_0
    move-exception v0

    .line 6278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRouting(III)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "routes"    # I
    .param p3, "mask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3226
    return-void
.end method

.method public blacklist setSafeMediaVolume()V
    .locals 1

    .line 10437
    const-string v0, "l_set_safe_media_volume=true"

    invoke-static {v0}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 10438
    return-void
.end method

.method public whitelist setSpeakerphoneOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 1650
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1652
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/media/IAudioService;->setSpeakerphoneOn(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1655
    nop

    .line 1656
    return-void

    .line 1653
    :catch_0
    move-exception v1

    .line 1654
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setStreamMute(IZ)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1501
    const-string v0, "AudioManager"

    const-string/jumbo v1, "setStreamMute is deprecated. adjustStreamVolume should be used instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    if-eqz p2, :cond_0

    const/16 v0, -0x64

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    .line 1503
    .local v0, "direction":I
    :goto_0
    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 1504
    invoke-virtual {p0, v0, p1, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    goto :goto_1

    .line 1506
    :cond_1
    invoke-virtual {p0, p1, v0, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1508
    :goto_1
    return-void
.end method

.method public whitelist setStreamSolo(IZ)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1464
    const-string v0, "AudioManager"

    const-string/jumbo v1, "setStreamSolo has been deprecated. Do not use."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    return-void
.end method

.method public whitelist setStreamVolume(III)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .line 1317
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v6

    .line 1319
    .local v6, "service":Landroid/media/IAudioService;
    nop

    .line 1320
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1319
    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    nop

    .line 1324
    return-void

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setStreamVolume(IIII)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I

    .line 9963
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v7

    .line 9966
    .local v7, "service":Landroid/media/IAudioService;
    nop

    .line 9967
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 9966
    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/media/IAudioService;->setStreamVolumeForDeviceWithAttribution(IIILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9970
    nop

    .line 9971
    return-void

    .line 9968
    :catch_0
    move-exception v0

    .line 9969
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setStreamVolumeForUid(IIILjava/lang/String;III)V
    .locals 10
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "targetSdkVersion"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 7664
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 7665
    invoke-static {p5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 7664
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Landroid/media/IAudioService;->setStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7668
    nop

    .line 7669
    return-void

    .line 7666
    :catch_0
    move-exception v0

    .line 7667
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSupportedSystemUsages([I)V
    .locals 3
    .param p1, "systemUsages"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1424
    const-string/jumbo v0, "systemUsages must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1425
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1427
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setSupportedSystemUsages([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    nop

    .line 1431
    return-void

    .line 1428
    :catch_0
    move-exception v1

    .line 1429
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setSurroundFormatEnabled(IZ)Z
    .locals 2
    .param p1, "audioFormat"    # I
    .param p2, "enabled"    # Z

    .line 7313
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setSurroundFormatEnabled(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7314
    :catch_0
    move-exception v0

    .line 7315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;Z)V
    .locals 2
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "connected"    # Z

    .line 5997
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6000
    nop

    .line 6001
    return-void

    .line 5998
    :catch_0
    move-exception v0

    .line 5999
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setVibrateSetting(II)V
    .locals 3
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .line 1632
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1634
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setVibrateSetting(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1637
    nop

    .line 1638
    return-void

    .line 1635
    :catch_0
    move-exception v1

    .line 1636
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-o setVolumeController(Landroid/media/IVolumeController;)V
    .locals 2
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .line 6213
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6216
    nop

    .line 6217
    return-void

    .line 6214
    :catch_0
    move-exception v0

    .line 6215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setVolumeIndexForAttributes(Landroid/media/AudioAttributes;II)V
    .locals 7
    .param p1, "attr"    # Landroid/media/AudioAttributes;
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1341
    const-string v0, "attr must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1344
    .local v0, "service":Landroid/media/IAudioService;
    nop

    .line 1345
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    .line 1344
    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    nop

    .line 1349
    return-void

    .line 1346
    :catch_0
    move-exception v1

    .line 1347
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setVolumeLimiterValue(I)V
    .locals 4
    .param p1, "value"    # I

    .line 10307
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 10308
    .local v0, "caller":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v1}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 10310
    const-string v2, "l_volume_limit_key"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10311
    const-string v3, "level"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v1

    .line 10312
    const-string v2, "package"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v1

    .line 10313
    invoke-virtual {v1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v1

    .line 10314
    .local v1, "audioParameter":Lcom/samsung/android/media/AudioParameter;
    invoke-virtual {v1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioManager;->setAudioServiceConfig(Ljava/lang/String;)V

    .line 10315
    return-void
.end method

.method public greylist-max-o setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .line 6301
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6304
    nop

    .line 6305
    return-void

    .line 6302
    :catch_0
    move-exception v0

    .line 6303
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .line 5964
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v0, p1, p3, p4}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 5965
    .local v0, "attributes":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {p0, v0, p2}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V

    .line 5966
    return-void
.end method

.method public greylist setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V
    .locals 3
    .param p1, "attributes"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "state"    # I

    .line 5977
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5979
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mApplicationContext:Landroid/content/Context;

    .line 5980
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5979
    invoke-interface {v0, p1, p2, v1}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5983
    nop

    .line 5984
    return-void

    .line 5981
    :catch_0
    move-exception v1

    .line 5982
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setWiredHeadsetOn(Z)V
    .locals 0
    .param p1, "on"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2854
    return-void
.end method

.method public greylist shouldShowRingtoneVolume()Z
    .locals 4

    .line 10404
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 10407
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->shouldShowRingtoneVolume()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 10408
    :catch_0
    move-exception v1

    .line 10409
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioManager"

    const-string/jumbo v3, "shouldShowRingtoneVolume error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10411
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist shouldVibrate(I)Z
    .locals 3
    .param p1, "vibrateType"    # I

    .line 1579
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1581
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->shouldVibrate(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1582
    :catch_0
    move-exception v1

    .line 1583
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist startBluetoothSco()V
    .locals 3

    .line 2731
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2733
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    .line 2734
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2733
    invoke-interface {v0, v1, v2}, Landroid/media/IAudioService;->startBluetoothSco(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2737
    nop

    .line 2738
    return-void

    .line 2735
    :catch_0
    move-exception v1

    .line 2736
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist-max-r startBluetoothScoVirtualCall()V
    .locals 3

    .line 2757
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2759
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2762
    nop

    .line 2763
    return-void

    .line 2760
    :catch_0
    move-exception v1

    .line 2761
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist stopBluetoothSco()V
    .locals 3

    .line 2776
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 2778
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->stopBluetoothSco(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2781
    nop

    .line 2782
    return-void

    .line 2779
    :catch_0
    move-exception v1

    .line 2780
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist unloadSoundEffects()V
    .locals 3

    .line 3730
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 3732
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->unloadSoundEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3735
    nop

    .line 3736
    return-void

    .line 3733
    :catch_0
    move-exception v1

    .line 3734
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/AudioDeviceCallback;

    .line 6902
    iget-object v0, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 6903
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6904
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6905
    iget-object v1, p0, Landroid/media/AudioManager;->mDeviceCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 6906
    iget-object v1, p0, Landroid/media/AudioManager;->mPortListener:Landroid/media/AudioManager$OnAmPortUpdateListener;

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 6909
    :cond_0
    monitor-exit v0

    .line 6910
    return-void

    .line 6909
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o unregisterAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 2
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 4007
    iget-object v0, p0, Landroid/media/AudioManager;->mAudioFocusIdListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Landroid/media/AudioManager;->getIdForAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4008
    return-void
.end method

.method public whitelist unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 5046
    if-eqz p1, :cond_3

    .line 5049
    iget-object v0, p0, Landroid/media/AudioManager;->mPlaybackCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5050
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 5051
    const-string v1, "AudioManager"

    const-string v2, "attempt to call unregisterAudioPlaybackCallback() on a callback that was never registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    monitor-exit v0

    return-void

    .line 5055
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5056
    .local v1, "oldCbCount":I
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->removePlaybackCallback_sync(Landroid/media/AudioManager$AudioPlaybackCallback;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5057
    iget-object v2, p0, Landroid/media/AudioManager;->mPlaybackCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5058
    .local v2, "newCbCount":I
    if-lez v1, :cond_1

    if-nez v2, :cond_1

    .line 5061
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioManager;->mPlayCb:Landroid/media/IPlaybackConfigDispatcher;

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5064
    goto :goto_0

    .line 5062
    :catch_0
    move-exception v3

    .line 5063
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "cb":Landroid/media/AudioManager$AudioPlaybackCallback;
    throw v4

    .line 5066
    .end local v2    # "newCbCount":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "cb":Landroid/media/AudioManager$AudioPlaybackCallback;
    :cond_1
    :goto_0
    goto :goto_1

    .line 5067
    :cond_2
    const-string v2, "AudioManager"

    const-string v3, "attempt to call unregisterAudioPlaybackCallback() on a callback already unregistered or never registered"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5070
    .end local v1    # "oldCbCount":I
    :goto_1
    monitor-exit v0

    .line 5071
    return-void

    .line 5070
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5047
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPlaybackCallback argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 3
    .param p1, "policy"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4931
    const-string v0, "Illegal null AudioPolicy argument"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4932
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 4934
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->invalidateCaptorsAndInjectors()V

    .line 4935
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 4936
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicy;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4939
    nop

    .line 4940
    return-void

    .line 4937
    :catch_0
    move-exception v1

    .line 4938
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist unregisterAudioPolicyAsync(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 0
    .param p1, "policy"    # Landroid/media/audiopolicy/AudioPolicy;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4905
    invoke-static {p1}, Landroid/media/AudioManager;->unregisterAudioPolicyAsyncStatic(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 4906
    return-void
.end method

.method public greylist unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V
    .locals 1
    .param p1, "l"    # Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .line 6546
    sget-object v0, Landroid/media/AudioManager;->sAudioPortEventHandler:Landroid/media/AudioPortEventHandler;

    invoke-virtual {v0, p1}, Landroid/media/AudioPortEventHandler;->unregisterListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 6547
    return-void
.end method

.method public whitelist unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V
    .locals 6
    .param p1, "cb"    # Landroid/media/AudioManager$AudioRecordingCallback;

    .line 5237
    if-eqz p1, :cond_3

    .line 5240
    iget-object v0, p0, Landroid/media/AudioManager;->mRecordCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5241
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 5242
    monitor-exit v0

    return-void

    .line 5244
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5245
    .local v1, "oldCbCount":I
    invoke-direct {p0, p1}, Landroid/media/AudioManager;->removeRecordCallback_sync(Landroid/media/AudioManager$AudioRecordingCallback;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5246
    iget-object v2, p0, Landroid/media/AudioManager;->mRecordCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 5247
    .local v2, "newCbCount":I
    if-lez v1, :cond_1

    if-nez v2, :cond_1

    .line 5249
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5251
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioManager;->mRecCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5254
    goto :goto_0

    .line 5252
    :catch_0
    move-exception v4

    .line 5253
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local p0    # "this":Landroid/media/AudioManager;
    .end local p1    # "cb":Landroid/media/AudioManager$AudioRecordingCallback;
    throw v5

    .line 5256
    .end local v2    # "newCbCount":I
    .end local v3    # "service":Landroid/media/IAudioService;
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/media/AudioManager;
    .restart local p1    # "cb":Landroid/media/AudioManager$AudioRecordingCallback;
    :cond_1
    :goto_0
    goto :goto_1

    .line 5257
    :cond_2
    const-string v2, "AudioManager"

    const-string v3, "attempt to call unregisterAudioRecordingCallback() on a callback already unregistered or never registered"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5260
    .end local v1    # "oldCbCount":I
    :goto_1
    monitor-exit v0

    .line 5261
    return-void

    .line 5260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5238
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioRecordingCallback argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "eventReceiver"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4765
    if-nez p1, :cond_0

    .line 4766
    return-void

    .line 4768
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    .line 4769
    return-void
.end method

.method public whitelist unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "eventReceiver"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4744
    if-nez p1, :cond_0

    .line 4745
    return-void

    .line 4748
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4750
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4751
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4754
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    .line 4755
    return-void
.end method

.method public greylist-max-o unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 4775
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 4776
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionLegacyHelper;->removeMediaButtonListener(Landroid/app/PendingIntent;)V

    .line 4777
    return-void
.end method

.method public whitelist unregisterMuteAwaitConnectionCallback(Landroid/media/AudioManager$MuteAwaitConnectionCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/media/AudioManager$MuteAwaitConnectionCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8427
    iget-object v0, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8429
    :try_start_0
    const-string/jumbo v1, "unregisterMuteAwaitConnectionCallback"

    iget-object v2, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListeners:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/media/AudioManager;->mMuteAwaitConnDispatcherStub:Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    new-instance v4, Landroid/media/AudioManager$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Landroid/media/AudioManager$$ExternalSyntheticLambda4;-><init>()V

    .line 8430
    invoke-static {v1, p1, v2, v3, v4}, Landroid/media/CallbackUtil;->removeListener(Ljava/lang/String;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/function/Consumer;)Landroid/util/Pair;

    move-result-object v1

    .line 8433
    .local v1, "res":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<Landroid/media/AudioManager$MuteAwaitConnectionCallback;>;>;Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/media/AudioManager;->mMuteAwaitConnectionListeners:Ljava/util/ArrayList;

    .line 8434
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    iput-object v2, p0, Landroid/media/AudioManager;->mMuteAwaitConnDispatcherStub:Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;

    .line 8435
    .end local v1    # "res":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<Landroid/media/AudioManager$MuteAwaitConnectionCallback;>;>;Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;>;"
    monitor-exit v0

    .line 8436
    return-void

    .line 8435
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 1
    .param p1, "rcClient"    # Landroid/media/RemoteControlClient;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4804
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/RemoteControlClient;->getRcMediaIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4807
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/RemoteControlClient;->unregisterWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V

    .line 4808
    return-void

    .line 4805
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist unregisterRemoteController(Landroid/media/RemoteController;)V
    .locals 0
    .param p1, "rctlr"    # Landroid/media/RemoteController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4848
    if-nez p1, :cond_0

    .line 4849
    return-void

    .line 4851
    :cond_0
    invoke-virtual {p1}, Landroid/media/RemoteController;->stopListeningToSessions()V

    .line 4852
    return-void
.end method

.method public whitelist unregisterVolumeGroupCallback(Landroid/media/AudioManager$VolumeGroupCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/media/AudioManager$VolumeGroupCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7464
    const-string/jumbo v0, "volume group change cb must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7465
    sget-object v0, Landroid/media/AudioManager;->sAudioAudioVolumeGroupChangedHandler:Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;

    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioVolumeGroupChangeHandler;->unregisterListener(Landroid/media/AudioManager$VolumeGroupCallback;)V

    .line 7466
    return-void
.end method

.method public blacklist updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sampleRate"    # I
    .param p3, "btOffload"    # I

    .line 9451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBluetoothDevice btOffload = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9452
    if-ltz p3, :cond_0

    .line 9453
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 9455
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0, p3}, Landroid/media/IAudioService;->setBtOffloadEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9458
    goto :goto_0

    .line 9456
    :catch_0
    move-exception v2

    .line 9457
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Dead object in setBtOffloadEnable"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9460
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

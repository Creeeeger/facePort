.class public Landroid/media/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioSystem$AudioSystemError;,
        Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;,
        Landroid/media/AudioSystem$RoutingUpdateCallback;,
        Landroid/media/AudioSystem$AudioRecordingCallback;,
        Landroid/media/AudioSystem$DynamicPolicyCallback;,
        Landroid/media/AudioSystem$ErrorCallback;,
        Landroid/media/AudioSystem$DeviceType;,
        Landroid/media/AudioSystem$AudioFormatNativeEnumForBtLeAudioCodec;,
        Landroid/media/AudioSystem$AudioFormatNativeEnumForBtCodec;
    }
.end annotation


# static fields
.field public static final blacklist AUDIO_FORMAT_AAC:I = 0x4000000

.field public static final blacklist AUDIO_FORMAT_APTX:I = 0x20000000

.field public static final blacklist AUDIO_FORMAT_APTX_HD:I = 0x21000000

.field public static final blacklist AUDIO_FORMAT_DEFAULT:I = 0x0

.field public static final blacklist AUDIO_FORMAT_INVALID:I = -0x1

.field public static final blacklist AUDIO_FORMAT_LC3:I = 0x2b000000

.field public static final blacklist AUDIO_FORMAT_LDAC:I = 0x23000000

.field public static final blacklist AUDIO_FORMAT_SBC:I = 0x1f000000

.field public static final blacklist AUDIO_FORMAT_SEC_BLE_DUAL_MODE:I = 0x400000

.field public static final blacklist AUDIO_FORMAT_SEC_BLE_IMPLICIT:I = 0x800000

.field public static final blacklist AUDIO_FORMAT_SEC_BT_A2DP_OFFLOAD:I = 0x200000

.field public static final greylist-max-o AUDIO_HW_SYNC_INVALID:I = 0x0

.field public static final greylist-max-o AUDIO_SESSION_ALLOCATE:I = 0x0

.field public static final greylist-max-o AUDIO_STATUS_ERROR:I = 0x1

.field public static final greylist-max-o AUDIO_STATUS_OK:I = 0x0

.field public static final greylist-max-o AUDIO_STATUS_SERVER_DIED:I = 0x64

.field public static final greylist-max-o BAD_VALUE:I = -0x2

.field public static final greylist-max-o DEAD_OBJECT:I = -0x6

.field private static final blacklist DEBUG_VOLUME:Z = false

.field public static final greylist-max-o DEFAULT_MUTE_STREAMS_AFFECTED:I = 0x6f

.field public static greylist-max-o DEFAULT_STREAM_VOLUME:[I = null

.field public static final blacklist DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DEVICE_BIT_DEFAULT:I = 0x40000000

.field public static final greylist-max-o DEVICE_BIT_IN:I = -0x80000000

.field public static final blacklist DEVICE_BIT_IN_SEC:I = -0x50000000

.field public static final blacklist DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_IN_ALL_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_IN_ALL_USB_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist DEVICE_IN_AMBIENT:I = -0x7ffffffe

.field public static final greylist-max-o DEVICE_IN_AMBIENT_NAME:Ljava/lang/String; = "ambient"

.field public static final greylist DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final greylist-max-o DEVICE_IN_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final greylist DEVICE_IN_AUX_DIGITAL:I = -0x7fffffe0

.field public static final greylist-max-o DEVICE_IN_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final greylist DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final greylist-max-o DEVICE_IN_BACK_MIC_NAME:Ljava/lang/String; = "back_mic"

.field public static final blacklist DEVICE_IN_BLE_HEADSET:I = -0x60000000

.field public static final blacklist DEVICE_IN_BLE_HEADSET_NAME:Ljava/lang/String; = "ble_headset"

.field public static final greylist DEVICE_IN_BLUETOOTH_A2DP:I = -0x7ffe0000

.field public static final greylist-max-o DEVICE_IN_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final blacklist DEVICE_IN_BLUETOOTH_BLE:I = -0x7c000000

.field public static final blacklist DEVICE_IN_BLUETOOTH_BLE_NAME:Ljava/lang/String; = "bt_ble"

.field public static final greylist DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final greylist-max-o DEVICE_IN_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final greylist DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final greylist-max-o DEVICE_IN_BUILTIN_MIC_NAME:Ljava/lang/String; = "mic"

.field public static final greylist-max-o DEVICE_IN_BUS:I = -0x7ff00000

.field public static final greylist-max-o DEVICE_IN_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final greylist DEVICE_IN_COMMUNICATION:I = -0x7fffffff

.field public static final greylist-max-o DEVICE_IN_COMMUNICATION_NAME:Ljava/lang/String; = "communication"

.field public static final greylist DEVICE_IN_DEFAULT:I = -0x40000000

.field public static final greylist DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final greylist-max-o DEVICE_IN_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final blacklist DEVICE_IN_ECHO_REFERENCE:I = -0x70000000

.field public static final blacklist DEVICE_IN_ECHO_REFERENCE_NAME:Ljava/lang/String; = "echo_reference"

.field public static final blacklist DEVICE_IN_EXTERNAL_TMS:I = -0x4fffffff

.field public static final greylist-max-o DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final greylist-max-o DEVICE_IN_FM_TUNER_NAME:Ljava/lang/String; = "fm_tuner"

.field public static final greylist-max-o DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final blacklist DEVICE_IN_HDMI_ARC:I = -0x78000000

.field public static final blacklist DEVICE_IN_HDMI_ARC_NAME:Ljava/lang/String; = "hdmi_arc"

.field public static final blacklist DEVICE_IN_HDMI_EARC:I = -0x77ffffff

.field public static final blacklist DEVICE_IN_HDMI_EARC_NAME:Ljava/lang/String; = "hdmi_earc"

.field public static final greylist-max-o DEVICE_IN_IP:I = -0x7ff80000

.field public static final greylist-max-o DEVICE_IN_IP_NAME:Ljava/lang/String; = "ip"

.field public static final greylist-max-o DEVICE_IN_LINE:I = -0x7fff8000

.field public static final greylist-max-o DEVICE_IN_LINE_NAME:Ljava/lang/String; = "line"

.field public static final greylist-max-o DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final greylist-max-o DEVICE_IN_LOOPBACK_NAME:Ljava/lang/String; = "loopback"

.field public static final greylist-max-o DEVICE_IN_PROXY:I = -0x7f000000

.field public static final greylist-max-o DEVICE_IN_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final greylist DEVICE_IN_REMOTE_SUBMIX:I = -0x7fffff00

.field public static final greylist-max-o DEVICE_IN_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final greylist-max-o DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final greylist-max-o DEVICE_IN_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final greylist-max-o DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final greylist-max-o DEVICE_IN_TELEPHONY_RX_NAME:Ljava/lang/String; = "telephony_rx"

.field public static final greylist-max-o DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final greylist-max-o DEVICE_IN_TV_TUNER_NAME:Ljava/lang/String; = "tv_tuner"

.field public static final greylist DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final greylist-max-o DEVICE_IN_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final greylist DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final greylist-max-o DEVICE_IN_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final greylist-max-o DEVICE_IN_USB_HEADSET:I = -0x7e000000

.field public static final greylist-max-o DEVICE_IN_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final greylist DEVICE_IN_VOICE_CALL:I = -0x7fffffc0

.field public static final greylist DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final greylist-max-o DEVICE_IN_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final greylist-max-o DEVICE_NONE:I = 0x0

.field public static final blacklist DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_OUT_ALL_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist DEVICE_OUT_ALL_USB:I = 0x4006000

.field public static final blacklist DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final greylist-max-o DEVICE_OUT_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final greylist DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final greylist-max-o DEVICE_OUT_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final greylist-max-o DEVICE_OUT_AUX_LINE:I = 0x200000

.field public static final greylist-max-o DEVICE_OUT_AUX_LINE_NAME:Ljava/lang/String; = "aux_line"

.field public static final blacklist DEVICE_OUT_BLE_BROADCAST:I = 0x20000002

.field public static final blacklist DEVICE_OUT_BLE_BROADCAST_NAME:Ljava/lang/String; = "ble_broadcast"

.field public static final blacklist DEVICE_OUT_BLE_HEADSET:I = 0x20000000

.field public static final blacklist DEVICE_OUT_BLE_HEADSET_NAME:Ljava/lang/String; = "ble_headset"

.field public static final blacklist DEVICE_OUT_BLE_SPEAKER:I = 0x20000001

.field public static final blacklist DEVICE_OUT_BLE_SPEAKER_NAME:Ljava/lang/String; = "ble_speaker"

.field public static final greylist DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final greylist DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES_NAME:Ljava/lang/String; = "bt_a2dp_hp"

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final greylist DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER_NAME:Ljava/lang/String; = "bt_a2dp_spk"

.field public static final greylist DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final greylist DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_SCO_CARKIT_NAME:Ljava/lang/String; = "bt_sco_carkit"

.field public static final greylist DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final greylist-max-o DEVICE_OUT_BLUETOOTH_SCO_NAME:Ljava/lang/String; = "bt_sco"

.field public static final greylist-max-o DEVICE_OUT_BUS:I = 0x1000000

.field public static final greylist-max-o DEVICE_OUT_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final greylist-max-o DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final greylist DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final greylist-max-o DEVICE_OUT_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final greylist DEVICE_OUT_EARPIECE:I = 0x1

.field public static final greylist-max-o DEVICE_OUT_EARPIECE_NAME:Ljava/lang/String; = "earpiece"

.field public static final blacklist DEVICE_OUT_ECHO_CANCELLER:I = 0x10000000

.field public static final blacklist DEVICE_OUT_ECHO_CANCELLER_NAME:Ljava/lang/String; = "echo_canceller"

.field public static final blacklist DEVICE_OUT_EXTERNAL_TMS:I = 0x200000

.field public static final blacklist DEVICE_OUT_EXTERNAL_TMS_NAME:Ljava/lang/String; = "external_tms"

.field public static final greylist DEVICE_OUT_FM:I = 0x100000

.field public static final greylist-max-o DEVICE_OUT_FM_NAME:Ljava/lang/String; = "fm_transmitter"

.field public static final greylist-max-o DEVICE_OUT_HDMI:I = 0x400

.field public static final greylist-max-o DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final greylist-max-o DEVICE_OUT_HDMI_ARC_NAME:Ljava/lang/String; = "hdmi_arc"

.field public static final blacklist DEVICE_OUT_HDMI_EARC:I = 0x40001

.field public static final blacklist DEVICE_OUT_HDMI_EARC_NAME:Ljava/lang/String; = "hdmi_earc"

.field public static final greylist-max-o DEVICE_OUT_HDMI_NAME:Ljava/lang/String; = "hdmi"

.field public static final greylist-max-o DEVICE_OUT_HEARING_AID:I = 0x8000000

.field public static final greylist-max-o DEVICE_OUT_HEARING_AID_NAME:Ljava/lang/String; = "hearing_aid_out"

.field public static final greylist-max-o DEVICE_OUT_IP:I = 0x800000

.field public static final greylist-max-o DEVICE_OUT_IP_NAME:Ljava/lang/String; = "ip"

.field public static final greylist-max-o DEVICE_OUT_LINE:I = 0x20000

.field public static final greylist-max-o DEVICE_OUT_LINE_NAME:Ljava/lang/String; = "line"

.field public static final greylist-max-o DEVICE_OUT_PROXY:I = 0x2000000

.field public static final greylist-max-o DEVICE_OUT_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final greylist DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final greylist-max-o DEVICE_OUT_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final greylist-max-o DEVICE_OUT_SPDIF:I = 0x80000

.field public static final greylist-max-o DEVICE_OUT_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final greylist DEVICE_OUT_SPEAKER:I = 0x2

.field public static final greylist-max-o DEVICE_OUT_SPEAKER_NAME:Ljava/lang/String; = "speaker"

.field public static final greylist-max-o DEVICE_OUT_SPEAKER_SAFE:I = 0x400000

.field public static final greylist-max-o DEVICE_OUT_SPEAKER_SAFE_NAME:Ljava/lang/String; = "speaker_safe"

.field public static final greylist DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final greylist-max-o DEVICE_OUT_TELEPHONY_TX_NAME:Ljava/lang/String; = "telephony_tx"

.field public static final greylist DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final greylist-max-o DEVICE_OUT_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final greylist DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final greylist-max-o DEVICE_OUT_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final greylist-max-o DEVICE_OUT_USB_HEADSET:I = 0x4000000

.field public static final greylist-max-o DEVICE_OUT_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final greylist DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final greylist-max-o DEVICE_OUT_WIRED_HEADPHONE_NAME:Ljava/lang/String; = "headphone"

.field public static final greylist DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final greylist-max-o DEVICE_OUT_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final blacklist DEVICE_ROLE_DISABLED:I = 0x2

.field public static final blacklist DEVICE_ROLE_NONE:I = 0x0

.field public static final blacklist DEVICE_ROLE_PREFERRED:I = 0x1

.field public static final greylist DEVICE_STATE_AVAILABLE:I = 0x1

.field public static final blacklist DEVICE_STATE_AVAILABLE_BY_FORCE:I = 0x2

.field public static final greylist DEVICE_STATE_UNAVAILABLE:I = 0x0

.field public static final blacklist DIRECT_BITSTREAM_SUPPORTED:I = 0x4

.field public static final blacklist DIRECT_NOT_SUPPORTED:I = 0x0

.field public static final blacklist DIRECT_OFFLOAD_GAPLESS_SUPPORTED:I = 0x3

.field public static final blacklist DIRECT_OFFLOAD_SUPPORTED:I = 0x1

.field private static final greylist-max-o DYNAMIC_POLICY_EVENT_MIX_STATE_UPDATE:I = 0x0

.field public static final greylist-max-o ERROR:I = -0x1

.field public static final blacklist FCC_24:I = 0x18

.field public static final greylist FORCE_ANALOG_DOCK:I = 0x8

.field public static final greylist-max-o FORCE_BT_A2DP:I = 0x4

.field public static final greylist FORCE_BT_CAR_DOCK:I = 0x6

.field public static final greylist FORCE_BT_DESK_DOCK:I = 0x7

.field public static final greylist-max-o FORCE_BT_SCO:I = 0x3

.field public static final greylist-max-o FORCE_DEFAULT:I = 0x0

.field public static final greylist FORCE_DIGITAL_DOCK:I = 0x9

.field public static final greylist-max-o FORCE_ENCODED_SURROUND_ALWAYS:I = 0xe

.field public static final greylist-max-o FORCE_ENCODED_SURROUND_MANUAL:I = 0xf

.field public static final greylist-max-o FORCE_ENCODED_SURROUND_NEVER:I = 0xd

.field public static final greylist-max-o FORCE_HDMI_SYSTEM_AUDIO_ENFORCED:I = 0xc

.field public static final greylist-max-o FORCE_HEADPHONES:I = 0x2

.field public static final greylist FORCE_NONE:I = 0x0

.field public static final greylist-max-o FORCE_NO_BT_A2DP:I = 0xa

.field public static final greylist-max-o FORCE_SPEAKER:I = 0x1

.field public static final greylist-max-o FORCE_SYSTEM_ENFORCED:I = 0xb

.field public static final greylist-max-o FORCE_WIRED_ACCESSORY:I = 0x5

.field public static final greylist-max-o FOR_COMMUNICATION:I = 0x0

.field public static final greylist-max-o FOR_DOCK:I = 0x3

.field public static final greylist-max-o FOR_ENCODED_SURROUND:I = 0x6

.field public static final blacklist FOR_FMRADIO:I = 0x8

.field public static final greylist-max-o FOR_HDMI_SYSTEM_AUDIO:I = 0x5

.field public static final greylist-max-o FOR_MEDIA:I = 0x1

.field public static final greylist-max-o FOR_RECORD:I = 0x2

.field public static final greylist-max-o FOR_SYSTEM:I = 0x4

.field public static final greylist-max-o FOR_VIBRATE_RINGING:I = 0x7

.field public static final greylist-max-o INVALID_OPERATION:I = -0x3

.field public static final greylist-max-o IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field public static final blacklist LEGACY_REMOTE_SUBMIX_ADDRESS:Ljava/lang/String; = "0"

.field private static final blacklist MAX_DEVICE_ROUTING:I = 0x4

.field public static final blacklist MODE_CALL_REDIRECT:I = 0x5

.field public static final blacklist MODE_CALL_SCREENING:I = 0x4

.field public static final blacklist MODE_COMMUNICATION_REDIRECT:I = 0x6

.field public static final greylist-max-o MODE_CURRENT:I = -0x1

.field public static final greylist-max-o MODE_INVALID:I = -0x2

.field public static final greylist-max-o MODE_IN_CALL:I = 0x2

.field public static final greylist-max-o MODE_IN_COMMUNICATION:I = 0x3

.field public static final greylist-max-o MODE_NORMAL:I = 0x0

.field public static final greylist-max-o MODE_RINGTONE:I = 0x1

.field static final greylist-max-o NATIVE_EVENT_ROUTING_CHANGE:I = 0x3e8

.field public static final greylist-max-o NO_INIT:I = -0x5

.field private static final greylist-max-o NUM_DEVICE_STATES:I = 0x1

.field public static final greylist-max-o NUM_FORCE_CONFIG:I = 0x10

.field private static final greylist-max-o NUM_FORCE_USE:I = 0x9

.field public static final greylist-max-o NUM_MODES:I = 0x7

.field public static final greylist-max-o NUM_STREAMS:I = 0x5

.field private static final greylist-max-o NUM_STREAM_TYPES:I = 0xc

.field public static final blacklist OFFLOAD_GAPLESS_SUPPORTED:I = 0x2

.field public static final blacklist OFFLOAD_NOT_SUPPORTED:I = 0x0

.field public static final blacklist OFFLOAD_SUPPORTED:I = 0x1

.field public static final blacklist OUT_CHANNEL_COUNT_MAX:I

.field public static final greylist-max-o PERMISSION_DENIED:I = -0x4

.field public static final greylist-max-o PHONE_STATE_INCALL:I = 0x2

.field public static final greylist-max-o PHONE_STATE_OFFCALL:I = 0x0

.field public static final greylist-max-o PHONE_STATE_RINGING:I = 0x1

.field public static final greylist-max-o PLATFORM_DEFAULT:I = 0x0

.field public static final greylist-max-o PLATFORM_TELEVISION:I = 0x2

.field public static final greylist-max-o PLATFORM_VOICE:I = 0x1

.field public static final greylist-max-o PLAY_SOUND_DELAY:I = 0x12c

.field public static final greylist-max-o ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SAMPLE_RATE_HZ_MAX:I

.field public static final blacklist SAMPLE_RATE_HZ_MIN:I

.field public static final greylist-max-o STREAM_ACCESSIBILITY:I = 0xa

.field public static final greylist-max-o STREAM_ALARM:I = 0x4

.field public static final blacklist STREAM_ASSISTANT:I = 0xb

.field public static final greylist-max-o STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final greylist-max-o STREAM_DEFAULT:I = -0x1

.field public static final greylist-max-o STREAM_DTMF:I = 0x8

.field public static final greylist-max-o STREAM_MUSIC:I = 0x3

.field public static final greylist-max-o STREAM_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o STREAM_NOTIFICATION:I = 0x5

.field public static final greylist-max-o STREAM_RING:I = 0x2

.field public static final greylist-max-o STREAM_SYSTEM:I = 0x1

.field public static final greylist-max-r STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final greylist-max-o STREAM_TTS:I = 0x9

.field public static final greylist-max-o STREAM_VOICE_CALL:I = 0x0

.field public static final greylist-max-o SUCCESS:I = 0x0

.field public static final greylist-max-o SYNC_EVENT_NONE:I = 0x0

.field public static final greylist-max-o SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1

.field public static final blacklist SYNC_EVENT_SHARE_AUDIO_HISTORY:I = 0x64

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioSystem"

.field public static final greylist-max-o WOULD_BLOCK:I = -0x7

.field private static greylist-max-o sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private static blacklist sErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private static greylist-max-o sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

.field private static blacklist sRoutingUpdateCallback:Landroid/media/AudioSystem$RoutingUpdateCallback;

.field private static blacklist sVolRangeInitReqCallback:Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 19

    .line 128
    invoke-static {}, Landroid/media/AudioSystem;->native_getMaxChannelCount()I

    move-result v0

    sput v0, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I

    .line 134
    invoke-static {}, Landroid/media/AudioSystem;->native_getMaxSampleRate()I

    move-result v0

    sput v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MAX:I

    .line 140
    invoke-static {}, Landroid/media/AudioSystem;->native_getMinSampleRate()I

    move-result v0

    sput v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MIN:I

    .line 158
    const-string v1, "STREAM_VOICE_CALL"

    const-string v2, "STREAM_SYSTEM"

    const-string v3, "STREAM_RING"

    const-string v4, "STREAM_MUSIC"

    const-string v5, "STREAM_ALARM"

    const-string v6, "STREAM_NOTIFICATION"

    const-string v7, "STREAM_BLUETOOTH_SCO"

    const-string v8, "STREAM_SYSTEM_ENFORCED"

    const-string v9, "STREAM_DTMF"

    const-string v10, "STREAM_TTS"

    const-string v11, "STREAM_ACCESSIBILITY"

    const-string v12, "STREAM_ASSISTANT"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    .line 1073
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    .line 1074
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1075
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1076
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1077
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1078
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1079
    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1080
    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1081
    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1082
    const/16 v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1083
    const/16 v7, 0x200

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1084
    const/16 v8, 0x400

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1085
    const/16 v8, 0x800

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1086
    const/16 v8, 0x1000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1087
    const/16 v8, 0x2000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1088
    const/16 v9, 0x4000

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1089
    const v10, 0x8000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1090
    const/high16 v10, 0x10000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1091
    const/high16 v10, 0x20000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1092
    const/high16 v10, 0x40000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1093
    const v11, 0x40001

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1094
    const/high16 v12, 0x80000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1095
    const/high16 v13, 0x100000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1096
    const/high16 v13, 0x200000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1097
    const/high16 v14, 0x400000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1098
    const/high16 v14, 0x800000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1099
    const/high16 v14, 0x1000000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1100
    const/high16 v14, 0x2000000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1101
    const/high16 v14, 0x4000000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1102
    const/high16 v15, 0x8000000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1103
    const/high16 v15, 0x10000000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1104
    const/high16 v15, 0x20000000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1105
    const v16, 0x20000001

    move-object/from16 v17, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1106
    const v15, 0x20000002

    move-object/from16 v18, v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1107
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    .line 1110
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1111
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1112
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    .line 1115
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1116
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1117
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    .line 1120
    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1121
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1122
    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO_SET:Ljava/util/Set;

    .line 1125
    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1126
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1127
    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1128
    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1130
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/media/AudioSystem;->DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER_SET:Ljava/util/Set;

    .line 1131
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1132
    move-object/from16 v0, v18

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    .line 1135
    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1136
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1137
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    .line 1229
    const v1, -0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1230
    const v1, -0x7ffffffe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1231
    const v1, -0x7ffffffc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1232
    const v1, -0x7ffffff8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1233
    const v2, -0x7ffffff0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1234
    const v2, -0x7fffffe0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1235
    const v2, -0x7fffffc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1236
    const v2, -0x7fffff80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1237
    const v2, -0x7fffff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1238
    const v2, -0x7ffffe00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1239
    const v2, -0x7ffffc00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1240
    const v2, -0x7ffff800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1241
    const v3, -0x7ffff000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1242
    const v4, -0x7fffe000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1243
    const v4, -0x7fffc000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1244
    const v4, -0x7fff8000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1245
    const/high16 v4, -0x7fff0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1246
    const/high16 v4, -0x7ffe0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1247
    const/high16 v4, -0x7ffc0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1248
    const/high16 v4, -0x7ff80000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1249
    const/high16 v4, -0x7ff00000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1250
    const/high16 v4, -0x7f000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1251
    const/high16 v4, -0x7e000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1252
    const/high16 v5, -0x7c000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1253
    const/high16 v5, -0x78000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1254
    const v5, -0x77ffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1255
    const/high16 v5, -0x70000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1256
    const/high16 v5, -0x60000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1257
    const v5, -0x4fffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1258
    const/high16 v5, -0x40000000    # -2.0f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1260
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;

    .line 1261
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1263
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_USB_SET:Ljava/util/Set;

    .line 1264
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1265
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1266
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2311
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x6
        0xb
        0x7
        0xb
        0xb
        0x7
        0xe
        0xb
        0xb
        0xb
        0x7
    .end array-data
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Trying to instantiate AudioSystem"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist addDevicesRoleForCapturePreset(IILjava/util/List;)I
    .locals 3
    .param p0, "capturePreset"    # I
    .param p1, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 2141
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2142
    const/4 v0, -0x2

    return v0

    .line 2144
    :cond_0
    invoke-static {p2}, Landroid/media/AudioSystem;->populateInputDevicesTypeAndAddress(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 2145
    .local v0, "typeAddresses":Landroid/util/Pair;, "Landroid/util/Pair<[I[Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v2}, Landroid/media/AudioSystem;->addDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static native blacklist addDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I
.end method

.method public static blacklist audioFormatToBluetoothLeAudioSourceCodec(I)I
    .locals 2
    .param p0, "audioFormat"    # I

    .line 313
    packed-switch p0, :pswitch_data_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown audio format 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for conversion to BT LE audio codec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSystem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const v0, 0xf4240

    return v0

    .line 314
    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2b000000
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist audioFormatToBluetoothSourceCodec(I)I
    .locals 2
    .param p0, "audioFormat"    # I

    .line 293
    sparse-switch p0, :sswitch_data_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown audio format 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for conversion to BT codec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSystem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const v0, 0xf4240

    return v0

    .line 299
    :sswitch_0
    const/4 v0, 0x5

    return v0

    .line 298
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 297
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 296
    :sswitch_3
    const/4 v0, 0x2

    return v0

    .line 295
    :sswitch_4
    const/4 v0, 0x0

    return v0

    .line 294
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4000000 -> :sswitch_5
        0x1f000000 -> :sswitch_4
        0x20000000 -> :sswitch_3
        0x21000000 -> :sswitch_2
        0x23000000 -> :sswitch_1
        0x2b000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist audioFormatToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "audioFormat"    # I

    .line 355
    sparse-switch p0, :sswitch_data_0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AUDIO_FORMAT_("

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

    .line 519
    :sswitch_0
    const-string v0, "AUDIO_FORMAT_DRA"

    return-object v0

    .line 517
    :sswitch_1
    const-string v0, "AUDIO_FORMAT_DTS_UHD"

    return-object v0

    .line 443
    :sswitch_2
    const-string v0, "AUDIO_FORMAT_LC3"

    return-object v0

    .line 441
    :sswitch_3
    const-string v0, "AUDIO_FORMAT_APTX_TWSP"

    return-object v0

    .line 439
    :sswitch_4
    const-string v0, "AUDIO_FORMAT_LHDC_LL"

    return-object v0

    .line 437
    :sswitch_5
    const-string v0, "AUDIO_FORMAT_LHDC"

    return-object v0

    .line 435
    :sswitch_6
    const-string v0, "AUDIO_FORMAT_APTX_ADAPTIVE"

    return-object v0

    .line 433
    :sswitch_7
    const-string v0, "AUDIO_FORMAT_CELT"

    return-object v0

    .line 507
    :sswitch_8
    const-string v0, "AUDIO_FORMAT_AAC_LATM_HE_V2"

    return-object v0

    .line 505
    :sswitch_9
    const-string v0, "AUDIO_FORMAT_AAC_LATM_HE_V1"

    return-object v0

    .line 503
    :sswitch_a
    const-string v0, "AUDIO_FORMAT_AAC_LATM_LC"

    return-object v0

    .line 431
    :sswitch_b
    const-string v0, "AUDIO_FORMAT_AAC_LATM"

    return-object v0

    .line 515
    :sswitch_c
    const-string v0, "AUDIO_FORMAT_MAT_2_1"

    return-object v0

    .line 513
    :sswitch_d
    const-string v0, "AUDIO_FORMAT_MAT_2_0"

    return-object v0

    .line 511
    :sswitch_e
    const-string v0, "AUDIO_FORMAT_MAT_1_0"

    return-object v0

    .line 429
    :sswitch_f
    const-string v0, "AUDIO_FORMAT_MAT"

    return-object v0

    .line 427
    :sswitch_10
    const-string v0, "AUDIO_FORMAT_LDAC"

    return-object v0

    .line 425
    :sswitch_11
    const-string v0, "AUDIO_FORMAT_AC4"

    return-object v0

    .line 423
    :sswitch_12
    const-string v0, "AUDIO_FORMAT_APTX_HD"

    return-object v0

    .line 421
    :sswitch_13
    const-string v0, "AUDIO_FORMAT_APTX"

    return-object v0

    .line 419
    :sswitch_14
    const-string v0, "AUDIO_FORMAT_SBC"

    return-object v0

    .line 501
    :sswitch_15
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_XHE"

    return-object v0

    .line 499
    :sswitch_16
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_ELD"

    return-object v0

    .line 497
    :sswitch_17
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_HE_V2"

    return-object v0

    .line 495
    :sswitch_18
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_LD"

    return-object v0

    .line 493
    :sswitch_19
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_ERLC"

    return-object v0

    .line 491
    :sswitch_1a
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_SCALABLE"

    return-object v0

    .line 489
    :sswitch_1b
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_HE_V1"

    return-object v0

    .line 487
    :sswitch_1c
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_LTP"

    return-object v0

    .line 485
    :sswitch_1d
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_SSR"

    return-object v0

    .line 483
    :sswitch_1e
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_LC"

    return-object v0

    .line 481
    :sswitch_1f
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_MAIN"

    return-object v0

    .line 417
    :sswitch_20
    const-string v0, "AUDIO_FORMAT_AAC_ADTS"

    return-object v0

    .line 415
    :sswitch_21
    const-string v0, "AUDIO_FORMAT_APE"

    return-object v0

    .line 413
    :sswitch_22
    const-string v0, "AUDIO_FORMAT_ALAC"

    return-object v0

    .line 411
    :sswitch_23
    const-string v0, "AUDIO_FORMAT_FLAC"

    return-object v0

    .line 409
    :sswitch_24
    const-string v0, "AUDIO_FORMAT_DSD"

    return-object v0

    .line 407
    :sswitch_25
    const-string v0, "AUDIO_FORMAT_QCELP"

    return-object v0

    .line 405
    :sswitch_26
    const-string v0, "AUDIO_FORMAT_MP2"

    return-object v0

    .line 403
    :sswitch_27
    const-string v0, "AUDIO_FORMAT_AMR_WB_PLUS"

    return-object v0

    .line 401
    :sswitch_28
    const-string v0, "AUDIO_FORMAT_WMA_PRO"

    return-object v0

    .line 399
    :sswitch_29
    const-string v0, "AUDIO_FORMAT_WMA"

    return-object v0

    .line 397
    :sswitch_2a
    const-string v0, "AUDIO_FORMAT_AAC_ADIF"

    return-object v0

    .line 395
    :sswitch_2b
    const-string v0, "AUDIO_FORMAT_EVRCNW"

    return-object v0

    .line 393
    :sswitch_2c
    const-string v0, "AUDIO_FORMAT_EVRCWB"

    return-object v0

    .line 391
    :sswitch_2d
    const-string v0, "AUDIO_FORMAT_EVRCB"

    return-object v0

    .line 389
    :sswitch_2e
    const-string v0, "AUDIO_FORMAT_EVRC"

    return-object v0

    .line 387
    :sswitch_2f
    const-string v0, "AUDIO_FORMAT_DOLBY_TRUEHD"

    return-object v0

    .line 385
    :sswitch_30
    const-string v0, "AUDIO_FORMAT_IEC61937"

    return-object v0

    .line 383
    :sswitch_31
    const-string v0, "AUDIO_FORMAT_DTS_HD"

    return-object v0

    .line 381
    :sswitch_32
    const-string v0, "AUDIO_FORMAT_DTS"

    return-object v0

    .line 509
    :sswitch_33
    const-string v0, "AUDIO_FORMAT_E_AC3_JOC"

    return-object v0

    .line 379
    :sswitch_34
    const-string v0, "AUDIO_FORMAT_E_AC3"

    return-object v0

    .line 377
    :sswitch_35
    const-string v0, "AUDIO_FORMAT_AC3"

    return-object v0

    .line 375
    :sswitch_36
    const-string v0, "AUDIO_FORMAT_OPUS"

    return-object v0

    .line 373
    :sswitch_37
    const-string v0, "AUDIO_FORMAT_VORBIS"

    return-object v0

    .line 371
    :sswitch_38
    const-string v0, "AUDIO_FORMAT_HE_AAC_V2"

    return-object v0

    .line 369
    :sswitch_39
    const-string v0, "AUDIO_FORMAT_HE_AAC_V1"

    return-object v0

    .line 479
    :sswitch_3a
    const-string v0, "AUDIO_FORMAT_AAC_XHE"

    return-object v0

    .line 477
    :sswitch_3b
    const-string v0, "AUDIO_FORMAT_AAC_ELD"

    return-object v0

    .line 475
    :sswitch_3c
    const-string v0, "AUDIO_FORMAT_AAC_HE_V2"

    return-object v0

    .line 473
    :sswitch_3d
    const-string v0, "AUDIO_FORMAT_AAC_LD"

    return-object v0

    .line 471
    :sswitch_3e
    const-string v0, "AUDIO_FORMAT_AAC_ERLC"

    return-object v0

    .line 469
    :sswitch_3f
    const-string v0, "AUDIO_FORMAT_AAC_SCALABLE"

    return-object v0

    .line 467
    :sswitch_40
    const-string v0, "AUDIO_FORMAT_AAC_HE_V1"

    return-object v0

    .line 465
    :sswitch_41
    const-string v0, "AUDIO_FORMAT_AAC_LTP"

    return-object v0

    .line 463
    :sswitch_42
    const-string v0, "AUDIO_FORMAT_AAC_SSR"

    return-object v0

    .line 461
    :sswitch_43
    const-string v0, "AUDIO_FORMAT_AAC_LC"

    return-object v0

    .line 459
    :sswitch_44
    const-string v0, "AUDIO_FORMAT_AAC_MAIN"

    return-object v0

    .line 367
    :sswitch_45
    const-string v0, "AUDIO_FORMAT_AAC"

    return-object v0

    .line 365
    :sswitch_46
    const-string v0, "AUDIO_FORMAT_AMR_WB"

    return-object v0

    .line 363
    :sswitch_47
    const-string v0, "AUDIO_FORMAT_AMR_NB"

    return-object v0

    .line 361
    :sswitch_48
    const-string v0, "AUDIO_FORMAT_MP3"

    return-object v0

    .line 457
    :sswitch_49
    const-string v0, "AUDIO_FORMAT_PCM_24_BIT_PACKED"

    return-object v0

    .line 455
    :sswitch_4a
    const-string v0, "AUDIO_FORMAT_PCM_FLOAT"

    return-object v0

    .line 453
    :sswitch_4b
    const-string v0, "AUDIO_FORMAT_PCM_8_24_BIT"

    return-object v0

    .line 451
    :sswitch_4c
    const-string v0, "AUDIO_FORMAT_PCM_32_BIT"

    return-object v0

    .line 449
    :sswitch_4d
    const-string v0, "AUDIO_FORMAT_PCM_8_BIT"

    return-object v0

    .line 447
    :sswitch_4e
    const-string v0, "AUDIO_FORMAT_PCM_16_BIT"

    return-object v0

    .line 359
    :sswitch_4f
    const-string v0, "AUDIO_FORMAT_DEFAULT"

    return-object v0

    .line 357
    :sswitch_50
    const-string v0, "AUDIO_FORMAT_INVALID"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_50
        0x0 -> :sswitch_4f
        0x1 -> :sswitch_4e
        0x2 -> :sswitch_4d
        0x3 -> :sswitch_4c
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_4a
        0x6 -> :sswitch_49
        0x1000000 -> :sswitch_48
        0x2000000 -> :sswitch_47
        0x3000000 -> :sswitch_46
        0x4000000 -> :sswitch_45
        0x4000001 -> :sswitch_44
        0x4000002 -> :sswitch_43
        0x4000004 -> :sswitch_42
        0x4000008 -> :sswitch_41
        0x4000010 -> :sswitch_40
        0x4000020 -> :sswitch_3f
        0x4000040 -> :sswitch_3e
        0x4000080 -> :sswitch_3d
        0x4000100 -> :sswitch_3c
        0x4000200 -> :sswitch_3b
        0x4000300 -> :sswitch_3a
        0x5000000 -> :sswitch_39
        0x6000000 -> :sswitch_38
        0x7000000 -> :sswitch_37
        0x8000000 -> :sswitch_36
        0x9000000 -> :sswitch_35
        0xa000000 -> :sswitch_34
        0xa000001 -> :sswitch_33
        0xb000000 -> :sswitch_32
        0xc000000 -> :sswitch_31
        0xd000000 -> :sswitch_30
        0xe000000 -> :sswitch_2f
        0x10000000 -> :sswitch_2e
        0x11000000 -> :sswitch_2d
        0x12000000 -> :sswitch_2c
        0x13000000 -> :sswitch_2b
        0x14000000 -> :sswitch_2a
        0x15000000 -> :sswitch_29
        0x16000000 -> :sswitch_28
        0x17000000 -> :sswitch_27
        0x18000000 -> :sswitch_26
        0x19000000 -> :sswitch_25
        0x1a000000 -> :sswitch_24
        0x1b000000 -> :sswitch_23
        0x1c000000 -> :sswitch_22
        0x1d000000 -> :sswitch_21
        0x1e000000 -> :sswitch_20
        0x1e000001 -> :sswitch_1f
        0x1e000002 -> :sswitch_1e
        0x1e000004 -> :sswitch_1d
        0x1e000008 -> :sswitch_1c
        0x1e000010 -> :sswitch_1b
        0x1e000020 -> :sswitch_1a
        0x1e000040 -> :sswitch_19
        0x1e000080 -> :sswitch_18
        0x1e000100 -> :sswitch_17
        0x1e000200 -> :sswitch_16
        0x1e000300 -> :sswitch_15
        0x1f000000 -> :sswitch_14
        0x20000000 -> :sswitch_13
        0x21000000 -> :sswitch_12
        0x22000000 -> :sswitch_11
        0x23000000 -> :sswitch_10
        0x24000000 -> :sswitch_f
        0x24000001 -> :sswitch_e
        0x24000002 -> :sswitch_d
        0x24000003 -> :sswitch_c
        0x25000000 -> :sswitch_b
        0x25000002 -> :sswitch_a
        0x25000010 -> :sswitch_9
        0x25000100 -> :sswitch_8
        0x26000000 -> :sswitch_7
        0x27000000 -> :sswitch_6
        0x28000000 -> :sswitch_5
        0x29000000 -> :sswitch_4
        0x2a000000 -> :sswitch_3
        0x2b000000 -> :sswitch_2
        0x2e000000 -> :sswitch_1
        0x2f000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist audioSystemErrorToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # I

    .line 919
    packed-switch p0, :pswitch_data_0

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 921
    :pswitch_0
    const-string v0, "SUCCESS"

    return-object v0

    .line 923
    :pswitch_1
    const-string v0, "ERROR"

    return-object v0

    .line 925
    :pswitch_2
    const-string v0, "BAD_VALUE"

    return-object v0

    .line 927
    :pswitch_3
    const-string v0, "INVALID_OPERATION"

    return-object v0

    .line 929
    :pswitch_4
    const-string v0, "PERMISSION_DENIED"

    return-object v0

    .line 931
    :pswitch_5
    const-string v0, "NO_INIT"

    return-object v0

    .line 933
    :pswitch_6
    const-string v0, "DEAD_OBJECT"

    return-object v0

    .line 935
    :pswitch_7
    const-string v0, "WOULD_BLOCK"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x7
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

.method public static blacklist bluetoothCodecToAudioFormat(I)I
    .locals 2
    .param p0, "btCodec"    # I

    .line 329
    packed-switch p0, :pswitch_data_0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown BT codec 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for conversion to audio format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSystem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x0

    return v0

    .line 341
    :pswitch_0
    const/high16 v0, 0x2b000000

    return v0

    .line 339
    :pswitch_1
    const/high16 v0, 0x23000000

    return v0

    .line 337
    :pswitch_2
    const/high16 v0, 0x21000000

    return v0

    .line 335
    :pswitch_3
    const/high16 v0, 0x20000000

    return v0

    .line 333
    :pswitch_4
    const/high16 v0, 0x4000000

    return v0

    .line 331
    :pswitch_5
    const/high16 v0, 0x1f000000

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static native blacklist canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;[Landroid/media/AudioDeviceAttributes;)Z
.end method

.method public static native greylist checkAudioFlinger()I
.end method

.method public static native blacklist clearDevicesRoleForCapturePreset(II)I
.end method

.method public static native greylist-max-o createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
.end method

.method public static blacklist deviceSetToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1766
    .local p0, "devices":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1767
    .local v0, "n":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1768
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1769
    .local v3, "device":Ljava/lang/Integer;
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "n":I
    .local v4, "n":I
    if-lez v0, :cond_0

    .line 1770
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    .end local v3    # "device":Ljava/lang/Integer;
    move v0, v4

    goto :goto_0

    .line 1775
    .end local v4    # "n":I
    .restart local v0    # "n":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o deviceStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 1285
    packed-switch p0, :pswitch_data_0

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state ("

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

    .line 1288
    :pswitch_0
    const-string v0, "DEVICE_STATE_AVAILABLE_BY_FORCE"

    return-object v0

    .line 1287
    :pswitch_1
    const-string v0, "DEVICE_STATE_AVAILABLE"

    return-object v0

    .line 1286
    :pswitch_2
    const-string v0, "DEVICE_STATE_UNAVAILABLE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-r dynamicPolicyCallbackFromNative(ILjava/lang/String;I)V
    .locals 4
    .param p0, "event"    # I
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "val"    # I

    .line 697
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 698
    :try_start_0
    sget-object v1, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 699
    .local v1, "cb":Landroid/media/AudioSystem$DynamicPolicyCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    if-eqz v1, :cond_0

    .line 701
    packed-switch p0, :pswitch_data_0

    .line 706
    const-string v0, "AudioSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicPolicyCallbackFromNative: unknown event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 703
    :pswitch_0
    invoke-interface {v1, p1, p2}, Landroid/media/AudioSystem$DynamicPolicyCallback;->onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 699
    .end local v1    # "cb":Landroid/media/AudioSystem$DynamicPolicyCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist errorCallbackFromNative(I)V
    .locals 2
    .param p0, "error"    # I

    .line 660
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 661
    :try_start_0
    sget-object v1, Landroid/media/AudioSystem;->sErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 662
    .local v1, "errorCallback":Landroid/media/AudioSystem$ErrorCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    if-eqz v1, :cond_0

    .line 664
    invoke-interface {v1, p0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    .line 666
    :cond_0
    return-void

    .line 662
    .end local v1    # "errorCallback":Landroid/media/AudioSystem$ErrorCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static greylist-max-o forceUseConfigToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "config"    # I

    .line 1542
    packed-switch p0, :pswitch_data_0

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown config ("

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

    .line 1558
    :pswitch_0
    const-string v0, "FORCE_ENCODED_SURROUND_MANUAL"

    return-object v0

    .line 1557
    :pswitch_1
    const-string v0, "FORCE_ENCODED_SURROUND_ALWAYS"

    return-object v0

    .line 1556
    :pswitch_2
    const-string v0, "FORCE_ENCODED_SURROUND_NEVER"

    return-object v0

    .line 1555
    :pswitch_3
    const-string v0, "FORCE_HDMI_SYSTEM_AUDIO_ENFORCED"

    return-object v0

    .line 1554
    :pswitch_4
    const-string v0, "FORCE_SYSTEM_ENFORCED"

    return-object v0

    .line 1553
    :pswitch_5
    const-string v0, "FORCE_NO_BT_A2DP"

    return-object v0

    .line 1552
    :pswitch_6
    const-string v0, "FORCE_DIGITAL_DOCK"

    return-object v0

    .line 1551
    :pswitch_7
    const-string v0, "FORCE_ANALOG_DOCK"

    return-object v0

    .line 1550
    :pswitch_8
    const-string v0, "FORCE_BT_DESK_DOCK"

    return-object v0

    .line 1549
    :pswitch_9
    const-string v0, "FORCE_BT_CAR_DOCK"

    return-object v0

    .line 1548
    :pswitch_a
    const-string v0, "FORCE_WIRED_ACCESSORY"

    return-object v0

    .line 1547
    :pswitch_b
    const-string v0, "FORCE_BT_A2DP"

    return-object v0

    .line 1546
    :pswitch_c
    const-string v0, "FORCE_BT_SCO"

    return-object v0

    .line 1545
    :pswitch_d
    const-string v0, "FORCE_HEADPHONES"

    return-object v0

    .line 1544
    :pswitch_e
    const-string v0, "FORCE_SPEAKER"

    return-object v0

    .line 1543
    :pswitch_f
    const-string v0, "FORCE_NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static greylist-max-o forceUseUsageToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "usage"    # I

    .line 1585
    packed-switch p0, :pswitch_data_0

    .line 1595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage ("

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

    .line 1594
    :pswitch_0
    const-string v0, "FOR_FMRADIO"

    return-object v0

    .line 1593
    :pswitch_1
    const-string v0, "FOR_VIBRATE_RINGING"

    return-object v0

    .line 1592
    :pswitch_2
    const-string v0, "FOR_ENCODED_SURROUND"

    return-object v0

    .line 1591
    :pswitch_3
    const-string v0, "FOR_HDMI_SYSTEM_AUDIO"

    return-object v0

    .line 1590
    :pswitch_4
    const-string v0, "FOR_SYSTEM"

    return-object v0

    .line 1589
    :pswitch_5
    const-string v0, "FOR_DOCK"

    return-object v0

    .line 1588
    :pswitch_6
    const-string v0, "FOR_RECORD"

    return-object v0

    .line 1587
    :pswitch_7
    const-string v0, "FOR_MEDIA"

    return-object v0

    .line 1586
    :pswitch_8
    const-string v0, "FOR_COMMUNICATION"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static blacklist generateAudioDeviceTypesSet(Ljava/util/List;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2383
    .local p0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2384
    .local v0, "deviceTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 2385
    .local v2, "device":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2386
    .end local v2    # "device":Landroid/media/AudioDeviceAttributes;
    goto :goto_0

    .line 2387
    :cond_0
    return-object v0
.end method

.method public static native greylist-max-o getAudioHwSyncForSession(I)I
.end method

.method public static greylist-max-o getDefaultStreamVolume(I)I
    .locals 1
    .param p0, "streamType"    # I

    .line 2307
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method public static native greylist getDeviceConnectionState(ILjava/lang/String;)I
.end method

.method public static blacklist getDeviceMaskFromSet(Ljava/util/Set;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1745
    .local p0, "deviceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1746
    .local v0, "deviceMask":I
    const/high16 v1, -0x80000000

    .line 1747
    .local v1, "deviceInChecksum":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "AudioSystem"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1748
    .local v3, "device":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 1749
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDeviceMaskFromSet skipping multi-bit device value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    goto :goto_0

    .line 1752
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v0, v4

    .line 1753
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v1, v4

    .line 1754
    .end local v3    # "device":Ljava/lang/Integer;
    goto :goto_0

    .line 1757
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eq v1, v2, :cond_2

    .line 1758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceMaskFromSet: Invalid set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Landroid/media/AudioSystem;->deviceSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_2
    return v0
.end method

.method public static blacklist getDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "device"    # I

    .line 1509
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 1510
    invoke-static {p0}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1512
    :cond_0
    invoke-static {p0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist getDevicesForAttributes(Landroid/media/AudioAttributes;[Landroid/media/AudioDeviceAttributes;Z)I
.end method

.method public static blacklist getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;
    .locals 6
    .param p0, "attributes"    # Landroid/media/AudioAttributes;
    .param p1, "forVolume"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 1788
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/media/AudioDeviceAttributes;

    .line 1790
    .local v0, "devices":[Landroid/media/AudioDeviceAttributes;
    invoke-static {p0, v0, p1}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;[Landroid/media/AudioDeviceAttributes;Z)I

    move-result v1

    .line 1791
    .local v1, "res":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1792
    .local v2, "routeDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceAttributes;>;"
    if-eqz v1, :cond_0

    .line 1793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in getDevicesForAttributes attributes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forVolume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioSystem"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    return-object v2

    .line 1798
    :cond_0
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 1799
    .local v5, "device":Landroid/media/AudioDeviceAttributes;
    if-eqz v5, :cond_1

    .line 1800
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1798
    .end local v5    # "device":Landroid/media/AudioDeviceAttributes;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1803
    :cond_2
    return-object v2
.end method

.method public static native blacklist getDevicesForRoleAndCapturePreset(IILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native blacklist getDevicesForRoleAndStrategy(IILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation
.end method

.method public static greylist getDevicesForStream(I)I
    .locals 2
    .param p0, "stream"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1729
    nop

    .line 1730
    invoke-static {p0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1731
    .local v0, "attr":Landroid/media/AudioAttributes;
    nop

    .line 1732
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 1731
    invoke-static {v1}, Landroid/media/AudioSystem;->generateAudioDeviceTypesSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    move-result v1

    return v1
.end method

.method public static native blacklist getDirectPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
.end method

.method public static native blacklist getDirectProfilesForAttributes(Landroid/media/AudioAttributes;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioProfile;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native greylist getForceUse(I)I
.end method

.method public static native blacklist getHwOffloadFormatsSupportedForBluetoothMedia(ILjava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public static greylist-max-o getInputDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "device"    # I

    .line 1439
    sparse-switch p0, :sswitch_data_0

    .line 1498
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1495
    :sswitch_0
    const-string v0, "ble_headset"

    return-object v0

    .line 1489
    :sswitch_1
    const-string v0, "echo_reference"

    return-object v0

    .line 1493
    :sswitch_2
    const-string v0, "hdmi_earc"

    return-object v0

    .line 1491
    :sswitch_3
    const-string v0, "hdmi_arc"

    return-object v0

    .line 1487
    :sswitch_4
    const-string v0, "bt_ble"

    return-object v0

    .line 1485
    :sswitch_5
    const-string/jumbo v0, "usb_headset"

    return-object v0

    .line 1483
    :sswitch_6
    const-string v0, "proxy"

    return-object v0

    .line 1481
    :sswitch_7
    const-string v0, "bus"

    return-object v0

    .line 1479
    :sswitch_8
    const-string v0, "ip"

    return-object v0

    .line 1477
    :sswitch_9
    const-string v0, "loopback"

    return-object v0

    .line 1475
    :sswitch_a
    const-string v0, "bt_a2dp"

    return-object v0

    .line 1473
    :sswitch_b
    const-string/jumbo v0, "spdif"

    return-object v0

    .line 1471
    :sswitch_c
    const-string v0, "line"

    return-object v0

    .line 1469
    :sswitch_d
    const-string/jumbo v0, "tv_tuner"

    return-object v0

    .line 1467
    :sswitch_e
    const-string v0, "fm_tuner"

    return-object v0

    .line 1465
    :sswitch_f
    const-string/jumbo v0, "usb_device"

    return-object v0

    .line 1463
    :sswitch_10
    const-string/jumbo v0, "usb_accessory"

    return-object v0

    .line 1461
    :sswitch_11
    const-string v0, "digital_dock"

    return-object v0

    .line 1459
    :sswitch_12
    const-string v0, "analog_dock"

    return-object v0

    .line 1457
    :sswitch_13
    const-string v0, "remote_submix"

    return-object v0

    .line 1455
    :sswitch_14
    const-string v0, "back_mic"

    return-object v0

    .line 1453
    :sswitch_15
    const-string/jumbo v0, "telephony_rx"

    return-object v0

    .line 1451
    :sswitch_16
    const-string v0, "aux_digital"

    return-object v0

    .line 1449
    :sswitch_17
    const-string v0, "headset"

    return-object v0

    .line 1447
    :sswitch_18
    const-string v0, "bt_sco_hs"

    return-object v0

    .line 1445
    :sswitch_19
    const-string v0, "mic"

    return-object v0

    .line 1443
    :sswitch_1a
    const-string v0, "ambient"

    return-object v0

    .line 1441
    :sswitch_1b
    const-string v0, "communication"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7fffffff -> :sswitch_1b
        -0x7ffffffe -> :sswitch_1a
        -0x7ffffffc -> :sswitch_19
        -0x7ffffff8 -> :sswitch_18
        -0x7ffffff0 -> :sswitch_17
        -0x7fffffe0 -> :sswitch_16
        -0x7fffffc0 -> :sswitch_15
        -0x7fffff80 -> :sswitch_14
        -0x7fffff00 -> :sswitch_13
        -0x7ffffe00 -> :sswitch_12
        -0x7ffffc00 -> :sswitch_11
        -0x7ffff800 -> :sswitch_10
        -0x7ffff000 -> :sswitch_f
        -0x7fffe000 -> :sswitch_e
        -0x7fffc000 -> :sswitch_d
        -0x7fff8000 -> :sswitch_c
        -0x7fff0000 -> :sswitch_b
        -0x7ffe0000 -> :sswitch_a
        -0x7ffc0000 -> :sswitch_9
        -0x7ff80000 -> :sswitch_8
        -0x7ff00000 -> :sswitch_7
        -0x7f000000 -> :sswitch_6
        -0x7e000000 -> :sswitch_5
        -0x7c000000 -> :sswitch_4
        -0x78000000 -> :sswitch_3
        -0x77ffffff -> :sswitch_2
        -0x70000000 -> :sswitch_1
        -0x60000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static native blacklist getMasterBalance()F
.end method

.method public static native greylist-max-o getMasterMono()Z
.end method

.method public static native greylist-max-r getMasterMute()Z
.end method

.method public static native greylist-max-o getMasterVolume()F
.end method

.method public static native blacklist getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
.end method

.method public static native greylist-max-o getMicrophones(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native blacklist getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
.end method

.method public static final greylist getNumStreamTypes()I
    .locals 1

    .line 155
    const/16 v0, 0xc

    return v0
.end method

.method static blacklist getOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .locals 5
    .param p0, "format"    # Landroid/media/AudioFormat;
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 1950
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    .line 1951
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v3

    .line 1952
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v4

    .line 1950
    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/AudioSystem;->native_get_offload_support(IIIII)I

    move-result v0

    return v0
.end method

.method public static greylist getOutputDeviceName(I)Ljava/lang/String;
    .locals 2
    .param p0, "device"    # I

    .line 1363
    sparse-switch p0, :sswitch_data_0

    .line 1432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1429
    :sswitch_0
    const-string v0, "ble_broadcast"

    return-object v0

    .line 1427
    :sswitch_1
    const-string v0, "ble_speaker"

    return-object v0

    .line 1425
    :sswitch_2
    const-string v0, "ble_headset"

    return-object v0

    .line 1423
    :sswitch_3
    const-string v0, "echo_canceller"

    return-object v0

    .line 1421
    :sswitch_4
    const-string v0, "hearing_aid_out"

    return-object v0

    .line 1419
    :sswitch_5
    const-string/jumbo v0, "usb_headset"

    return-object v0

    .line 1417
    :sswitch_6
    const-string v0, "proxy"

    return-object v0

    .line 1415
    :sswitch_7
    const-string v0, "bus"

    return-object v0

    .line 1413
    :sswitch_8
    const-string v0, "ip"

    return-object v0

    .line 1411
    :sswitch_9
    const-string/jumbo v0, "speaker_safe"

    return-object v0

    .line 1409
    :sswitch_a
    const-string v0, "aux_line"

    return-object v0

    .line 1407
    :sswitch_b
    const-string v0, "fm_transmitter"

    return-object v0

    .line 1405
    :sswitch_c
    const-string/jumbo v0, "spdif"

    return-object v0

    .line 1403
    :sswitch_d
    const-string v0, "hdmi_earc"

    return-object v0

    .line 1401
    :sswitch_e
    const-string v0, "hdmi_arc"

    return-object v0

    .line 1399
    :sswitch_f
    const-string v0, "line"

    return-object v0

    .line 1397
    :sswitch_10
    const-string/jumbo v0, "telephony_tx"

    return-object v0

    .line 1395
    :sswitch_11
    const-string v0, "remote_submix"

    return-object v0

    .line 1393
    :sswitch_12
    const-string/jumbo v0, "usb_device"

    return-object v0

    .line 1391
    :sswitch_13
    const-string/jumbo v0, "usb_accessory"

    return-object v0

    .line 1389
    :sswitch_14
    const-string v0, "digital_dock"

    return-object v0

    .line 1387
    :sswitch_15
    const-string v0, "analog_dock"

    return-object v0

    .line 1385
    :sswitch_16
    const-string v0, "hdmi"

    return-object v0

    .line 1383
    :sswitch_17
    const-string v0, "bt_a2dp_spk"

    return-object v0

    .line 1381
    :sswitch_18
    const-string v0, "bt_a2dp_hp"

    return-object v0

    .line 1379
    :sswitch_19
    const-string v0, "bt_a2dp"

    return-object v0

    .line 1377
    :sswitch_1a
    const-string v0, "bt_sco_carkit"

    return-object v0

    .line 1375
    :sswitch_1b
    const-string v0, "bt_sco_hs"

    return-object v0

    .line 1373
    :sswitch_1c
    const-string v0, "bt_sco"

    return-object v0

    .line 1371
    :sswitch_1d
    const-string v0, "headphone"

    return-object v0

    .line 1369
    :sswitch_1e
    const-string v0, "headset"

    return-object v0

    .line 1367
    :sswitch_1f
    const-string/jumbo v0, "speaker"

    return-object v0

    .line 1365
    :sswitch_20
    const-string v0, "earpiece"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_1f
        0x4 -> :sswitch_1e
        0x8 -> :sswitch_1d
        0x10 -> :sswitch_1c
        0x20 -> :sswitch_1b
        0x40 -> :sswitch_1a
        0x80 -> :sswitch_19
        0x100 -> :sswitch_18
        0x200 -> :sswitch_17
        0x400 -> :sswitch_16
        0x800 -> :sswitch_15
        0x1000 -> :sswitch_14
        0x2000 -> :sswitch_13
        0x4000 -> :sswitch_12
        0x8000 -> :sswitch_11
        0x10000 -> :sswitch_10
        0x20000 -> :sswitch_f
        0x40000 -> :sswitch_e
        0x40001 -> :sswitch_d
        0x80000 -> :sswitch_c
        0x100000 -> :sswitch_b
        0x200000 -> :sswitch_a
        0x400000 -> :sswitch_9
        0x800000 -> :sswitch_8
        0x1000000 -> :sswitch_7
        0x2000000 -> :sswitch_6
        0x4000000 -> :sswitch_5
        0x8000000 -> :sswitch_4
        0x10000000 -> :sswitch_3
        0x20000000 -> :sswitch_2
        0x20000001 -> :sswitch_1
        0x20000002 -> :sswitch_0
    .end sparse-switch
.end method

.method public static native greylist getOutputLatency(I)I
.end method

.method public static native greylist getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static greylist-max-o getPlatformType(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 2351
    sget-object v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MDMN_TYPE:Ljava/lang/String;

    const-string v1, "Softphone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2352
    return v1

    .line 2354
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2355
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2356
    return v1

    .line 2357
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2358
    const/4 v0, 0x2

    return v0

    .line 2360
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static native greylist getPrimaryOutputFrameCount()I
.end method

.method public static native greylist getPrimaryOutputSamplingRate()I
.end method

.method public static native blacklist getReportedSurroundFormats(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public static blacklist getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/ISpatializer;
    .locals 1
    .param p0, "callback"    # Landroid/media/INativeSpatializerCallback;

    .line 2236
    invoke-static {p0}, Landroid/media/AudioSystem;->nativeGetSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializer;

    move-result-object v0

    return-object v0
.end method

.method public static native greylist-max-o getStreamVolumeDB(III)F
.end method

.method public static native greylist-max-o getStreamVolumeIndex(II)I
.end method

.method public static native blacklist getSurroundFormats(Ljava/util/Map;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation
.end method

.method public static greylist-max-o getValueForVibrateSetting(III)I
    .locals 2
    .param p0, "existingValue"    # I
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .line 2297
    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x3

    shl-int v0, v1, v0

    not-int v0, v0

    and-int/2addr p0, v0

    .line 2300
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 2302
    return p0
.end method

.method public static native blacklist getVolumeIndexForAttributes(Landroid/media/AudioAttributes;I)I
.end method

.method public static native blacklist handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native greylist initStreamVolume(III)I
.end method

.method public static blacklist intersectionAudioDeviceTypes(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2396
    .local p0, "a":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p1, "b":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 2397
    .local v0, "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 2398
    return-object v0
.end method

.method public static native blacklist isCallScreeningModeSupported()Z
.end method

.method public static native blacklist isHapticPlaybackSupported()Z
.end method

.method public static blacklist isLeAudioDeviceType(I)Z
    .locals 2
    .param p0, "type"    # I

    .line 2414
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static native greylist isMicrophoneMuted()Z
.end method

.method public static blacklist isSingleAudioDeviceType(Ljava/util/Set;I)Z
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 2406
    .local p0, "types":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static greylist-max-o isSingleVolume(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2369
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2371
    .local v0, "forceSingleVolume":Z
    invoke-static {p0}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_HOME_IOT:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static native greylist isSourceActive(I)Z
.end method

.method public static native greylist isStreamActive(II)Z
.end method

.method public static native greylist-max-o isStreamActiveRemotely(II)Z
.end method

.method public static native blacklist isUltrasoundSupported()Z
.end method

.method public static native greylist-max-o listAudioPatches(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static native greylist-max-o listAudioPorts(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static greylist-max-o modeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 217
    packed-switch p0, :pswitch_data_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown mode ("

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

    .line 226
    :pswitch_0
    const-string v0, "MODE_COMMUNICATION_REDIRECT"

    return-object v0

    .line 225
    :pswitch_1
    const-string v0, "MODE_CALL_REDIRECT"

    return-object v0

    .line 224
    :pswitch_2
    const-string v0, "MODE_CALL_SCREENING"

    return-object v0

    .line 220
    :pswitch_3
    const-string v0, "MODE_IN_COMMUNICATION"

    return-object v0

    .line 219
    :pswitch_4
    const-string v0, "MODE_IN_CALL"

    return-object v0

    .line 223
    :pswitch_5
    const-string v0, "MODE_RINGTONE"

    return-object v0

    .line 222
    :pswitch_6
    const-string v0, "MODE_NORMAL"

    return-object v0

    .line 218
    :pswitch_7
    const-string v0, "MODE_CURRENT"

    return-object v0

    .line 221
    :pswitch_8
    const-string v0, "MODE_INVALID"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
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

.method public static native greylist muteMicrophone(Z)I
.end method

.method private static native blacklist nativeGetSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/os/IBinder;
.end method

.method private static native blacklist native_getMaxChannelCount()I
.end method

.method private static native blacklist native_getMaxSampleRate()I
.end method

.method private static native blacklist native_getMinSampleRate()I
.end method

.method private static native blacklist native_get_offload_support(IIIII)I
.end method

.method private static final native greylist-max-o native_register_dynamic_policy_callback()V
.end method

.method private static final native greylist-max-o native_register_recording_callback()V
.end method

.method private static native blacklist native_register_routing_callback()V
.end method

.method private static native blacklist native_register_vol_range_init_req_callback()V
.end method

.method public static native greylist-max-o newAudioPlayerId()I
.end method

.method public static native blacklist newAudioRecorderId()I
.end method

.method public static native greylist-max-o newAudioSessionId()I
.end method

.method private static blacklist populateInputDevicesTypeAndAddress(Ljava/util/List;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)",
            "Landroid/util/Pair<",
            "[I[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2088
    .local p0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2089
    .local v0, "types":[I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2090
    .local v1, "addresses":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2091
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    aput v3, v0, v2

    .line 2092
    aget v3, v0, v2

    if-nez v3, :cond_0

    .line 2093
    nop

    .line 2094
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 2093
    invoke-static {v3, v4}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(ILjava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    .line 2096
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2090
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2098
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static greylist-max-r recordingCallbackFromNative(IIIIIIZ[I[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;I)V
    .locals 19
    .param p0, "event"    # I
    .param p1, "riid"    # I
    .param p2, "uid"    # I
    .param p3, "session"    # I
    .param p4, "source"    # I
    .param p5, "portId"    # I
    .param p6, "silenced"    # Z
    .param p7, "recordingFormat"    # [I
    .param p8, "clientEffects"    # [Landroid/media/audiofx/AudioEffect$Descriptor;
    .param p9, "effects"    # [Landroid/media/audiofx/AudioEffect$Descriptor;
    .param p10, "activeSource"    # I

    .line 776
    move-object/from16 v14, p8

    move-object/from16 v15, p9

    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    .line 777
    :try_start_0
    sget-object v0, Landroid/media/AudioSystem;->sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

    .line 778
    .local v0, "cb":Landroid/media/AudioSystem$AudioRecordingCallback;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    array-length v1, v14

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "None"

    goto :goto_0

    :cond_0
    aget-object v1, v14, v2

    iget-object v1, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    :goto_0
    move-object/from16 v16, v1

    .line 781
    .local v16, "clientEffectName":Ljava/lang/String;
    array-length v1, v15

    if-nez v1, :cond_1

    const-string v1, "None"

    goto :goto_1

    :cond_1
    aget-object v1, v15, v2

    iget-object v1, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    :goto_1
    move-object/from16 v17, v1

    .line 783
    .local v17, "effectName":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 784
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v1

    .line 785
    .local v18, "audioPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    invoke-static/range {v18 .. v18}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_4

    .line 786
    const/4 v1, 0x0

    .line 787
    .local v1, "patchFound":Z
    const/4 v2, 0x6

    aget v2, p7, v2

    .line 788
    .local v2, "patchHandle":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPatch;

    .line 789
    .local v4, "patch":Landroid/media/AudioPatch;
    invoke-virtual {v4}, Landroid/media/AudioPatch;->id()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 790
    const/4 v1, 0x1

    .line 791
    goto :goto_3

    .line 793
    .end local v4    # "patch":Landroid/media/AudioPatch;
    :cond_2
    goto :goto_2

    .line 794
    :cond_3
    :goto_3
    if-nez v1, :cond_4

    .line 798
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 802
    .end local v1    # "patchFound":Z
    .end local v2    # "patchHandle":I
    :cond_4
    const-string v13, ""

    move-object v1, v0

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-interface/range {v1 .. v13}, Landroid/media/AudioSystem$AudioRecordingCallback;->onRecordingConfigurationChanged(IIIIIIZ[I[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;ILjava/lang/String;)V

    .line 805
    .end local v18    # "audioPatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    :cond_5
    return-void

    .line 778
    .end local v0    # "cb":Landroid/media/AudioSystem$AudioRecordingCallback;
    .end local v16    # "clientEffectName":Ljava/lang/String;
    .end local v17    # "effectName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static native greylist-max-o registerPolicyMixes(Ljava/util/ArrayList;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public static native greylist-max-o releaseAudioPatch(Landroid/media/AudioPatch;)I
.end method

.method public static blacklist removeDevicesRoleForCapturePreset(IILjava/util/List;)I
    .locals 3
    .param p0, "capturePreset"    # I
    .param p1, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 2171
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2172
    const/4 v0, -0x2

    return v0

    .line 2174
    :cond_0
    invoke-static {p2}, Landroid/media/AudioSystem;->populateInputDevicesTypeAndAddress(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 2175
    .local v0, "typeAddresses":Landroid/util/Pair;, "Landroid/util/Pair<[I[Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v2}, Landroid/media/AudioSystem;->removeDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static native blacklist removeDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I
.end method

.method public static native blacklist removeDevicesRoleForStrategy(II)I
.end method

.method public static native blacklist removeUidDeviceAffinities(I)I
.end method

.method public static native blacklist removeUserIdDeviceAffinities(I)I
.end method

.method private static blacklist routingCallbackFromNative()V
    .locals 3

    .line 831
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 832
    :try_start_0
    sget-object v1, Landroid/media/AudioSystem;->sRoutingUpdateCallback:Landroid/media/AudioSystem$RoutingUpdateCallback;

    .line 833
    .local v1, "cb":Landroid/media/AudioSystem$RoutingUpdateCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    if-nez v1, :cond_0

    .line 835
    const-string v0, "AudioSystem"

    const-string v2, "routing update from APM was not captured"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    return-void

    .line 838
    :cond_0
    invoke-interface {v1}, Landroid/media/AudioSystem$RoutingUpdateCallback;->onRoutingUpdated()V

    .line 839
    return-void

    .line 833
    .end local v1    # "cb":Landroid/media/AudioSystem$RoutingUpdateCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static native blacklist setA11yServicesUids([I)I
.end method

.method public static native blacklist setActiveAssistantServicesUids([I)I
.end method

.method public static native blacklist setAllowedCapturePolicy(II)I
.end method

.method public static native blacklist setAssistantServicesUids([I)I
.end method

.method public static native blacklist setAudioFlingerBinder(Landroid/os/IBinder;)V
.end method

.method public static native blacklist setAudioHalPids([I)I
.end method

.method public static native greylist-max-o setAudioPortConfig(Landroid/media/AudioPortConfig;)I
.end method

.method public static native blacklist setCurrentImeUid(I)I
.end method

.method public static native greylist setDeviceConnectionState(ILandroid/os/Parcel;I)I
.end method

.method public static greylist setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I
    .locals 3
    .param p0, "attributes"    # Landroid/media/AudioDeviceAttributes;
    .param p1, "state"    # I
    .param p2, "codecFormat"    # I

    .line 1624
    nop

    .line 1625
    invoke-static {p0}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioDeviceAttributes_AudioPort(Landroid/media/AudioDeviceAttributes;)Landroid/media/audio/common/AudioPort;

    move-result-object v0

    .line 1626
    .local v0, "port":Landroid/media/audio/common/AudioPort;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1627
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/audio/common/AudioPort;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1628
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1630
    :try_start_0
    invoke-static {p1, v1, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(ILandroid/os/Parcel;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1630
    return v2

    .line 1632
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1633
    throw v2
.end method

.method public static blacklist setDevicesRoleForCapturePreset(IILjava/util/List;)I
    .locals 3
    .param p0, "capturePreset"    # I
    .param p1, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 2111
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2112
    const/4 v0, -0x2

    return v0

    .line 2114
    :cond_0
    invoke-static {p2}, Landroid/media/AudioSystem;->populateInputDevicesTypeAndAddress(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 2115
    .local v0, "typeAddresses":Landroid/util/Pair;, "Landroid/util/Pair<[I[Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v2}, Landroid/media/AudioSystem;->setDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static native blacklist setDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I
.end method

.method public static blacklist setDevicesRoleForStrategy(IILjava/util/List;)I
    .locals 4
    .param p0, "strategy"    # I
    .param p1, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 2039
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2040
    const/4 v0, -0x2

    return v0

    .line 2042
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2043
    .local v0, "types":[I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2044
    .local v1, "addresses":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2045
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    aput v3, v0, v2

    .line 2046
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2044
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2048
    .end local v2    # "i":I
    :cond_1
    invoke-static {p0, p1, v0, v1}, Landroid/media/AudioSystem;->setDevicesRoleForStrategy(II[I[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static native blacklist setDevicesRoleForStrategy(II[I[Ljava/lang/String;)I
.end method

.method public static greylist-max-o setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V
    .locals 2
    .param p0, "cb"    # Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 687
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 688
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 689
    invoke-static {}, Landroid/media/AudioSystem;->native_register_dynamic_policy_callback()V

    .line 690
    monitor-exit v0

    .line 691
    return-void

    .line 690
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V
    .locals 2
    .param p0, "cb"    # Landroid/media/AudioSystem$ErrorCallback;

    .line 648
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 649
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->sErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 650
    if-eqz p0, :cond_0

    .line 651
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v1

    invoke-interface {p0, v1}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    .line 653
    :cond_0
    monitor-exit v0

    .line 654
    return-void

    .line 653
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static native greylist setForceUse(II)I
.end method

.method public static native greylist-max-o setLowRamDevice(ZJ)I
.end method

.method public static native blacklist setMasterBalance(F)I
.end method

.method public static native greylist-max-o setMasterMono(Z)I
.end method

.method public static native greylist setMasterMute(Z)I
.end method

.method public static native greylist-max-o setMasterVolume(F)I
.end method

.method public static native greylist setParameters(Ljava/lang/String;)I
.end method

.method public static greylist setPhoneState(I)I
    .locals 2
    .param p0, "state"    # I

    .line 1651
    const-string v0, "AudioSystem"

    const-string v1, "Do not use this method! Use AudioManager.setMode() instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    const/4 v0, 0x0

    return v0
.end method

.method public static native blacklist setPhoneState(II)I
.end method

.method public static blacklist setPolicyParameters(Ljava/lang/String;)I
    .locals 2
    .param p0, "keyValuePairs"    # Ljava/lang/String;

    .line 2438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V
    .locals 2
    .param p0, "cb"    # Landroid/media/AudioSystem$AudioRecordingCallback;

    .line 747
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 748
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

    .line 749
    invoke-static {}, Landroid/media/AudioSystem;->native_register_recording_callback()V

    .line 750
    monitor-exit v0

    .line 751
    return-void

    .line 750
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist setRoutingCallback(Landroid/media/AudioSystem$RoutingUpdateCallback;)V
    .locals 2
    .param p0, "cb"    # Landroid/media/AudioSystem$RoutingUpdateCallback;

    .line 823
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 824
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->sRoutingUpdateCallback:Landroid/media/AudioSystem$RoutingUpdateCallback;

    .line 825
    invoke-static {}, Landroid/media/AudioSystem;->native_register_routing_callback()V

    .line 826
    monitor-exit v0

    .line 827
    return-void

    .line 826
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static native blacklist setRttEnabled(Z)I
.end method

.method private static native greylist setStreamVolumeIndex(III)I
.end method

.method public static blacklist setStreamVolumeIndexAS(III)I
    .locals 1
    .param p0, "stream"    # I
    .param p1, "index"    # I
    .param p2, "device"    # I

    .line 1605
    invoke-static {p0, p1, p2}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    move-result v0

    return v0
.end method

.method public static native blacklist setSupportedSystemUsages([I)I
.end method

.method public static native greylist-max-o setSurroundFormatEnabled(IZ)I
.end method

.method public static native blacklist setUidDeviceAffinities(I[I[Ljava/lang/String;)I
.end method

.method public static native blacklist setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I
.end method

.method public static native blacklist setVibratorInfos(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Vibrator;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native blacklist setVolumeIndexForAttributes(Landroid/media/AudioAttributes;II)I
.end method

.method public static blacklist setVolumeRangeInitRequestCallback(Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;)V
    .locals 2
    .param p0, "cb"    # Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;

    .line 857
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 858
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->sVolRangeInitReqCallback:Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;

    .line 859
    invoke-static {}, Landroid/media/AudioSystem;->native_register_vol_range_init_req_callback()V

    .line 860
    monitor-exit v0

    .line 861
    return-void

    .line 860
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static native blacklist startAudioSource(Landroid/media/AudioPortConfig;Landroid/media/AudioAttributes;)I
.end method

.method public static native blacklist stopAudioSource(I)I
.end method

.method public static greylist-max-o streamToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "stream"    # I

    .line 2329
    if-ltz p0, :cond_0

    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object v0, v0, p0

    return-object v0

    .line 2330
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    const-string v0, "USE_DEFAULT_STREAM_TYPE"

    return-object v0

    .line 2331
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_STREAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native greylist-max-o systemReady()I
.end method

.method private static blacklist volRangeInitReqCallbackFromNative()V
    .locals 3

    .line 865
    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    .line 866
    :try_start_0
    sget-object v1, Landroid/media/AudioSystem;->sVolRangeInitReqCallback:Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;

    .line 867
    .local v1, "cb":Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    if-nez v1, :cond_0

    .line 869
    const-string v0, "AudioSystem"

    const-string v2, "APM requested volume range initialization, but no callback found"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void

    .line 872
    :cond_0
    invoke-interface {v1}, Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;->onVolumeRangeInitializationRequested()V

    .line 873
    return-void

    .line 867
    .end local v1    # "cb":Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

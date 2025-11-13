.class public final Landroid/telephony/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"


# static fields
.field public static final whitelist ALREADY_DIALING:I = 0x48

.field public static final whitelist ANSWERED_ELSEWHERE:I = 0x34

.field public static final whitelist BUSY:I = 0x4

.field public static final whitelist CALLING_DISABLED:I = 0x4a

.field public static final whitelist CALL_BARRED:I = 0x14

.field public static final whitelist CALL_PULLED:I = 0x33

.field public static final whitelist CANT_CALL_WHILE_RINGING:I = 0x49

.field public static final whitelist CDMA_ACCESS_BLOCKED:I = 0x23

.field public static final whitelist CDMA_ACCESS_FAILURE:I = 0x20

.field public static final whitelist CDMA_ALREADY_ACTIVATED:I = 0x31

.field public static final greylist-max-o CDMA_CALL_LOST:I = 0x29

.field public static final whitelist CDMA_DROP:I = 0x1b

.field public static final whitelist CDMA_INTERCEPT:I = 0x1c

.field public static final whitelist CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x1a

.field public static final whitelist CDMA_NOT_EMERGENCY:I = 0x22

.field public static final whitelist CDMA_PREEMPTED:I = 0x21

.field public static final whitelist CDMA_REORDER:I = 0x1d

.field public static final whitelist CDMA_RETRY_ORDER:I = 0x1f

.field public static final whitelist CDMA_SO_REJECT:I = 0x1e

.field public static final whitelist CONGESTION:I = 0x5

.field public static final blacklist CS_CALL_NOT_AVAILABLE:I = 0xf9

.field public static final whitelist CS_RESTRICTED:I = 0x16

.field public static final whitelist CS_RESTRICTED_EMERGENCY:I = 0x18

.field public static final whitelist CS_RESTRICTED_NORMAL:I = 0x17

.field public static final whitelist DATA_DISABLED:I = 0x36

.field public static final whitelist DATA_LIMIT_REACHED:I = 0x37

.field public static final whitelist DIALED_CALL_FORWARDING_WHILE_ROAMING:I = 0x39

.field public static final whitelist DIALED_MMI:I = 0x27

.field public static final whitelist DIAL_LOW_BATTERY:I = 0x3e

.field public static final whitelist DIAL_MODIFIED_TO_DIAL:I = 0x30

.field public static final whitelist DIAL_MODIFIED_TO_DIAL_VIDEO:I = 0x42

.field public static final whitelist DIAL_MODIFIED_TO_SS:I = 0x2f

.field public static final whitelist DIAL_MODIFIED_TO_USSD:I = 0x2e

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_DIAL:I = 0x45

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO:I = 0x46

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_SS:I = 0x43

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_USSD:I = 0x44

.field public static final whitelist EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE:I = 0x4e

.field public static final greylist-max-o EMERGENCY_ONLY:I = 0x25

.field public static final whitelist EMERGENCY_PERM_FAILURE:I = 0x40

.field public static final whitelist EMERGENCY_TEMP_FAILURE:I = 0x3f

.field public static final whitelist ERROR_UNSPECIFIED:I = 0x24

.field public static final greylist-max-o EXITED_ECM:I = 0x2a

.field public static final whitelist FDN_BLOCKED:I = 0x15

.field public static final whitelist ICC_ERROR:I = 0x13

.field public static final whitelist IMEI_NOT_ACCEPTED:I = 0x3a

.field public static final whitelist IMS_ACCESS_BLOCKED:I = 0x3c

.field public static final whitelist IMS_MERGED_SUCCESSFULLY:I = 0x2d

.field public static final whitelist IMS_SIP_ALTERNATE_EMERGENCY_CALL:I = 0x47

.field public static final whitelist INCOMING_AUTO_REJECTED:I = 0x51

.field public static final whitelist INCOMING_MISSED:I = 0x1

.field public static final whitelist INCOMING_REJECTED:I = 0x10

.field public static final whitelist INVALID_CREDENTIALS:I = 0xa

.field public static final whitelist INVALID_NUMBER:I = 0x7

.field public static final whitelist LIMIT_EXCEEDED:I = 0xf

.field public static final whitelist LOCAL:I = 0x3

.field public static final whitelist LOST_SIGNAL:I = 0xe

.field public static final whitelist LOW_BATTERY:I = 0x3d

.field public static final whitelist MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x35

.field public static final whitelist MEDIA_TIMEOUT:I = 0x4d

.field public static final whitelist MMI:I = 0x6

.field public static final whitelist NORMAL:I = 0x2

.field public static final whitelist NORMAL_UNSPECIFIED:I = 0x41

.field public static final whitelist NOT_DISCONNECTED:I = 0x0

.field public static final blacklist NOT_POSSIBLE_TO_START_VIDEO_CALL:I = 0xc8

.field public static final whitelist NOT_VALID:I = -0x1

.field public static final whitelist NO_PHONE_NUMBER_SUPPLIED:I = 0x26

.field public static final whitelist NUMBER_UNREACHABLE:I = 0x8

.field public static final whitelist OTASP_PROVISIONING_IN_PROCESS:I = 0x4c

.field public static final whitelist OUTGOING_CANCELED:I = 0x2c

.field public static final whitelist OUTGOING_EMERGENCY_CALL_PLACED:I = 0x50

.field public static final whitelist OUTGOING_FAILURE:I = 0x2b

.field public static final whitelist OUT_OF_NETWORK:I = 0xb

.field public static final whitelist OUT_OF_SERVICE:I = 0x12

.field public static final whitelist POWER_OFF:I = 0x11

.field public static final whitelist SATELLITE_ENABLED:I = 0x52

.field public static final whitelist SERVER_ERROR:I = 0xc

.field public static final whitelist SERVER_UNREACHABLE:I = 0x9

.field public static final whitelist TIMED_OUT:I = 0xd

.field public static final whitelist TOO_MANY_ONGOING_CALLS:I = 0x4b

.field public static final whitelist UNOBTAINABLE_NUMBER:I = 0x19

.field public static final whitelist VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED:I = 0x32

.field public static final whitelist VOICEMAIL_NUMBER_MISSING:I = 0x28

.field public static final whitelist WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION:I = 0x4f

.field public static final whitelist WIFI_LOST:I = 0x3b


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist toString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "CS_CALL_NOT_AVAILABLE"

    return-object v0

    :sswitch_1
    const-string v0, "NOT_POSSIBLE_TO_START_VIDEO_CALL"

    return-object v0

    :sswitch_2
    const-string v0, "SATELLITE_ENABLED"

    return-object v0

    :sswitch_3
    const-string v0, "INCOMING_AUTO_REJECTED"

    return-object v0

    :sswitch_4
    const-string v0, "OUTGOING_EMERGENCY_CALL_PLACED"

    return-object v0

    :sswitch_5
    const-string v0, "WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION"

    return-object v0

    :sswitch_6
    const-string v0, "EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE"

    return-object v0

    :sswitch_7
    const-string v0, "MEDIA_TIMEOUT"

    return-object v0

    :sswitch_8
    const-string v0, "OTASP_PROVISIONING_IN_PROCESS"

    return-object v0

    :sswitch_9
    const-string v0, "TOO_MANY_ONGOING_CALLS"

    return-object v0

    :sswitch_a
    const-string v0, "CALLING_DISABLED"

    return-object v0

    :sswitch_b
    const-string v0, "CANT_CALL_WHILE_RINGING"

    return-object v0

    :sswitch_c
    const-string v0, "ALREADY_DIALING"

    return-object v0

    :sswitch_d
    const-string v0, "IMS_SIP_ALTERNATE_EMERGENCY_CALL"

    return-object v0

    :sswitch_e
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    :sswitch_f
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_DIAL"

    return-object v0

    :sswitch_10
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_USSD"

    return-object v0

    :sswitch_11
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_SS"

    return-object v0

    :sswitch_12
    const-string v0, "DIAL_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    :sswitch_13
    const-string v0, "NORMAL_UNSPECIFIED"

    return-object v0

    :sswitch_14
    const-string v0, "EMERGENCY_PERM_FAILURE"

    return-object v0

    :sswitch_15
    const-string v0, "EMERGENCY_TEMP_FAILURE"

    return-object v0

    :sswitch_16
    const-string v0, "DIAL_LOW_BATTERY"

    return-object v0

    :sswitch_17
    const-string v0, "LOW_BATTERY"

    return-object v0

    :sswitch_18
    const-string v0, "IMS_ACCESS_BLOCKED"

    return-object v0

    :sswitch_19
    const-string v0, "WIFI_LOST"

    return-object v0

    :sswitch_1a
    const-string v0, "IMEI_NOT_ACCEPTED"

    return-object v0

    :sswitch_1b
    const-string v0, "DIALED_CALL_FORWARDING_WHILE_ROAMING"

    return-object v0

    :sswitch_1c
    const-string v0, "DATA_LIMIT_REACHED"

    return-object v0

    :sswitch_1d
    const-string v0, "DATA_DISABLED"

    return-object v0

    :sswitch_1e
    const-string v0, "MAXIMUM_NUMER_OF_CALLS_REACHED"

    return-object v0

    :sswitch_1f
    const-string v0, "ANSWERED_ELSEWHERE"

    return-object v0

    :sswitch_20
    const-string v0, "CALL_PULLED"

    return-object v0

    :sswitch_21
    const-string v0, "VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED"

    return-object v0

    :sswitch_22
    const-string v0, "CDMA_ALREADY_ACTIVATED"

    return-object v0

    :sswitch_23
    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    return-object v0

    :sswitch_24
    const-string v0, "DIAL_MODIFIED_TO_SS"

    return-object v0

    :sswitch_25
    const-string v0, "DIAL_MODIFIED_TO_USSD"

    return-object v0

    :sswitch_26
    const-string v0, "IMS_MERGED_SUCCESSFULLY"

    return-object v0

    :sswitch_27
    const-string v0, "OUTGOING_CANCELED"

    return-object v0

    :sswitch_28
    const-string v0, "OUTGOING_FAILURE"

    return-object v0

    :sswitch_29
    const-string v0, "EXITED_ECM"

    return-object v0

    :sswitch_2a
    const-string v0, "CDMA_CALL_LOST"

    return-object v0

    :sswitch_2b
    const-string v0, "VOICEMAIL_NUMBER_MISSING"

    return-object v0

    :sswitch_2c
    const-string v0, "DIALED_MMI"

    return-object v0

    :sswitch_2d
    const-string v0, "NO_PHONE_NUMBER_SUPPLIED"

    return-object v0

    :sswitch_2e
    const-string v0, "EMERGENCY_ONLY"

    return-object v0

    :sswitch_2f
    const-string v0, "ERROR_UNSPECIFIED"

    return-object v0

    :sswitch_30
    const-string v0, "CDMA_ACCESS_BLOCKED"

    return-object v0

    :sswitch_31
    const-string v0, "CDMA_NOT_EMERGENCY"

    return-object v0

    :sswitch_32
    const-string v0, "CDMA_PREEMPTED"

    return-object v0

    :sswitch_33
    const-string v0, "CDMA_ACCESS_FAILURE"

    return-object v0

    :sswitch_34
    const-string v0, "CDMA_RETRY_ORDER"

    return-object v0

    :sswitch_35
    const-string v0, "CDMA_SO_REJECT"

    return-object v0

    :sswitch_36
    const-string v0, "CDMA_REORDER"

    return-object v0

    :sswitch_37
    const-string v0, "CDMA_INTERCEPT"

    return-object v0

    :sswitch_38
    const-string v0, "CDMA_DROP"

    return-object v0

    :sswitch_39
    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    return-object v0

    :sswitch_3a
    const-string v0, "UNOBTAINABLE_NUMBER"

    return-object v0

    :sswitch_3b
    const-string v0, "CS_RESTRICTED_EMERGENCY"

    return-object v0

    :sswitch_3c
    const-string v0, "CS_RESTRICTED_NORMAL"

    return-object v0

    :sswitch_3d
    const-string v0, "CS_RESTRICTED"

    return-object v0

    :sswitch_3e
    const-string v0, "FDN_BLOCKED"

    return-object v0

    :sswitch_3f
    const-string v0, "CALL_BARRED"

    return-object v0

    :sswitch_40
    const-string v0, "ICC_ERROR"

    return-object v0

    :sswitch_41
    const-string v0, "OUT_OF_SERVICE"

    return-object v0

    :sswitch_42
    const-string v0, "POWER_OFF"

    return-object v0

    :sswitch_43
    const-string v0, "INCOMING_REJECTED"

    return-object v0

    :sswitch_44
    const-string v0, "LIMIT_EXCEEDED"

    return-object v0

    :sswitch_45
    const-string v0, "LOST_SIGNAL"

    return-object v0

    :sswitch_46
    const-string v0, "TIMED_OUT"

    return-object v0

    :sswitch_47
    const-string v0, "SERVER_ERROR"

    return-object v0

    :sswitch_48
    const-string v0, "OUT_OF_NETWORK"

    return-object v0

    :sswitch_49
    const-string v0, "INVALID_CREDENTIALS"

    return-object v0

    :sswitch_4a
    const-string v0, "SERVER_UNREACHABLE"

    return-object v0

    :sswitch_4b
    const-string v0, "NUMBER_UNREACHABLE"

    return-object v0

    :sswitch_4c
    const-string v0, "INVALID_NUMBER"

    return-object v0

    :sswitch_4d
    const-string v0, "CONGESTION"

    return-object v0

    :sswitch_4e
    const-string v0, "BUSY"

    return-object v0

    :sswitch_4f
    const-string v0, "LOCAL"

    return-object v0

    :sswitch_50
    const-string v0, "NORMAL"

    return-object v0

    :sswitch_51
    const-string v0, "INCOMING_MISSED"

    return-object v0

    :sswitch_52
    const-string v0, "NOT_DISCONNECTED"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_52
        0x1 -> :sswitch_51
        0x2 -> :sswitch_50
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_4d
        0x7 -> :sswitch_4c
        0x8 -> :sswitch_4b
        0x9 -> :sswitch_4a
        0xa -> :sswitch_49
        0xb -> :sswitch_48
        0xc -> :sswitch_47
        0xd -> :sswitch_46
        0xe -> :sswitch_45
        0xf -> :sswitch_44
        0x10 -> :sswitch_43
        0x11 -> :sswitch_42
        0x12 -> :sswitch_41
        0x13 -> :sswitch_40
        0x14 -> :sswitch_3f
        0x15 -> :sswitch_3e
        0x16 -> :sswitch_3d
        0x17 -> :sswitch_3c
        0x18 -> :sswitch_3b
        0x19 -> :sswitch_3a
        0x1a -> :sswitch_39
        0x1b -> :sswitch_38
        0x1c -> :sswitch_37
        0x1d -> :sswitch_36
        0x1e -> :sswitch_35
        0x1f -> :sswitch_34
        0x20 -> :sswitch_33
        0x21 -> :sswitch_32
        0x22 -> :sswitch_31
        0x23 -> :sswitch_30
        0x24 -> :sswitch_2f
        0x25 -> :sswitch_2e
        0x26 -> :sswitch_2d
        0x27 -> :sswitch_2c
        0x28 -> :sswitch_2b
        0x29 -> :sswitch_2a
        0x2a -> :sswitch_29
        0x2b -> :sswitch_28
        0x2c -> :sswitch_27
        0x2d -> :sswitch_26
        0x2e -> :sswitch_25
        0x2f -> :sswitch_24
        0x30 -> :sswitch_23
        0x31 -> :sswitch_22
        0x32 -> :sswitch_21
        0x33 -> :sswitch_20
        0x34 -> :sswitch_1f
        0x35 -> :sswitch_1e
        0x36 -> :sswitch_1d
        0x37 -> :sswitch_1c
        0x39 -> :sswitch_1b
        0x3a -> :sswitch_1a
        0x3b -> :sswitch_19
        0x3c -> :sswitch_18
        0x3d -> :sswitch_17
        0x3e -> :sswitch_16
        0x3f -> :sswitch_15
        0x40 -> :sswitch_14
        0x41 -> :sswitch_13
        0x42 -> :sswitch_12
        0x43 -> :sswitch_11
        0x44 -> :sswitch_10
        0x45 -> :sswitch_f
        0x46 -> :sswitch_e
        0x47 -> :sswitch_d
        0x48 -> :sswitch_c
        0x49 -> :sswitch_b
        0x4a -> :sswitch_a
        0x4b -> :sswitch_9
        0x4c -> :sswitch_8
        0x4d -> :sswitch_7
        0x4e -> :sswitch_6
        0x4f -> :sswitch_5
        0x50 -> :sswitch_4
        0x51 -> :sswitch_3
        0x52 -> :sswitch_2
        0xc8 -> :sswitch_1
        0xf9 -> :sswitch_0
    .end sparse-switch
.end method

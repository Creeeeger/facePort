.class public final Lcom/samsung/systemui/splugins/volume/VolumePanelValues;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x0

.field public static final DEVICE_BLUETOOTH:I = 0x8

.field public static final DEVICE_NONE:I = 0x0

.field public static final FLAG_CONTENT_CONTROLS:I = 0x4

.field public static final FLAG_CONTENT_TEXT:I = 0x2

.field public static final FLAG_DISMISS_UI_WARNINGS:I = 0x8000000

.field public static final FLAG_SHOW_CSD_100_WARNINGS:I = 0x20000000

.field public static final INSTANCE:Lcom/samsung/systemui/splugins/volume/VolumePanelValues;

.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBRATE:I = 0x1

.field public static final STREAM_ACCESSIBILITY:I = 0xa

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_AUDIO_SHARING:I = 0x17

.field public static final STREAM_BIXBY_VOICE:I = 0xb

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DUAL_AUDIO:I = 0x16

.field public static final STREAM_MULTI_SOUND:I = 0x15

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NONE:I = -0x1

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SMART_VIEW:I = 0x14

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final TYPE_CLEAR_CAMERA_VIEW_COVER:I = 0x11

.field public static final TYPE_CLEAR_COVER:I = 0x8

.field public static final TYPE_CLEAR_SIDE_VIEW_COVER:I = 0xf

.field public static final TYPE_MINI_SVIEW_WALLET_COVER:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;-><init>()V

    sput-object v0, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->INSTANCE:Lcom/samsung/systemui/splugins/volume/VolumePanelValues;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAccessibility(I)Z
    .locals 1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isAlarm(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isAudioSharing(I)Z
    .locals 1

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isBixbyVoice(I)Z
    .locals 1

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isBluetoothSco(I)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isDualAudio(I)Z
    .locals 1

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isMediaStream(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMusic(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isDualAudio(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isMultiSound(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isMultiSound(I)Z
    .locals 1

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isMusic(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isNone(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isNormal(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isNotification(I)Z
    .locals 1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isRing(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isSilent(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isSmartView(I)Z
    .locals 1

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isSystem(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isVibrate(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isVoiceCall(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final rowStreamTypeToString(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0xa

    if-eq p1, p0, :cond_1

    const/16 p0, 0xb

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const-string p0, "STREAM_AUDIO_SHARING"

    goto :goto_0

    :pswitch_1
    const-string p0, "STREAM_DUAL_AUDIO"

    goto :goto_0

    :pswitch_2
    const-string p0, "STREAM_MULTI_SOUND"

    goto :goto_0

    :pswitch_3
    const-string p0, "STREAM_SMART_VIEW"

    goto :goto_0

    :pswitch_4
    const-string p0, "STREAM_BLUETOOTH_SCO"

    goto :goto_0

    :pswitch_5
    const-string p0, "STREAM_NOTIFICATION"

    goto :goto_0

    :pswitch_6
    const-string p0, "STREAM_ALARM"

    goto :goto_0

    :pswitch_7
    const-string p0, "STREAM_MUSIC"

    goto :goto_0

    :pswitch_8
    const-string p0, "STREAM_RING"

    goto :goto_0

    :pswitch_9
    const-string p0, "STREAM_SYSTEM"

    goto :goto_0

    :pswitch_a
    const-string p0, "STREAM_VOICE_CALL"

    goto :goto_0

    :pswitch_b
    const-string p0, "STREAM_NONE"

    goto :goto_0

    :cond_0
    const-string p0, "STREAM_BIXBY_VOICE"

    goto :goto_0

    :cond_1
    const-string p0, "STREAM_ACCESSIBILITY"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

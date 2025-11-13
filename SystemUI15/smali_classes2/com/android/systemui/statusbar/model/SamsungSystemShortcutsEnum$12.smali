.class final enum Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum$12;
.super Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const-string v0, "SYSTEM_MICROPHONE_ACCESS_ON_OFF"

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum$12;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final getKshInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/model/KshDataUtils;)Ljava/util/Optional;
    .locals 1

    iget-object p0, p2, Lcom/android/systemui/statusbar/model/KshDataUtils;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "sensor_privacy"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorPrivacyManager;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "privacy"

    const-string v0, "mic_toggle_enabled"

    invoke-static {p0, v0, p2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/view/KeyboardShortcutInfo;

    const p2, 0x7f130ab7

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1d

    const v0, 0x10001

    invoke-direct {p0, p1, p2, v0}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

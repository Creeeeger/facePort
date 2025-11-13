.class final enum Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum$7;
.super Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const-string v0, "SYSTEM_SHOW_EMOJIS"

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum$7;-><init>(Ljava/lang/String;I)V

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

    sget-boolean p0, Lcom/android/systemui/BasicRune;->KEYBOARD_SUPPORT_EMOJI_SHORTCUT:Z

    if-eqz p0, :cond_0

    new-instance p0, Landroid/view/KeyboardShortcutInfo;

    const p2, 0x7f130abc

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x38

    const/high16 v0, 0x10000

    invoke-direct {p0, p1, p2, v0}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

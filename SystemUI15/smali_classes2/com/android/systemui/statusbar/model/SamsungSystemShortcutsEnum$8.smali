.class final enum Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum$8;
.super Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const-string v0, "SYSTEM_SHOW_KANJI_INPUT"

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/model/SamsungSystemShortcutsEnum$8;-><init>(Ljava/lang/String;I)V

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

    if-eqz p0, :cond_1

    iget-object p0, p2, Lcom/android/systemui/statusbar/model/KshDataUtils;->mContext:Landroid/content/Context;

    const-string p2, "input_method"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p2, "ko"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Landroid/view/KeyboardShortcutInfo;

    const p2, 0x7f130abd

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x37

    const/high16 v0, 0x10000

    invoke-direct {p0, p1, p2, v0}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/samsung/android/settings/accessibility/recommend/recommendcard/BixbyTextCallRecommendCard;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;


# virtual methods
.method public final getActionButtonInfo(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;
    .locals 0

    new-instance p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/BixbyTextCallRecommendCard$1;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/BixbyTextCallRecommendCard$1;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final getCardContent(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->isAtLeastOneUI_6_1()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f141e43

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f141e26

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getSupportProfileType()I
    .locals 0

    const/16 p0, 0x19

    return p0
.end method

.method public final isAvailable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportBixbyClient()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "audio"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->semIsScreenCallAvailable()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

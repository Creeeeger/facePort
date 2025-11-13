.class public final Lcom/samsung/android/settings/accessibility/recommend/recommendcard/CallBackgroundRecommendCard;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;


# virtual methods
.method public final getActionButtonInfo(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;
    .locals 0

    new-instance p0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/CallBackgroundRecommendCard$1;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/CallBackgroundRecommendCard$1;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final getCardContent(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const p0, 0x7f141e2c

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getSupportProfileType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final isAvailable(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.class public final Lcom/samsung/android/settings/accessibility/recommend/recommendcard/MagnifierRecommendCard;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;


# virtual methods
.method public final getCardContent(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const p0, 0x7f141e36

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

    const-string p0, "com.sec.android.app.magnifier"

    invoke-static {p1, p0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

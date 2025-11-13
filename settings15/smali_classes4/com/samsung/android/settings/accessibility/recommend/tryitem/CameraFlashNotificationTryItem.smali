.class public final Lcom/samsung/android/settings/accessibility/recommend/tryitem/CameraFlashNotificationTryItem;
.super Lcom/samsung/android/settings/accessibility/recommend/tryitem/FlashNotificationsTryItem;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getFunctionName()Ljava/lang/String;
    .locals 0

    const-string p0, "CameraFlashNoti"

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;->mContext:Landroid/content/Context;

    const v0, 0x7f140fc0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final isTurnedOnState()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/accessibility/FlashNotificationsUtil;->getFlashNotificationsState(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

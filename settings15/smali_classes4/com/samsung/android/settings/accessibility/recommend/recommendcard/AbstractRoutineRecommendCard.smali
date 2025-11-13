.class public abstract Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;


# virtual methods
.method public final getActionButtonInfo(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard$1;-><init>(Lcom/samsung/android/settings/accessibility/recommend/recommendcard/AbstractRoutineRecommendCard;Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract getButtonLoggingValue()Ljava/lang/String;
.end method

.method public final isAvailable(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "com.samsung.android.app.routines"

    invoke-static {p1, p0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

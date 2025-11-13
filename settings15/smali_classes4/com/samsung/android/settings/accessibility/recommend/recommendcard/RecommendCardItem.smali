.class public interface abstract Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public getActionButtonInfo(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getCardContent(Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public abstract getSupportProfileType()I
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

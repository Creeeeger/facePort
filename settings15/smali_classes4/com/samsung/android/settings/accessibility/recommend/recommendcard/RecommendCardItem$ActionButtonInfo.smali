.class public interface abstract Lcom/samsung/android/settings/accessibility/recommend/recommendcard/RecommendCardItem$ActionButtonInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public getButtonContentDescription(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getButtonLoggingValue()Ljava/lang/String;
.end method

.method public getButtonText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    const p0, 0x7f141e2a

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public abstract onButtonClicked()V
.end method

.class public abstract Lcom/samsung/android/settings/accessibility/bixby/BixbyActionFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static findTarget(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getPath : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BixbyActionFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionData;->getTargetMenu(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/BaseColorAction;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/BaseColorAction;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportColorAdjustment(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;-><init>()V

    :goto_0
    move-object p1, p0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;-><init>()V

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

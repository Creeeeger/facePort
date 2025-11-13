.class public final Lcom/samsung/android/settings/accessibility/bixby/action/DummyAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final doGetSupportFeature(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->doGetSupportFeature(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "result"

    const-string p2, "false"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

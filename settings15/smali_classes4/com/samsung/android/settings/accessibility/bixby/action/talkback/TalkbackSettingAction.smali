.class public final Lcom/samsung/android/settings/accessibility/bixby/action/talkback/TalkbackSettingAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getPunchoutIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    sget-object p1, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SAMSUNG_TALKBACK_SETTING_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

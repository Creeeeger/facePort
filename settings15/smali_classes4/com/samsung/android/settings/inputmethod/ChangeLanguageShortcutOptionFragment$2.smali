.class public final Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment$2;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final resetSettings(Landroid/content/Context;)V
    .locals 1

    sget-object p0, Lcom/samsung/android/settings/inputmethod/ChangeLanguageShortcutOptionFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "resetSettings called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "enable_language_change_combination_key"

    const/4 v0, 0x7

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

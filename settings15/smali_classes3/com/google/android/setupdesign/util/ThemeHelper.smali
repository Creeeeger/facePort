.class public abstract Lcom/google/android/setupdesign/util/ThemeHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final LOG:Lcom/google/android/setupcompat/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    const-string v1, "ThemeHelper"

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    return-void
.end method

.method public static colorIntToHex(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const p1, 0xffffff

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "#%06X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shouldApplyDynamicColor(Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    const-string v1, "isDynamicColorEnabled"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v3, p0, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    sput-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "PartnerConfigHelper"

    const-string v1, "SetupWizard dynamic color supporting status unknown; return as false."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyDynamicColorBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_1
    return v2
.end method

.method public static trySetDynamicColor(Landroid/content/Context;)V
    .locals 9

    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->shouldApplyDynamicColor(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Lcom/google/android/setupdesign/util/ThemeHelper;->LOG:Lcom/google/android/setupcompat/util/Logger;

    if-nez v0, :cond_0

    const-string p0, "SetupWizard does not support the dynamic color or supporting status unknown."

    invoke-virtual {v1, p0}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->lookupActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v3

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isSetupWizardDayNightEnabled(Landroid/content/Context;)Z

    move-result v4

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFullDynamicColorBundle:Landroid/os/Bundle;

    const-string v6, "isFullDynamicColorEnabled"

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {p0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    sput-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFullDynamicColorBundle:Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    const-string v6, "PartnerConfigHelper"

    const-string v7, "SetupWizard full dynamic color supporting status unknown; return as false."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFullDynamicColorBundle:Landroid/os/Bundle;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->applyFullDynamicColorBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_1
    if-eqz v3, :cond_5

    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastU()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    const v2, 0x7f150445

    goto :goto_5

    :cond_4
    const v2, 0x7f150446

    goto :goto_5

    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    const v2, 0x7f150453

    goto :goto_3

    :cond_6
    const v2, 0x7f150454

    :goto_3
    if-eqz v4, :cond_7

    const-string v3, "SudFullDynamicColorTheme_DayNight"

    goto :goto_4

    :cond_7
    const-string v3, "SudFullDynamicColorTheme_Light"

    :goto_4
    const-string v4, "Return "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/util/Logger;->atInfo(Ljava/lang/String;)V

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Gets the dynamic accentColor: [Light] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f060a82

    invoke-static {p0, v4}, Lcom/google/android/setupdesign/util/ThemeHelper;->colorIntToHex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x106003f

    invoke-static {p0, v5}, Lcom/google/android/setupdesign/util/ThemeHelper;->colorIntToHex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", [Dark] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f060a81

    invoke-static {p0, v5}, Lcom/google/android/setupdesign/util/ThemeHelper;->colorIntToHex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x106003a

    invoke-static {p0, v4}, Lcom/google/android/setupdesign/util/ThemeHelper;->colorIntToHex(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "SetupLibrary"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/google/android/setupcompat/util/Logger;->prefix:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    :cond_8
    :goto_6
    if-eqz v2, :cond_9

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTheme(I)V

    return-void

    :cond_9
    const-string p0, "Error occurred on getting dynamic color theme."

    invoke-virtual {v1, p0}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

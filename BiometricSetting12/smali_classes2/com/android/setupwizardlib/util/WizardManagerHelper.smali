.class public Lcom/android/setupwizardlib/util/WizardManagerHelper;
.super Ljava/lang/Object;
.source "WizardManagerHelper.java"


# static fields
.field private static final ACTION_NEXT:Ljava/lang/String; = "com.android.wizard.NEXT"

.field static final EXTRA_ACTION_ID:Ljava/lang/String; = "actionId"

.field static final EXTRA_IS_DEFERRED_SETUP:Ljava/lang/String; = "deferredSetup"

.field static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field static final EXTRA_IS_PRE_DEFERRED_SETUP:Ljava/lang/String; = "preDeferredSetup"

.field public static final EXTRA_IS_SETUP_FLOW:Ljava/lang/String; = "isSetupFlow"

.field private static final EXTRA_RESULT_CODE:Ljava/lang/String; = "com.android.setupwizard.ResultCode"

.field static final EXTRA_SCRIPT_URI:Ljava/lang/String; = "scriptUri"

.field public static final EXTRA_THEME:Ljava/lang/String; = "theme"

.field public static final EXTRA_USE_IMMERSIVE_MODE:Ljava/lang/String; = "useImmersiveMode"

.field static final EXTRA_WIZARD_BUNDLE:Ljava/lang/String; = "wizardBundle"

.field public static final SETTINGS_GLOBAL_DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"

.field public static final SETTINGS_SECURE_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final THEME_GLIF:Ljava/lang/String; = "glif"

.field public static final THEME_GLIF_LIGHT:Ljava/lang/String; = "glif_light"

.field public static final THEME_GLIF_V2:Ljava/lang/String; = "glif_v2"

.field public static final THEME_GLIF_V2_LIGHT:Ljava/lang/String; = "glif_v2_light"

.field public static final THEME_GLIF_V3:Ljava/lang/String; = "glif_v3"

.field public static final THEME_GLIF_V3_LIGHT:Ljava/lang/String; = "glif_v3_light"

.field public static final THEME_HOLO:Ljava/lang/String; = "holo"

.field public static final THEME_HOLO_LIGHT:Ljava/lang/String; = "holo_light"

.field public static final THEME_MATERIAL:Ljava/lang/String; = "material"

.field public static final THEME_MATERIAL_LIGHT:Ljava/lang/String; = "material_light"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTheme(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/android/setupwizardlib/util/ThemeResolver;->getDefault()Lcom/android/setupwizardlib/util/ThemeResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/util/ThemeResolver;->applyTheme(Landroid/app/Activity;)V

    return-void
.end method

.method public static copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "wizardBundle"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "firstRun"

    const-string v1, "deferredSetup"

    const-string v2, "preDeferredSetup"

    const-string v3, "isSetupFlow"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "theme"

    const-string v1, "scriptUri"

    const-string v2, "actionId"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getNextIntent(Landroid/content/Intent;ILandroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.wizard.NEXT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const-string v1, "com.android.setupwizard.ResultCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string v1, "theme"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getThemeRes(Landroid/content/Intent;I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    invoke-static {}, Lcom/android/setupwizardlib/util/ThemeResolver;->getDefault()Lcom/android/setupwizardlib/util/ThemeResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;-><init>(Lcom/android/setupwizardlib/util/ThemeResolver;)V

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->setDefaultTheme(I)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->setUseDayNight(Z)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->build()Lcom/android/setupwizardlib/util/ThemeResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/util/ThemeResolver;->resolve(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getThemeRes(Landroid/content/Intent;ILjava/lang/String;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    invoke-static {}, Lcom/android/setupwizardlib/util/ThemeResolver;->getDefault()Lcom/android/setupwizardlib/util/ThemeResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;-><init>(Lcom/android/setupwizardlib/util/ThemeResolver;)V

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->setDefaultTheme(I)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->setUseDayNight(Z)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->setOldestSupportedTheme(Ljava/lang/String;)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->build()Lcom/android/setupwizardlib/util/ThemeResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/util/ThemeResolver;->resolve(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getThemeRes(Ljava/lang/String;I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    invoke-static {}, Lcom/android/setupwizardlib/util/ThemeResolver;->getDefault()Lcom/android/setupwizardlib/util/ThemeResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;-><init>(Lcom/android/setupwizardlib/util/ThemeResolver;)V

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->setDefaultTheme(I)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->setUseDayNight(Z)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->build()Lcom/android/setupwizardlib/util/ThemeResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/util/ThemeResolver;->resolve(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getThemeRes(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    invoke-static {}, Lcom/android/setupwizardlib/util/ThemeResolver;->getDefault()Lcom/android/setupwizardlib/util/ThemeResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;-><init>(Lcom/android/setupwizardlib/util/ThemeResolver;)V

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->setDefaultTheme(I)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->setUseDayNight(Z)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->setOldestSupportedTheme(Ljava/lang/String;)Lcom/android/setupwizardlib/util/ThemeResolver$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/util/ThemeResolver$Builder;->build()Lcom/android/setupwizardlib/util/ThemeResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/util/ThemeResolver;->resolve(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isDeferredSetupWizard(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "deferredSetup"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "device_provisioned"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x11

    if-lt v0, v4, :cond_1

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method public static isLightTheme(Landroid/content/Intent;Z)Z
    .locals 2

    const-string v0, "theme"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->isLightTheme(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isLightTheme(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "holo_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "material_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "glif_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "glif_v2_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "glif_v3_light"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "holo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "material"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "glif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "glif_v2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "glif_v3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isPreDeferredSetupWizard(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "preDeferredSetup"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v0
.end method

.method public static isSetupWizardIntent(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "firstRun"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUserSetupComplete(Landroid/content/Context;)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "user_setup_complete"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_provisioned"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

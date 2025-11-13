.class public final Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;
.implements Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$OnItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultKey()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mCurrentTheme:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "com.samsung.Dream_A11y_lowvision"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "com.samsung.High_contrast_theme_I"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mCurrentTheme:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mCurrentTheme:Ljava/lang/String;

    const-string v2, "com.samsung.High_contrast_theme_II"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mCurrentTheme:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v2

    :cond_2
    :goto_1
    return-object v1
.end method

.method public onItemSelected(Ljava/lang/String;)V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.themestore"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    const p1, 0x7f141064

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140d68

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140d5f

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iput-object p1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance p1, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$4;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;)V

    const p0, 0x7f141854

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 p0, 0x1040000

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_5

    :cond_1
    const-string v0, "com.samsung.Dream_A11y_lowvision"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "HighContrastThemePreferenceFragment"

    if-nez v0, :cond_5

    const-string v0, "com.samsung.High_contrast_theme_I"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.samsung.High_contrast_theme_II"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "current_sec_active_themepackage"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mCurrentTheme:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    const-string v0, "Theme Service disconnect. Start reconnect"

    if-nez p1, :cond_3

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->getThemePlatformManager()Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    if-nez p1, :cond_3

    const/16 p1, 0x3e8

    if-ge v2, p1, :cond_3

    const-string/jumbo p1, "onPreferenceChange fall asleep for "

    invoke-static {v2, p1, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0xa

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v3, "Thread sleep interrupted."

    invoke-static {v1, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    if-eqz p0, :cond_4

    :try_start_1
    check-cast p0, Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;

    invoke-virtual {p0}, Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;->applyThemePackage()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    const-string p1, "RemoteException!"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    :goto_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v3, 0x14000020

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "themestore://LocalProductDetail?appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&from=accessibility&contentsType=THEMES&from=accessibility"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_4

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "themestore://ProductDetail?appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&from=accessibility"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_4
    :try_start_2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    const-string p1, "ActivityNotFoundException!"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_5
    return-void
.end method

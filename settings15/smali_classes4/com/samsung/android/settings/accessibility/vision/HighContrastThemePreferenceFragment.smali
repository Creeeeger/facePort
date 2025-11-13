.class public Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final applyThemeObserver:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$6;

.field public final mConnection:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$5;

.field public mContext:Landroid/content/Context;

.field public mCurrentTheme:Ljava/lang/String;

.field public mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    new-instance v0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mConnection:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$5;

    new-instance v0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$6;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->applyThemeObserver:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$6;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "HighContrastThemePreferenceFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xbc2

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170019

    return p0
.end method

.method public final getThemePlatformManager()Lcom/samsung/android/thememanager/IThemeManager;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    const-string v1, "HighContrastThemePreferenceFragment"

    if-nez v0, :cond_1

    const-string v0, "bindThemePlatformService()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.themecenter"

    const-string v3, "com.samsung.android.thememanager.ThemeManagerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mConnection:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$5;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "theme manager service found!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "theme manager service not found!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mConnection:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$5;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v2, "Exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    if-nez v2, :cond_2

    const/16 v2, 0x64

    if-ge v0, v2, :cond_2

    const-wide/16 v2, 0xa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    const-string v3, "Thread sleep interrupted."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const-string v2, "fall asleep for "

    invoke-static {v0, v2, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    return-object p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string/jumbo p1, "single_choice_pref"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    if-eqz p1, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;)V

    new-instance v7, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;

    const v0, 0x7f140383

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f080309

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x1

    const-string/jumbo v1, "none"

    move-object v0, v7

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$OnItemSelectedListener;Z)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;

    const v0, 0x7f1409ae

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f08030a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const-string v1, "com.samsung.High_contrast_theme_I"

    move-object v0, v7

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$OnItemSelectedListener;Z)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;

    const v0, 0x7f140980

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f080308

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const-string v1, "com.samsung.High_contrast_theme_II"

    move-object v0, v7

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$OnItemSelectedListener;Z)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;)V

    iget-object v1, p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;->gridAdapter:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;

    iput-object p2, v1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->list:Ljava/util/List;

    iput-object v0, v1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->defaultKey:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "current_sec_active_themepackage"

    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mCurrentTheme:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p2, "com.samsung.Dream_A11y_lowvision"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "high_contrast_category"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string p1, "high_contrast_tip"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public final onPause()V
    .locals 6

    const-string v0, "HighContrastThemePreferenceFragment"

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "onPause : unregisterStatusListener applyThemeObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->applyThemeObserver:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$6;

    check-cast v1, Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;

    iget-object v3, v1, Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v3}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v5, "com.samsung.android.thememanager.IThemeManager"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object v1, v1, Lcom/samsung/android/thememanager/IThemeManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "onPause : unregisterStatusListener exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mConnection:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$5;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    if-eqz v1, :cond_1

    :try_start_3
    const-string/jumbo v1, "onPause : unbind service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mConnection:Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$5;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Exception during unbindService!"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;->mThemePlatformManager:Lcom/samsung/android/thememanager/IThemeManager;

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastThemePreferenceFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

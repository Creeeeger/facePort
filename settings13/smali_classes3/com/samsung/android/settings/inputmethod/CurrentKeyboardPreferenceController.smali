.class public Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "CurrentKeyboardPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

.field private mPreference:Landroidx/preference/SecPreference;

.field private mSettingsObserver:Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;

.field private um:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$mupdateCurrentImeName(Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->updateCurrentImeName()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    const-string p2, "user"

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->um:Landroid/os/UserManager;

    .line 44
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 45
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance p2, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v0, p1}, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;-><init>(Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;

    return-void
.end method

.method private updateCurrentImeName()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    if-eqz p1, :cond_0

    .line 54
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "current_input_method"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "current_input_method"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    .line 79
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    .line 81
    invoke-virtual {p1, v0, p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerFromSystem(ZI)V

    return v0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;->start()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->mSettingsObserver:Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController$SettingsObserver;->stop()V

    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->updateCurrentImeName()V

    .line 69
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/CurrentKeyboardPreferenceController;->mPreference:Landroidx/preference/SecPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

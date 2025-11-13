.class public Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ShowAodPreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field static final KEY:Ljava/lang/String; = "where_to_show"


# instance fields
.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mParentScreen:Landroidx/preference/PreferenceScreen;

.field mPreference:Landroidx/preference/SwitchPreferenceCompat;


# direct methods
.method static bridge synthetic -$$Nest$msetEnabledWhereToShow(Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->setEnabledWhereToShow(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;)V
    .locals 2

    const-string v0, "where_to_show"

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController$1;-><init>(Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    .line 82
    iput-object p3, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

    .line 84
    new-instance p3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private registerContentObserver()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setEnabledWhereToShow(Z)V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mPreference:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "aod_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 229
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 233
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "lock_screen_show_notifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 118
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p2

    if-eqz p2, :cond_1

    xor-int/lit8 p2, p1, 0x1

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_notifications_option"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->setEnabledWhereToShow(Z)V

    :goto_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 137
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mPreference:Landroidx/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mParentScreen:Landroidx/preference/PreferenceScreen;

    .line 149
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lockscreen_notifications_option"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    .line 151
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 100
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 102
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 189
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lockscreen_notifications_option"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mPreference:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->mPreference:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/ShowAodPreferenceController;->registerContentObserver()V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 199
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    xor-int/lit8 v0, p1, 0x1

    const-string v1, "lockscreen_notifications_option"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 p0, 0x114c

    const/16 v0, 0x116b

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 201
    :goto_0
    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic updateConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;->updateConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

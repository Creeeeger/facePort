.class public Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NotiCardOpacityPreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field static final KEY:Ljava/lang/String; = "noti_card_seekbar"


# instance fields
.field mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

.field private final mLockNotiCardOpacity:Landroid/database/ContentObserver;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mParentScreen:Landroidx/preference/PreferenceScreen;

.field mPreference:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;


# direct methods
.method static bridge synthetic -$$Nest$mupdateNotiCardOpacity(Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->updateNotiCardOpacity()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;)V
    .locals 2

    const-string v0, "noti_card_seekbar"

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController$1;-><init>(Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mLockNotiCardOpacity:Landroid/database/ContentObserver;

    .line 41
    iput-object p3, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

    .line 42
    new-instance p3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private registerContentObserver()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_noticard_opacity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mLockNotiCardOpacity:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private updateNotiCardOpacity()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$integer;->config_default_lock_noticard_opacity:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "lock_noticard_opacity"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 118
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;->notifyChange(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private updateVisibility(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mParentScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mParentScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "notification_details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "noti_inverse_text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "lock_screen_show_notifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 58
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->updateVisibility(I)V

    goto :goto_1

    .line 67
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mPreference:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    if-eqz p0, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->updateSeekBarDescVisible()V

    goto :goto_1

    .line 61
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 62
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mPreference:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    if-eqz p0, :cond_3

    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ff6183b -> :sswitch_2
        0x47b87a85 -> :sswitch_1
        0x68ad06ee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mPreference:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    .line 100
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mParentScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 50
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

    .line 51
    invoke-interface {p0}, Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;->isNeedRedaction()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
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

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

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

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

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

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mPreference:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mLockNotiCardOpacity:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->mPreference:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/NotiCardOpacityPreferenceController;->registerContentObserver()V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic updateConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;->updateConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

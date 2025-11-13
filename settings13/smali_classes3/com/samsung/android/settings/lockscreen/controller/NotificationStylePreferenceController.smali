.class public Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;
.super Lcom/android/settings/core/SecSingleChoicePreferenceController;
.source "NotificationStylePreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "lockscreen_minimizing_notification"

.field private static final NOTIFICATION_DETAILS:Ljava/lang/String; = "1"

.field static final NOTIFICATION_DETAILS_KEY:Ljava/lang/String; = "notification_details"

.field private static final NOTIFICATION_ICONS_ONLY:Ljava/lang/String; = "0"

.field static final NOTIFICATION_ICONS_ONLY_KEY:Ljava/lang/String; = "notification_icons_only"


# instance fields
.field private mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

.field private mDetailStyleOptionEventLogging:Ljava/lang/String;

.field private mIconStyleOptionEventLogging:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;)V
    .locals 1

    const-string v0, "notification_icons_only"

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

    .line 50
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SecSingleChoicePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "lock_screen_show_notifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 146
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "notification_icons_only"

    const-string v1, "grayout"

    invoke-static {p2, v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 150
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    if-eqz p2, :cond_2

    .line 151
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 152
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    const-string v0, "0"

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setEntryEnabled(Ljava/lang/String;Z)V

    .line 153
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    const-string p2, "1"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setEntryEnabled(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    const/4 p0, 0x0

    .line 136
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setDividerEnabled(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public getEntries()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_lockscreen_view_style_icon_option:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_lockscreen_view_style_card_option:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getEntryValues()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "0"

    .line 109
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "1"

    .line 110
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getImageEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    sget v0, Lcom/android/settings/R$drawable;->sec_lock_setting_img_noti_icon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget v0, Lcom/android/settings/R$drawable;->sec_lock_setting_img_noti_details:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

.method public getSelectedValue()Ljava/lang/String;
    .locals 2

    .line 91
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lockscreen_minimizing_notification"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-string p0, "0"

    goto :goto_1

    :cond_1
    const-string p0, "1"

    :goto_1
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

.method public getSubEntries()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

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

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

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

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setSelectedValue(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "0"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "lockscreen_minimizing_notification"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "notification_details"

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;->notifyChange(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;->isNeedRedaction()Z

    move-result v0

    :cond_1
    const/16 v0, 0x114c

    .line 81
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1170

    .line 84
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 85
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mIconStyleOptionEventLogging:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mDetailStyleOptionEventLogging:Ljava/lang/String;

    .line 81
    :goto_0
    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic updateConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;->updateConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mIconStyleOptionEventLogging:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_lockscreen_view_style_icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mIconStyleOptionEventLogging:Ljava/lang/String;

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mDetailStyleOptionEventLogging:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 66
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_lockscreen_view_style_card_option:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotificationStylePreferenceController;->mDetailStyleOptionEventLogging:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

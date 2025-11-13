.class public final Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->-$$Nest$fgetmHost(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;)Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->-$$Nest$fgetmHost(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;)Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    move-result-object p1

    iget-object v0, p1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorHijriCalendar:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    iget-object p1, p1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorLunarCalendar:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorHijriCalendar:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v0, p1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorLunarCalendar:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object p1, p1, Lcom/samsung/android/settings/lockscreen/LockScreenSettings;->mEditorCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->-$$Nest$fgetmAlwaysOnScreen(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->-$$Nest$fgetmAlwaysOnScreen(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->-$$Nest$mupdateSummary(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;)V

    :cond_2
    return-void
.end method

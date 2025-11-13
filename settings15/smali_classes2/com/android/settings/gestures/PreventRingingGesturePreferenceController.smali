.class public final Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final KEY_MUTE:Ljava/lang/String; = "prevent_ringing_option_mute"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_VIBRATE:Ljava/lang/String; = "prevent_ringing_option_vibrate"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mContext:Landroid/content/Context;

.field mMutePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

.field mVibratePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "gesture_prevent_ringing_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    new-instance v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    const-string p1, "prevent_ringing_option_vibrate"

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const p1, 0x7f141cd9

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    iput-object p0, v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    new-instance p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "prevent_ringing_option_mute"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v0, 0x7f141cd6

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    iput-object p0, p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;-><init>(Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    :cond_1
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "gesture_prevent_ringing_category"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110288

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public final onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const-string v1, "prevent_ringing_option_mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "prevent_ringing_option_vibrate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_hush_gesture"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method public final onResume()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->VOLUME_HUSH_GESTURE:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mSettingObserver:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 6

    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "volume_hush_gesture"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v4, :cond_2

    iget-boolean v5, v4, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eq v5, v2, :cond_2

    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v2, :cond_3

    iget-boolean v4, v2, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eq v4, v3, :cond_3

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mVibratePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->mMutePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2
    return-void
.end method

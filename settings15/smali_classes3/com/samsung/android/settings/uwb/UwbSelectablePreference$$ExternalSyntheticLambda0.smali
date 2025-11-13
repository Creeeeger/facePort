.class public final synthetic Lcom/samsung/android/settings/uwb/UwbSelectablePreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

.field public final synthetic f$1:Landroidx/preference/PreferenceScreen;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/uwb/UwbSelectablePreference;Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    iput-object p2, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/uwb/UwbSelectablePreference;

    iget-object v0, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mClickEventHandler:Landroid/os/Handler;

    iget-object v1, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mEnableDisableEventRunnable:Lcom/samsung/android/settings/uwb/UwbSelectablePreference$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mIsUwbEnabled:Z

    iget p2, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mClickCount:I

    iget-object v2, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceScreen;

    const/4 v3, 0x1

    const/4 v4, 0x5

    const-wide/16 v5, 0xd2

    const/4 v7, 0x0

    if-ne p2, v4, :cond_1

    iget-object p2, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mClick5OverEventRunnable:Lcom/samsung/android/settings/uwb/UwbSelectablePreference$1;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v1, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mIsUwbEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mContext:Landroid/content/Context;

    const-string v4, "UWB Labs enabled!"

    invoke-static {v1, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v1, Landroidx/preference/SecSwitchPreferenceScreen;

    iget-object v4, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroidx/preference/SecSwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbSelectablePreference$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const p0, 0x7f14319e

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    const/16 p0, 0x2ee

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOrder(I)V

    const-string p0, "com.samsung.android.settings.uwb.labs.UwbLabsMainFragment"

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mSelectablePreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v2, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string/jumbo p0, "uwb.labs.enable"

    const-string/jumbo v4, "true"

    invoke-static {p0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mSelectablePreference:Landroidx/preference/TwoStatePreference;

    move v7, v3

    :cond_0
    invoke-virtual {v0, p2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget p0, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mClickCount:I

    add-int/2addr p0, v3

    iput p0, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mClickCount:I

    :goto_0
    if-eqz v7, :cond_2

    iput-boolean v3, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mLabsEnabled:Z

    iget-object p0, p1, Lcom/samsung/android/settings/uwb/UwbSelectablePreference;->mMainController:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->updateView()V

    :cond_2
    return v7
.end method

.class public Lcom/samsung/android/settings/applications/defaultapps/AssistVibrationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AssistVibrationPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/settings/applications/defaultapps/AssistVibrationPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "vibration_feedback"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/settings/applications/defaultapps/AssistVibrationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/settings/applications/defaultapps/AssistVibrationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "default_assist_vibration_feedback"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 35
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/applications/defaultapps/AssistVibrationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_assist_vibration_feedback"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 40
    :cond_1
    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

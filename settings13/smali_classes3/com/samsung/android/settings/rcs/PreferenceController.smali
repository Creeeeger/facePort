.class public Lcom/samsung/android/settings/rcs/PreferenceController;
.super Ljava/lang/Object;
.source "PreferenceController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PreferenceController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/SecPreferenceScreen;

.field private mSettingsTreeParent:Landroidx/preference/PreferenceScreen;

.field private mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSettingsTreeParent:Landroidx/preference/PreferenceScreen;

    .line 22
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSettingsTreeParent:Landroidx/preference/PreferenceScreen;

    .line 27
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    return-void
.end method

.method public displaySwitchPreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSettingsTreeParent:Landroidx/preference/PreferenceScreen;

    .line 32
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-void
.end method

.method public getPreference()Landroidx/preference/SecPreferenceScreen;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    return-object p0
.end method

.method public getSwitchPreference()Landroidx/preference/SecSwitchPreferenceScreen;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    return-object p0
.end method

.method public refreshSummary(Landroidx/preference/Preference;Z)V
    .locals 1

    .line 36
    instance-of p1, p1, Landroidx/preference/SecPreferenceScreen;

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->rcs_new_description:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 38
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz p2, :cond_0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public refreshSwitchSummary(Landroidx/preference/Preference;ZZ)V
    .locals 2

    .line 46
    instance-of p1, p1, Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_2

    .line 47
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, p3}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 48
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->rcs_new_description:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    if-eqz p3, :cond_0

    .line 50
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    sget p3, Lcom/android/settings/R$string;->switch_on_text:I

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mContext:Landroid/content/Context;

    const-string p3, "com.samsung.android.messaging"

    invoke-static {p3, p1}, Lcom/samsung/android/settings/rcs/RcsUtils;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 55
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    sget v1, Lcom/android/settings/R$string;->rcs_defaultsms_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 56
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, p3}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1
    if-eqz p2, :cond_2

    .line 60
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 62
    iget-object p1, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, p3}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    return-void
.end method

.method public removePreference(Landroidx/preference/Preference;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSettingsTreeParent:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 75
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/rcs/PreferenceController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePreference: preference("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "), parent("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSettingsTreeParent:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/rcs/PreferenceController;->mSwithchPreference:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.class public Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenAutomaticRuleHeaderPreferenceController.java"


# instance fields
.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mId:Ljava/lang/String;

.field private mRule:Landroid/app/AutomaticZenRule;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRule(Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;)Landroid/app/AutomaticZenRule;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    return-object p0
.end method

.method static synthetic access$000(Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "pref_app_header"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    if-nez v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v0, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController$1;-><init>(Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

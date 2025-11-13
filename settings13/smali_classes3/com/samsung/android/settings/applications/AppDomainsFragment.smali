.class public Lcom/samsung/android/settings/applications/AppDomainsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppDomainsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

.field private mPackageName:Ljava/lang/String;

.field private mUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private generatePreference(Ljava/lang/String;)V
    .locals 2

    .line 89
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 92
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 93
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private generateSwitchPreference(Ljava/lang/String;)V
    .locals 4

    .line 97
    new-instance v0, Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/SecSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getLinksList(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 106
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private setDomainVerificationUserSelection(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/util/UUID;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/verify/domain/DomainVerificationManager;",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 114
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/pm/verify/domain/DomainVerificationManager;->setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;Z)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addSelectedItems : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppDomainsFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf21

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget p1, Lcom/android/settings/R$xml;->placeholder_prefs:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "packageName"

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mPackageName:Ljava/lang/String;

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/verify/domain/DomainVerificationManager;

    iput-object p1, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getLinksList(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mUrls:Ljava/util/List;

    .line 67
    iget-object p1, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    iget-object v0, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getEditableLinksList(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mUrls:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/applications/AppDomainsFragment;->generatePreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/applications/AppDomainsFragment;->generateSwitchPreference(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 122
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 123
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 125
    iget-object p2, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mPackageName:Ljava/lang/String;

    .line 126
    invoke-static {p2, v1}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getDomainVerificationUserState(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/applications/AppDomainsFragment;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-virtual {p2}, Landroid/content/pm/verify/domain/DomainVerificationUserState;->getIdentifier()Ljava/util/UUID;

    move-result-object p2

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/samsung/android/settings/applications/AppDomainsFragment;->setDomainVerificationUserSelection(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/util/UUID;Ljava/util/Set;Z)V

    const/4 p0, 0x1

    return p0
.end method

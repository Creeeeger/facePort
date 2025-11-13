.class public final Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field public static final MY_USER_ID:I

.field static final PREF_KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field static final PREF_KEY_TRUST_AGENT:Ljava/lang/String; = "trust_agent"


# instance fields
.field public final mHost:Lcom/android/settings/SettingsPreferenceFragment;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mSecurityCategory:Landroidx/preference/PreferenceCategory;

.field public mTrustAgentClickIntent:Landroid/content/Intent;

.field public final mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

.field final mTrustAgentsKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProviderImpl;

    move-result-object v0

    iput-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/security/SecurityFeatureProviderImpl;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/settings/security/SecurityFeatureProviderImpl;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentsKeyList:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "security_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->updateTrustAgents()V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "trust_agent"

    return-object p0
.end method

.method public final handleActivityResult(II)Z
    .locals 1

    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentsKeyList:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v2, 0x7e

    iput v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    const-string v2, "page_transition_type"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_1
    return v3
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050057

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->updateTrustAgents()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final updateTrustAgents()V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "trust_agent"

    if-ge v4, v1, :cond_3

    invoke-static {v4, v5}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentsKeyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->MY_USER_ID:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v3

    :goto_2
    if-ge v6, v4, :cond_6

    new-instance v7, Lcom/android/settingslib/RestrictedPreference;

    iget-object v8, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v8}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;

    iget-object v9, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mTrustAgentsKeyList:Ljava/util/List;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v9, v8, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, v8, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, v8, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v9, v8, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v7, v9}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v9, v7, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean v9, v9, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v9, :cond_4

    iget-object v8, v8, Lcom/android/settings/security/trustagent/TrustAgentManager$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    const-string v9, " "

    invoke-static {v8, v9}, Landroid/text/TextUtils;->firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, v7, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iput-boolean v2, v8, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledSummary:Z

    goto :goto_3

    :cond_4
    if-nez v9, :cond_5

    if-nez v1, :cond_5

    invoke-virtual {v7, v3}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const v8, 0x7f140d0b

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/android/settings/security/trustagent/TrustAgentListPreferenceController;->mSecurityCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v8, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

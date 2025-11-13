.class public Lcom/android/settings/network/NetworkProviderSimListController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;
.implements Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkProviderSimListController"


# instance fields
.field private final mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

.field private final mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settingslib/RestrictedPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSubInfoEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$p0dSeuUjMRFStYp608-eNdAjv2E(Lcom/android/settings/network/NetworkProviderSimListController;Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;ZILandroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/network/NetworkProviderSimListController;->lambda$update$0(Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;ZILandroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mSubInfoEntityList:Ljava/util/List;

    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferences:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/settings/network/MobileNetworkRepository;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/MobileNetworkRepository;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    new-instance p2, Lcom/android/settings/network/DefaultSubscriptionReceiver;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/DefaultSubscriptionReceiver;-><init>(Landroid/content/Context;Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;)V

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

    return-void
.end method

.method private lambda$update$0(Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;ZILandroidx/preference/Preference;)Z
    .locals 1

    iget-boolean p4, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isEmbedded:Z

    if-nez p4, :cond_1

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    sget-object p4, Lcom/android/settings/network/SubscriptionUtil;->REGEX_DISPLAY_NAME_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionManager;->canDisablePhysicalSubscription()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "SubscriptionUtil"

    const-string p1, "Unable to toggle subscription due to invalid subscription ID."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/settings/network/SimOnboardingActivity;->onboardingService:Lcom/android/settings/network/SimOnboardingService;

    const-string p1, "context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/android/settings/network/SimOnboardingActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "sub_id"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/android/settings/network/telephony/MobileNetworkUtils;->EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

    iget-object p2, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-boolean p3, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isValidSubscription:Z

    const-string p4, "MobileNetworkUtils"

    if-nez p3, :cond_2

    const-string p0, "launchMobileNetworkSettings fail, subId is invalid."

    invoke-static {p4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "launchMobileNetworkSettings for SubscriptionInfoEntity subId: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "android.provider.extra.SUB_ID"

    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, p1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    const-class p0, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    iput p0, p1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object p3, p1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private update()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferences:Ljava/util/Map;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferences:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->getAvailablePhysicalSubscriptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-object v3, v2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/RestrictedPreference;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/settingslib/RestrictedPreference;

    iget-object v5, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_1
    iget-object v5, v2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/network/NetworkProviderSimListController;->getSummary(Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-boolean v6, v2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isEmbedded:Z

    if-eqz v6, :cond_2

    const v6, 0x7f080625

    goto :goto_1

    :cond_2
    const v6, 0x7f080624

    :goto_1
    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/settings/network/SubscriptionUtil;->isConvertedPsimSubscription(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    new-instance v5, Lcom/android/settings/network/NetworkProviderSimListController$$ExternalSyntheticLambda0;

    iget-boolean v6, v2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveSubscriptionId:Z

    invoke-direct {v5, p0, v2, v6, v3}, Lcom/android/settings/network/NetworkProviderSimListController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/NetworkProviderSimListController;Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;ZI)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_2
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferences:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_5
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->update()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->getAvailablePhysicalSubscriptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAvailablePhysicalSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mSubInfoEntityList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary(Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    iget-boolean v0, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isEmbedded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->getSubId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/network/SubscriptionUtil;->isConvertedPsimSubscription(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f142c05

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-boolean v0, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveSubscriptionId:Z

    if-eqz v0, :cond_9

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->getSubId()I

    move-result p1

    sget-object v0, Lcom/android/settings/network/SubscriptionUtil;->REGEX_DISPLAY_NAME_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v3

    if-ne p1, v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    if-ne p1, v4, :cond_3

    move v1, v2

    :cond_3
    const-string p1, ""

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    move-object p2, p1

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f140bfc

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140bfb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140bfd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f142c06

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f142c04

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-ne p2, p1, :cond_8

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p1

    :cond_9
    iget-boolean p1, p1, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isEmbedded:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    sget-object v0, Lcom/android/settings/network/SubscriptionUtil;->REGEX_DISPLAY_NAME_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->canDisablePhysicalSubscription()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f14181b

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f142c07

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic onActiveSubInfoChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAllMobileNetworkInfoChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAllUiccInfoChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onAvailableSubInfoChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mSubInfoEntityList:Ljava/util/List;

    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->update()V

    return-void
.end method

.method public bridge synthetic onCallStateChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onDataRoamingChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDefaultDataChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->update()V

    return-void
.end method

.method public onDefaultSmsChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->update()V

    return-void
.end method

.method public bridge synthetic onDefaultSubInfoChanged(I)V
    .locals 0

    return-void
.end method

.method public onDefaultVoiceChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->update()V

    return-void
.end method

.method public bridge synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {p1, p0}, Lcom/android/settings/network/MobileNetworkRepository;->removeRegister(Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;)V

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

    iget-object p1, p0, Lcom/android/settings/network/DefaultSubscriptionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/settings/network/MobileNetworkRepository;->addRegister(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;I)V

    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {p1}, Lcom/android/settings/network/MobileNetworkRepository;->updateEntity()V

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

    invoke-virtual {p0}, Lcom/android/settings/network/DefaultSubscriptionReceiver;->registerReceiver()V

    return-void
.end method

.method public bridge synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->update()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

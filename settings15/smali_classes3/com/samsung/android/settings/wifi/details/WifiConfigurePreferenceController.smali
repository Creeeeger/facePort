.class public abstract Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final UNDESIRED_CERTIFICATES:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mActiveSubscriptionInfos:Ljava/util/List;

.field public mCanChangeEapMethod:Z

.field public final mContext:Landroid/content/Context;

.field public final mDoNotProvideEapUserCertString:Ljava/lang/String;

.field public final mDoNotValidateEapServerString:Ljava/lang/String;

.field public mEapCaCertPref:Landroidx/preference/DropDownPreference;

.field public mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mEapDomainView:Landroid/widget/EditText;

.field public final mEapDomainViewWatcher:Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;

.field public mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mEapIdentityView:Landroid/widget/EditText;

.field public mEapMethodChangeListener:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;

.field public mEapMethodPref:Landroidx/preference/DropDownPreference;

.field public mEapOcspPref:Landroidx/preference/DropDownPreference;

.field public mEapSimPref:Landroidx/preference/DropDownPreference;

.field public mEapUserCertPref:Landroidx/preference/DropDownPreference;

.field public final mFragment:Landroidx/fragment/app/Fragment;

.field public mIsTrustOnFirstUseSupported:Z

.field public mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

.field public final mMode:I

.field public final mMultipleCertSetString:Ljava/lang/String;

.field public mPasswordErrorText:Landroid/widget/TextView;

.field public mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public mPasswordView:Landroid/widget/EditText;

.field public final mPasswordWatcher:Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;

.field public mPaswordTitleView:Landroid/widget/TextView;

.field public mTempPassword:Ljava/lang/String;

.field public final mTrustOnFirstUse:Ljava/lang/String;

.field public final mUnspecifiedCertString:Ljava/lang/String;

.field public final mUseSystemCertsString:Ljava/lang/String;

.field public mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field public final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public mWifiEntrySecurity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MacRandSecret"

    const-string v1, "MacRandSapSecret"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->UNDESIRED_CERTIFICATES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->getLogTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->getMode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mCanChangeEapMethod:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTempPassword:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordWatcher:Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainViewWatcher:Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$1;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const p2, 0x7f143688

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    const p2, 0x7f143524

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const p2, 0x7f14372b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    const p2, 0x7f143523

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const p2, 0x7f143719

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    const p2, 0x7f1435d8

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMultipleCertSetString:Ljava/lang/String;

    return-void
.end method

.method public static findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I
    .locals 4

    iget-object p0, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getAndroidKeystoreAliasLoader()Lcom/android/settings/utils/AndroidKeystoreAliasLoader;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance p0, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;-><init>(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public static isEnterpriseNetwork(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public abstract afterShowSecurityFields()V
.end method

.method public final clearErrorTextUnderEditText(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f06074a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x8

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f060b3f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p2}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public final disableViewsIfAppropriate$4()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiUtils;->isBlockedByEnterprise(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public abstract enableSubmitIfAppropriate()V
.end method

.method public fillPreviousPasswordIfNeeded()V
    .locals 0

    return-void
.end method

.method public final finishActivity$2()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getEapMethod$1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "AKA\'"

    return-object p0

    :pswitch_1
    const-string p0, "AKA"

    return-object p0

    :pswitch_2
    const-string p0, "SIM"

    return-object p0

    :pswitch_3
    const-string p0, "PWD"

    return-object p0

    :pswitch_4
    const-string p0, "TTLS"

    return-object p0

    :pswitch_5
    const-string p0, "TLS"

    return-object p0

    :cond_0
    :goto_0
    const-string p0, "PEAP"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method public abstract getMode()I
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract isUnchangedNeeded()Z
.end method

.method public final loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->getAndroidKeystoreAliasLoader()Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p5, :cond_1

    iget-object p4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p4, 0x6

    if-eqz p5, :cond_2

    iget-boolean p5, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mIsTrustOnFirstUseSupported:Z

    if-eqz p5, :cond_2

    iget p5, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    if-eq p5, p4, :cond_2

    iget-object p5, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string p5, "CACERT_"

    invoke-static {p2, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_3

    iget-object p2, v0, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->mCaCertAliases:Ljava/util/Collection;

    goto :goto_1

    :cond_3
    const-string p5, "USRPKEY_"

    invoke-static {p2, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_4

    iget-object p2, v0, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->mKeyCertAliases:Ljava/util/Collection;

    goto :goto_1

    :cond_4
    const-string p5, "android.security.legacykeystore"

    invoke-static {p5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p5

    invoke-static {p5}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object p5

    const/4 v0, 0x0

    if-eqz p5, :cond_5

    const/16 v2, 0x3f2

    :try_start_0
    invoke-interface {p5, p2, v2}, Landroid/security/legacykeystore/ILegacyKeystore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->TAG:Ljava/lang/String;

    const-string p5, "can\'t get the certificate list from android.security.legacykeystore"

    invoke-static {p2, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_6

    array-length p5, p2

    if-eqz p5, :cond_6

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p5, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {p5, v2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p2, p5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p5

    if-eqz p5, :cond_7

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p5, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p5, v0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p2, p5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    iget p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    if-eq p0, p4, :cond_8

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/CharSequence;

    const/4 p2, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/Preference;->setPersistent()V

    invoke-virtual {p1, p2}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iput-object p0, p1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-void
.end method

.method public final passwordCheck(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    const/4 v2, 0x1

    const v3, 0x7f141758

    const-string v4, "[0-9A-Fa-f]*"

    const/4 v5, 0x0

    if-ne v1, v2, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xd

    if-le v0, v2, :cond_3

    const/16 v4, 0x1a

    if-eqz v1, :cond_1

    if-gt v0, v4, :cond_1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPaswordTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->showErrorTextUnderEditText(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    goto :goto_5

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPaswordTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->clearErrorTextUnderEditText(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;)V

    goto :goto_5

    :cond_4
    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->isEnterpriseNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xc8

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x3f

    goto :goto_2

    :cond_6
    const/16 v0, 0x40

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_3
    if-ltz v1, :cond_8

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-gt v4, v0, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPaswordTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->showErrorTextUnderEditText(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;I)V

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPaswordTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->clearErrorTextUnderEditText(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;)V

    :goto_5
    return-void
.end method

.method public final refreshEapItems(I)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshEapItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    iget-object v1, v1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_16

    if-ltz p1, :cond_16

    array-length v3, v1

    if-lt p1, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    aget-object p1, v1, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v1, "PEAP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, ""

    const v4, 0x7f143721

    const/4 v5, 0x1

    if-nez v1, :cond_4

    const-string v1, "TTLS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "TLS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_2
    const-string v1, "PWD"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->isUnchangedNeeded()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setHint(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->isUnchangedNeeded()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setHint(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string/jumbo p1, "refreshEapItems load Ca Certificates"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v11, 0x1

    const-string v8, "CACERT_"

    const/4 v10, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_c

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummaryWithWarning(Landroidx/preference/DropDownPreference;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    goto :goto_2

    :cond_8
    array-length v1, p1

    if-ne v1, v5, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    aget-object v3, p1, v2

    invoke-static {v1, v3}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummaryWithWarning(Landroidx/preference/DropDownPreference;)V

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :cond_a
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v11, 0x1

    const-string v8, "CACERT_"

    const/4 v10, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setDomainVisible()V

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_11

    const-string/jumbo p1, "refreshEapItems load User Certificates"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v5, "USRPKEY_"

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_11

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_e

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    goto :goto_3

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_10

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    goto :goto_3

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    :cond_11
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_12

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_12
    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMode:I

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTempPassword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_13
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_14

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getOcsp()I

    move-result v2

    :cond_14
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    :cond_15
    return-void

    :cond_16
    :goto_4
    const-string/jumbo v1, "refreshEapItems: method= "

    const-string v3, " entries null or length error"

    invoke-static {p1, v1, v3, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapIdPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapUserCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public final setDefaultEAPPhase2Method(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PEAP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_0

    :cond_0
    const-string v0, "TTLS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setDomainVisible()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainView:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainPref:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapDomainView:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public final setMinTlsVersionVisible()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getMinimumTlsVersion()I

    move-result v3

    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    :cond_3
    return-void
.end method

.method public final setOcspVisible()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public final setupEapItems()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "PEAP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TLS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TTLS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "PWD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "AKA\'"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    iput-object v1, v2, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setupEapMethodForCarrierSsid()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v1

    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0300b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0300b7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0300b8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    const-string v5, "SIM"

    invoke-virtual {v1, v2, v5}, Lcom/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v2, "AKA"

    invoke-virtual {v1, v3, v2}, Lcom/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v3, "AKA\'"

    invoke-virtual {v1, v4, v3}, Lcom/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/google/common/collect/AbstractMultimap;->entries:Lcom/google/common/collect/AbstractMultimap$EntrySet;

    if-nez v4, :cond_0

    new-instance v4, Lcom/google/common/collect/AbstractMultimap$EntrySet;

    invoke-direct {v4, v1}, Lcom/google/common/collect/AbstractMultimap$EntrySet;-><init>(Lcom/google/common/collect/HashMultimap;)V

    iput-object v4, v1, Lcom/google/common/collect/AbstractMultimap;->entries:Lcom/google/common/collect/AbstractMultimap$EntrySet;

    :cond_0
    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "the eapMethod of "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is set to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateEapMethod : "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PEAP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_2
    const-string v0, "TLS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_3
    const-string v0, "TTLS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_4
    const-string v0, "PWD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_8
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mCanChangeEapMethod:Z

    :cond_9
    return-void
.end method

.method public final setupEapMinTlsVer(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0301eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "Wi-Fi Enterprise TLS v1.3 is not supported on this device"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->setPersistent()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    iput-object p1, v1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mMinTlsVersionPref:Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getMinimumTlsVersion()I

    move-result v0

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    :cond_3
    return-void
.end method

.method public final setupEapOcspItems()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f143524

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f143553

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f143555

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f143554

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    iput-object v1, v2, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public abstract setupPhase2Method(I)V
.end method

.method public final showErrorTextUnderEditText(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f060799

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public final showSecurityFields(I)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v3, 0x1

    if-eq p1, v3, :cond_8

    const/4 v4, 0x2

    if-eq p1, v4, :cond_8

    const/4 v4, 0x5

    if-ne p1, v4, :cond_1

    goto :goto_3

    :cond_1
    const/4 v4, 0x3

    const/4 v5, 0x6

    if-eq p1, v4, :cond_2

    const/4 v4, 0x7

    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_b

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    if-ne p1, v5, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mCanChangeEapMethod:Z

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p1

    const-string v2, "getEapMethodOverride return "

    invoke-static {p1, v2}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move p1, v1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_6

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p1

    goto :goto_0

    :cond_6
    move p1, v0

    :goto_0
    if-ne p1, v0, :cond_7

    goto :goto_1

    :cond_7
    move v1, p1

    :goto_1
    move v3, v1

    :goto_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->refreshEapItems(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setupPhase2Method(I)V

    goto :goto_5

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->refreshEapItems(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    const v0, 0x7f143721

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->fillPreviousPasswordIfNeeded()V

    goto :goto_5

    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordPref:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapMethodPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapOcspPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->refreshEapItems(I)V

    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->afterShowSecurityFields()V

    return-void
.end method

.method public final updateEapSimPref()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1435f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    new-array v1, v2, [Ljava/lang/CharSequence;

    const-string v2, "0"

    aput-object v2, v1, v3

    iput-object v1, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_1
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-eq v4, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    move v5, v3

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v5, v0}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    iput-object v4, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v4, -0x1

    if-eqz v0, :cond_5

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-eq v0, v4, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mContext:Landroid/content/Context;

    const-class v7, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    move-result v0

    goto :goto_2

    :cond_6
    move v0, v4

    :goto_2
    move v5, v3

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    if-eq v0, v4, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mActiveSubscriptionInfos:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v6

    if-ne v6, v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ne v0, v2, :cond_9

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapSimPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_9
    return-void
.end method

.method public final updateSecurity()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiEntrySecurity:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->passwordCheck(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateSummary$4(Landroidx/preference/DropDownPreference;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x7f060659

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    if-ltz p2, :cond_2

    array-length v1, v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    iget-object p0, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "%"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "%%"

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateSummary: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " entries null or length error"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateSummaryWithWarning(Landroidx/preference/DropDownPreference;)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x7f060753

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    iget-object v1, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "%%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

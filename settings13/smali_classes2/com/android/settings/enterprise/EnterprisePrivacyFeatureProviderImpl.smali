.class public Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;
.super Ljava/lang/Object;
.source "EnterprisePrivacyFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUm:Landroid/os/UserManager;

.field private final mVm:Landroid/net/VpnManager;

.field private final mWorkPolicyUtils:Lcom/android/settingslib/utils/WorkPolicyUtils;


# direct methods
.method public static synthetic $r8$lambda$0zO8pdZQJmz7XWOlKjiO3roV7vo(Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->lambda$getDeviceOwnerDisclosure$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ddUe4EqJWt8iA1RhU8sPQSuodjI(Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->lambda$getDeviceOwnerDisclosure$0(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 62
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/net/ConnectivityManager;Landroid/net/VpnManager;Landroid/content/res/Resources;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 69
    iput-object p3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    .line 70
    iput-object p4, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    .line 71
    iput-object p5, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mCm:Landroid/net/ConnectivityManager;

    .line 72
    iput-object p6, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mVm:Landroid/net/VpnManager;

    .line 73
    iput-object p7, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    .line 74
    new-instance p2, Lcom/android/settingslib/utils/WorkPolicyUtils;

    invoke-direct {p2, p1}, Lcom/android/settingslib/utils/WorkPolicyUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mWorkPolicyUtils:Lcom/android/settingslib/utils/WorkPolicyUtils;

    return-void
.end method

.method private getDeviceOwnerComponent()Landroid/content/ComponentName;
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 286
    :cond_0
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private getManagedProfileUserId()I
    .locals 0

    .line 299
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 301
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    return p0

    :cond_0
    const/16 p0, -0x2710

    return p0
.end method

.method private getManagedProfileUserInfo()Landroid/content/pm/UserInfo;
    .locals 2

    .line 290
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    sget v0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 291
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getParentalControlsIntent()Landroid/content/Intent;
    .locals 5

    .line 266
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Landroid/os/UserHandle;

    sget v2, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 267
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 272
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.SHOW_PARENTAL_CONTROLS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x10000000

    .line 274
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 275
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 276
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method private synthetic lambda$getDeviceOwnerDisclosure$0(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 107
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->do_disclosure_with_name:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDeviceOwnerDisclosure$1()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/settings/R$string;->do_disclosure_generic:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDeviceOwnerDisclosure()Ljava/lang/CharSequence;
    .locals 5

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->hasDeviceOwner()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v3, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, p0, v4

    const-string v1, "Settings.DEVICE_MANAGED_WITH_NAME"

    invoke-virtual {v2, v1, v3, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;)V

    const-string p0, "Settings.DEVICE_MANAGED_WITHOUT_NAME"

    invoke-virtual {v1, p0, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_0
    return-object v0
.end method

.method public getDeviceOwnerOrganizationName()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImeLabelIfOwnerSet()Ljava/lang/String;
    .locals 5

    .line 183
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isCurrentInputMethodSetByOwner()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v2, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    const-string v3, "default_input_method"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 192
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    .line 193
    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public getLastBugReportRequestTime()Ljava/util/Date;
    .locals 4

    .line 124
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getLastBugReportRequestTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 125
    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object p0
.end method

.method public getLastNetworkLogRetrievalTime()Ljava/util/Date;
    .locals 4

    .line 130
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getLastNetworkLogRetrievalTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 131
    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object p0
.end method

.method public getLastSecurityLogRetrievalTime()Ljava/util/Date;
    .locals 4

    .line 118
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getLastSecurityLogRetrievalTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 119
    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object p0
.end method

.method public getMaximumFailedPasswordsBeforeWipeInCurrentUser()I
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    sget v1, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 165
    :cond_1
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    sget v1, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public getMaximumFailedPasswordsBeforeWipeInManagedProfile()I
    .locals 3

    .line 170
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    return v1

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 178
    :cond_1
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public getNumberOfActiveDeviceAdminsForCurrentUserAndManagedProfile()I
    .locals 9

    .line 224
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    sget v1, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 225
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    iget-object v4, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v3}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 228
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_0

    .line 230
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 232
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.samsung.android.knox.containercore"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.samsung.knox.securefolder"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 234
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.android.kgclient"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public getNumberOfOwnerInstalledCaCertsForCurrentUser()I
    .locals 2

    .line 201
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Landroid/os/UserHandle;

    sget v1, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 205
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getNumberOfOwnerInstalledCaCertsForManagedProfile()I
    .locals 3

    .line 210
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    return v1

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2}, Landroid/app/admin/DevicePolicyManager;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 218
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public hasDeviceOwner()Z
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getDeviceOwnerComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasWorkPolicyInfo()Z
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mWorkPolicyUtils:Lcom/android/settingslib/utils/WorkPolicyUtils;

    invoke-virtual {p0}, Lcom/android/settingslib/utils/WorkPolicyUtils;->hasWorkPolicy()Z

    move-result p0

    return p0
.end method

.method public isAlwaysOnVpnSetInCurrentUser()Z
    .locals 1

    .line 146
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mVm:Landroid/net/VpnManager;

    sget v0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-static {p0, v0}, Lcom/android/settings/vpn2/VpnUtils;->isAlwaysOnVpnSet(Landroid/net/VpnManager;I)Z

    move-result p0

    return p0
.end method

.method public isAlwaysOnVpnSetInManagedProfile()Z
    .locals 2

    .line 151
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mVm:Landroid/net/VpnManager;

    .line 153
    invoke-static {p0, v0}, Lcom/android/settings/vpn2/VpnUtils;->isAlwaysOnVpnSet(Landroid/net/VpnManager;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInCompMode()Z
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->hasDeviceOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNetworkLoggingEnabled()Z
    .locals 1

    .line 141
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isSecurityLoggingEnabled()Z
    .locals 1

    .line 136
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public showParentalControls()Z
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getParentalControlsIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public showWorkPolicyInfo(Landroid/content/Context;)Z
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mWorkPolicyUtils:Lcom/android/settingslib/utils/WorkPolicyUtils;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/utils/WorkPolicyUtils;->showWorkPolicyInfo(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.class public final Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;


# static fields
.field public static final MY_USER_ID:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mResources:Landroid/content/res/Resources;

.field public final mUm:Landroid/os/UserManager;

.field public final mVm:Landroid/net/VpnManager;

.field public final mWorkPolicyUtils:Lcom/android/settingslib/utils/WorkPolicyUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/net/VpnManager;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iput-object p3, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    iput-object p5, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mVm:Landroid/net/VpnManager;

    iput-object p6, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mResources:Landroid/content/res/Resources;

    new-instance p2, Lcom/android/settingslib/utils/WorkPolicyUtils;

    invoke-direct {p2, p1}, Lcom/android/settingslib/utils/WorkPolicyUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mWorkPolicyUtils:Lcom/android/settingslib/utils/WorkPolicyUtils;

    return-void
.end method


# virtual methods
.method public final getImeLabelIfOwnerSet()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isCurrentInputMethodSetByOwner()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "default_input_method"

    sget v3, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

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

.method public final getManagedProfileUserId()I
    .locals 2

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

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget p0, v0, Landroid/content/pm/UserInfo;->id:I

    return p0

    :cond_2
    const/16 p0, -0x2710

    return p0
.end method

.method public final hasDeviceOwner()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isInCompMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->hasDeviceOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

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

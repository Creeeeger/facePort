.class public Lcom/android/settings/security/CredentialManagementAppPolicyPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCredentialManagerPackageName:Ljava/lang/String;

.field public mCredentialManagerPolicy:Landroid/security/AppUriAuthenticationPolicy;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mHandler:Landroid/os/Handler;

.field public mHasCredentialManagerPackage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference;->mHandler:Landroid/os/Handler;

    const v0, 0x7f0d01ef

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/settings/security/CredentialManagementAppPolicyPreference$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/security/CredentialManagementAppPolicyPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/CredentialManagementAppPolicyPreference;Landroidx/preference/PreferenceViewHolder;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

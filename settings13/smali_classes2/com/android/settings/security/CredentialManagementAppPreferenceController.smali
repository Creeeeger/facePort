.class public Lcom/android/settings/security/CredentialManagementAppPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "CredentialManagementAppPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CredentialManagementApp"


# instance fields
.field private mCredentialManagerPackageName:Ljava/lang/String;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mHandler:Landroid/os/Handler;

.field private mHasCredentialManagerPackage:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$FzIiTRYyZvlV2793po4gfhIQhJ0(Lcom/android/settings/security/CredentialManagementAppPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->lambda$updateState$0(Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vqAMPq1OjcCYIp45UdTrHavb6-k(Lcom/android/settings/security/CredentialManagementAppPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->lambda$updateState$1(Landroidx/preference/Preference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 46
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private synthetic lambda$updateState$0(Landroidx/preference/Preference;)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->displayPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$updateState$1(Landroidx/preference/Preference;)V
    .locals 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :try_start_1
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    .line 68
    invoke-interface {v1}, Landroid/security/IKeyChainService;->hasCredentialManagementApp()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->mHasCredentialManagerPackage:Z

    .line 69
    invoke-interface {v1}, Landroid/security/IKeyChainService;->getCredentialManagementAppPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->mCredentialManagerPackageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 66
    :try_start_3
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v0, "CredentialManagementApp"

    const-string v1, "Unable to display credential management app preference"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_1
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/security/CredentialManagementAppPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/security/CredentialManagementAppPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/security/CredentialManagementAppPreferenceController;Landroidx/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method displayPreference(Landroidx/preference/Preference;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 79
    iget-boolean v0, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->mHasCredentialManagerPackage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->mCredentialManagerPackageName:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->mCredentialManagerPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 90
    sget p0, Lcom/android/settings/R$string;->no_certificate_management_app:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppPreferenceController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/settings/security/CredentialManagementAppPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/security/CredentialManagementAppPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/CredentialManagementAppPreferenceController;Landroidx/preference/Preference;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

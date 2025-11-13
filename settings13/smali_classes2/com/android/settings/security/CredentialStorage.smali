.class public final Lcom/android/settings/security/CredentialStorage;
.super Landroidx/fragment/app/FragmentActivity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;,
        Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/settings/security/CredentialStorage$ResetDialog;
    }
.end annotation


# static fields
.field private static final CSC_SUPPORT_WAPI:Z


# instance fields
.field private mInstallBundle:Landroid/os/Bundle;

.field private mNeedCallResetDialog:Z

.field private mUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mWapiCertInstalled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmUtils(Lcom/android/settings/security/CredentialStorage;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/security/CredentialStorage;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWapiCertInstalled(Lcom/android/settings/security/CredentialStorage;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/security/CredentialStorage;->mWapiCertInstalled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mclearLegacyVpnIfEstablished(Lcom/android/settings/security/CredentialStorage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/security/CredentialStorage;->clearLegacyVpnIfEstablished()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconfirmKeyGuard(Lcom/android/settings/security/CredentialStorage;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialStorage;->confirmKeyGuard(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monKeyInstalled(Lcom/android/settings/security/CredentialStorage;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/security/CredentialStorage;->onKeyInstalled(Ljava/lang/String;IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 85
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportWapi"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/security/CredentialStorage;->CSC_SUPPORT_WAPI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/security/CredentialStorage;->mWapiCertInstalled:Z

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/android/settings/security/CredentialStorage;->mNeedCallResetDialog:Z

    return-void
.end method

.method private checkCallerIsCertInstallerOrSelfInProfile()Z
    .locals 4

    .line 436
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.certinstaller"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 440
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 439
    invoke-virtual {v0, v3, p0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 445
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 446
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    const-string p0, "CredentialStorage"

    const-string v0, "com.android.credentials.INSTALL must be started with startActivityForResult"

    .line 448
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 451
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 455
    :cond_3
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "user"

    .line 461
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 462
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 464
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :catch_0
    return v2
.end method

.method private checkCallerIsSelf()Z
    .locals 3

    const/4 v0, 0x0

    .line 424
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 425
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v2, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private clearLegacyVpnIfEstablished()V
    .locals 2

    .line 340
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->disconnectLegacyVpn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    sget v0, Lcom/android/settings/R$string;->vpn_disconnected:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 343
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private confirmKeyGuard(I)Z
    .locals 2

    .line 471
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 472
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    .line 474
    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->credentials_title:I

    .line 475
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p0

    return p0
.end method

.method private handleInstall()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/security/CredentialStorage;->installIfAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private installIfAvailable()Z
    .locals 12

    .line 158
    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    .line 163
    iput-object v2, p0, Lcom/android/settings/security/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    const-string v3, "install_as_uid"

    const/4 v4, -0x1

    .line 165
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v3, "CredentialStorage"

    if-eq v11, v4, :cond_2

    .line 167
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v11, v4}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 168
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v4, 0x3f2

    if-eq v11, v4, :cond_1

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to install credentials as uid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": cross-user installs may only target wifi uids"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 177
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.credentials.INSTALL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x2000000

    .line 178
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 179
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 180
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v1

    :cond_2
    const-string/jumbo v4, "user_key_pair_name"

    .line 184
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "Cannot install key without an alias"

    .line 186
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 191
    :cond_3
    sget-boolean v2, Lcom/android/settings/security/CredentialStorage;->CSC_SUPPORT_WAPI:Z

    if-eqz v2, :cond_5

    const-string v2, "android.security.legacykeystore"

    .line 193
    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 192
    invoke-static {v2}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v2

    const-string v4, "android.net.wifi.extra.WAPI_AS_CERTIFICATE_NAME"

    .line 194
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "Failed to install "

    if-eqz v5, :cond_4

    .line 195
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.extra.WAPI_AS_CERTIFICATE_DATA"

    .line 196
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 198
    :try_start_0
    invoke-interface {v2, v4, v11, v5}, Landroid/security/legacykeystore/ILegacyKeystore;->put(Ljava/lang/String;I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    iput-boolean v1, p0, Lcom/android/settings/security/CredentialStorage;->mWapiCertInstalled:Z

    goto :goto_0

    :catch_0
    move-exception p0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    :goto_0
    const-string v4, "android.net.wifi.extra.WAPI_USER_CERTIFICATE_NAME"

    .line 205
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 206
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.extra.WAPI_USER_CERTIFICATE_DATA"

    .line 207
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 210
    :try_start_1
    invoke-interface {v2, v4, v11, v5}, Landroid/security/legacykeystore/ILegacyKeystore;->put(Ljava/lang/String;I[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    iput-boolean v1, p0, Lcom/android/settings/security/CredentialStorage;->mWapiCertInstalled:Z

    goto :goto_1

    :catch_1
    move-exception p0

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    :goto_1
    const-string/jumbo v1, "user_private_key_data"

    .line 219
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    const-string/jumbo v1, "user_certificate_data"

    .line 220
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    const-string v1, "ca_certificates_data"

    .line 221
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 222
    new-instance v0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;-><init>(Lcom/android/settings/security/CredentialStorage;Ljava/lang/String;[B[B[BI)V

    const/4 p0, 0x0

    new-array v1, p0, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return p0

    :cond_6
    :goto_2
    return v1
.end method

.method private onKeyInstalled(Ljava/lang/String;IZ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "CredentialStorage"

    if-nez p3, :cond_0

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    .line 403
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "Error installing alias %s for uid %d"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    .line 409
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "Successfully installed alias %s to uid %d."

    .line 408
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.security.action.KEYCHAIN_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, -0x1

    .line 414
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 416
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 481
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 484
    new-instance p1, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/security/CredentialStorage;Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/security/CredentialStorage;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 102
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x1

    .line 496
    iput-boolean v0, p0, Lcom/android/settings/security/CredentialStorage;->mNeedCallResetDialog:Z

    const-string v0, "CredentialStorage"

    const-string/jumbo v1, "onDestroy() called"

    .line 497
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 107
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f266666    # 0.65f

    goto :goto_0

    :cond_0
    const v1, 0x3e3851ec    # 0.18f

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user"

    .line 117
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_credentials"

    .line 118
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.android.credentials.RESET"

    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/security/CredentialStorage;->checkCallerIsSelf()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    iget-boolean v0, p0, Lcom/android/settings/security/CredentialStorage;->mNeedCallResetDialog:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/android/settings/security/CredentialStorage;->mNeedCallResetDialog:Z

    .line 124
    new-instance v0, Lcom/android/settings/security/CredentialStorage$ResetDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/security/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings/security/CredentialStorage;Lcom/android/settings/security/CredentialStorage$ResetDialog-IA;)V

    goto :goto_1

    :cond_1
    const-string v2, "com.android.credentials.INSTALL"

    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/security/CredentialStorage;->checkCallerIsCertInstallerOrSelfInProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/security/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 131
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/security/CredentialStorage;->handleInstall()V

    goto :goto_1

    .line 134
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

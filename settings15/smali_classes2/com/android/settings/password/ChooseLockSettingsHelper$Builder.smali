.class public final Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public mAllowAnyUserId:Z

.field public mAlternateButton:Ljava/lang/CharSequence;

.field public mCheckBoxLabel:Ljava/lang/CharSequence;

.field public mDescription:Ljava/lang/CharSequence;

.field public mExternal:Z

.field public mForceVerifyPath:Z

.field public mForegroundOnly:Z

.field public final mFragment:Landroidx/fragment/app/Fragment;

.field public mHeader:Ljava/lang/CharSequence;

.field public mKnoxWorkProfileSecurity:Z

.field public mRemoteLockscreenValidation:Z

.field public mRemoteLockscreenValidationServiceComponent:Landroid/content/ComponentName;

.field public mRemoteLockscreenValidationSession:Landroid/app/RemoteLockscreenValidationSession;

.field public mRequestCode:I

.field public mRequestGatekeeperPasswordHandle:Z

.field public mRequestWriteRepairModePassword:Z

.field public mReturnCredentials:Z

.field public mTaskOverlay:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mUnlockRecovery:Z

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUnlockRecovery:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mKnoxWorkProfileSecurity:Z

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mActivity:Landroid/app/Activity;

    sget-object v0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public final setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/android/settings/password/ChooseLockSettingsHelper;
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mAllowAnyUserId:Z

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    const/16 v2, -0x270f

    if-eq v0, v2, :cond_0

    const/16 v2, -0x270e

    if-eq v0, v2, :cond_0

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mExternal:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRemoteLockscreenValidation:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "External and ReturnCredentials specified.  External callers should never be allowed to receive credentials in onActivityResult"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    if-nez v0, :cond_3

    const-string v0, "ChooseLockSettingsHelper"

    const-string v2, "Requested gatekeeper password handle but not requesting ReturnCredentials. Are you sure this is what you want?"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;)V

    return-object v0
.end method

.method public setAllowAnyUserId(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 276
    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mAllowAnyUserId:Z

    return-object p0
.end method

.method public setAlternateButton(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mAlternateButton:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDescription(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setExternal(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 286
    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mExternal:Z

    return-object p0
.end method

.method public setForceVerifyPath(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 304
    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForceVerifyPath:Z

    return-object p0
.end method

.method public setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 295
    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForegroundOnly:Z

    return-object p0
.end method

.method public setHeader(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setKnoxWorkProfileSecurity(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 333
    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mKnoxWorkProfileSecurity:Z

    return-object p0
.end method

.method public setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 210
    iput p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    return-object p0
.end method

.method public setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 320
    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    return-object p0
.end method

.method public setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 258
    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setUnlockRecovery(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 326
    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUnlockRecovery:Z

    return-object p0
.end method

.method public setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    .locals 0

    .line 266
    iput p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    return-object p0
.end method

.method public final show()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->build()Lcom/android/settings/password/ChooseLockSettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launch()Z

    move-result p0

    return p0
.end method

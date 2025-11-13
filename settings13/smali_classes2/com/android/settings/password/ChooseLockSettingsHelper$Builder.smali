.class public Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllowAnyUserId:Z

.field private mAlternateButton:Ljava/lang/CharSequence;

.field private mDescription:Ljava/lang/CharSequence;

.field private mExternal:Z

.field private mForceVerifyPath:Z

.field private mForegroundOnly:Z

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mHeader:Ljava/lang/CharSequence;

.field mKnoxWorkProfileSecurity:Z

.field private mRequestCode:I

.field mRequestGatekeeperPasswordHandle:Z

.field private mReturnCredentials:Z

.field private mTitle:Ljava/lang/CharSequence;

.field mUnlockRecovery:Z

.field private mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowAnyUserId(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mAllowAnyUserId:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlternateButton(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mAlternateButton:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDescription(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExternal(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mExternal:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmForceVerifyPath(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForceVerifyPath:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmForegroundOnly(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForegroundOnly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeader(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestCode(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReturnCredentials(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    return p0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUnlockRecovery:Z

    .line 193
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mKnoxWorkProfileSecurity:Z

    .line 197
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mActivity:Landroid/app/Activity;

    .line 198
    invoke-static {p1}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    .line 203
    iput-object p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settings/password/ChooseLockSettingsHelper;
    .locals 4

    .line 339
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mAllowAnyUserId:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    const/16 v1, -0x270f

    if-eq v0, v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    .line 343
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mExternal:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 344
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "External and ReturnCredentials specified.  External callers should never be allowed to receive credentials in onActivityResult"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 349
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    if-nez v0, :cond_3

    const-string v0, "ChooseLockSettingsHelper"

    const-string v1, "Requested gatekeeper password handle but not requesting ReturnCredentials. Are you sure this is what you want?"

    .line 351
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_3
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/android/settings/password/ChooseLockSettingsHelper-IA;)V

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

.method public show()Z
    .locals 0

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->build()Lcom/android/settings/password/ChooseLockSettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launch()Z

    move-result p0

    return p0
.end method

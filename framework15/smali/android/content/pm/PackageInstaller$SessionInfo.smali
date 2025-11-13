.class public Landroid/content/pm/PackageInstaller$SessionInfo;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INVALID_ID:I = -0x1

.field private static final blacklist NO_SESSIONS:[I

.field public static final whitelist SESSION_ACTIVATION_FAILED:I = 0x2

.field public static final whitelist SESSION_CONFLICT:I = 0x4

.field public static final whitelist SESSION_NO_ERROR:I = 0x0

.field public static final whitelist SESSION_UNKNOWN_ERROR:I = 0x3

.field public static final whitelist SESSION_VERIFICATION_FAILED:I = 0x1

.field public static final whitelist STAGED_SESSION_ACTIVATION_FAILED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STAGED_SESSION_CONFLICT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STAGED_SESSION_NO_ERROR:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STAGED_SESSION_UNKNOWN:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STAGED_SESSION_VERIFICATION_FAILED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public greylist-max-p active:Z

.field public greylist-max-p appIcon:Landroid/graphics/Bitmap;

.field public greylist-max-p appLabel:Ljava/lang/CharSequence;

.field public greylist-max-p appPackageName:Ljava/lang/String;

.field public blacklist applicationEnabledSettingPersistent:Z

.field public blacklist autoRevokePermissionsMode:I

.field public blacklist childSessionIds:[I

.field public blacklist createdMillis:J

.field public blacklist forceQueryable:Z

.field public greylist-max-o grantedRuntimePermissions:[Ljava/lang/String;

.field public greylist-max-o installFlags:I

.field public greylist-max-o installLocation:I

.field public greylist-max-o installReason:I

.field public blacklist installScenario:I

.field public blacklist installerAttributionTag:Ljava/lang/String;

.field public greylist-max-p installerPackageName:Ljava/lang/String;

.field public blacklist installerUid:I

.field public blacklist isCommitted:Z

.field public blacklist isMultiPackage:Z

.field public blacklist isPreapprovalRequested:Z

.field public blacklist isSessionApplied:Z

.field public blacklist isSessionFailed:Z

.field public blacklist isSessionReady:Z

.field public blacklist isStaged:Z

.field private blacklist mSessionErrorCode:I

.field private blacklist mSessionErrorMessage:Ljava/lang/String;

.field public greylist-max-p mode:I

.field public greylist-max-o originatingUid:I

.field public greylist-max-o originatingUri:Landroid/net/Uri;

.field public blacklist packageSource:I

.field public blacklist parentSessionId:I

.field public blacklist pendingUserActionReason:I

.field public greylist-max-p progress:F

.field public greylist-max-o referrerUri:Landroid/net/Uri;

.field public blacklist requireUserAction:I

.field public greylist-max-r resolvedBaseCodePath:Ljava/lang/String;

.field public blacklist rollbackDataPolicy:I

.field public blacklist rollbackImpactLevel:I

.field public blacklist rollbackLifetimeMillis:J

.field public greylist-max-r sealed:Z

.field public greylist-max-p sessionId:I

.field public greylist-max-p sizeBytes:J

.field public blacklist updatedMillis:J

.field public blacklist userId:I

.field public blacklist whitelistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smuserActionToString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->userActionToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->NO_SESSIONS:[I

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    sget-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->NO_SESSIONS:[I

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    sget-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->NO_SESSIONS:[I

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installScenario:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    const-class v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->forceQueryable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    if-nez v0, :cond_2

    sget-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->NO_SESSIONS:[I

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isPreapprovalRequested:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackLifetimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackImpactLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->requireUserAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->applicationEnabledSettingPersistent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->pendingUserActionReason:I

    return-void
.end method

.method private blacklist checkSessionIsStaged()V
    .locals 2

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Session is not marked as staged."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist userActionToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNSPECIFIED"

    return-object v0

    :pswitch_0
    const-string v0, "NOT_REQUIRED"

    return-object v0

    :pswitch_1
    const-string v0, "REQUIRED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist createDetailsIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.SESSION_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.content.pm.extra.SESSION_ID"

    iget v2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAllocateAggressive()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getAllowDowngrade()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getRequestDowngrade()Z

    move-result v0

    return v0
.end method

.method public whitelist getAppIcon()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getAppLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getAppPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAutoRevokePermissionsMode()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    return v0
.end method

.method public whitelist getChildSessionIds()[I
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    return-object v0
.end method

.method public whitelist getCreatedMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    return-wide v0
.end method

.method public greylist-max-o getDetailsIntent()Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->createDetailsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDontKillApp()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getEnableRollback()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getGrantedRuntimePermissions()[Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInstallAsFullApp(Z)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getInstallAsInstantApp(Z)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getInstallAsVirtualPreload()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getInstallLocation()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    return v0
.end method

.method public whitelist getInstallReason()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    return v0
.end method

.method public whitelist getInstallerAttributionTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInstallerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInstallerUid()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    return v0
.end method

.method public whitelist getMode()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    return v0
.end method

.method public whitelist getOriginatingUid()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    return v0
.end method

.method public whitelist getOriginatingUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getPackageSource()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    return v0
.end method

.method public whitelist getParentSessionId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    return v0
.end method

.method public whitelist getPendingUserActionReason()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->pendingUserActionReason:I

    return v0
.end method

.method public whitelist getProgress()F
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    return v0
.end method

.method public whitelist getReferrerUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getRequestDowngrade()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getRequireUserAction()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->requireUserAction:I

    return v0
.end method

.method public whitelist getResolvedBaseApkPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRollbackDataPolicy()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    return v0
.end method

.method public whitelist getSessionId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    return v0
.end method

.method public whitelist getSize()J
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    return-wide v0
.end method

.method public whitelist getStagedSessionErrorCode()I
    .locals 1

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorCode:I

    return v0
.end method

.method public whitelist getStagedSessionErrorMessage()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUpdatedMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->updatedMillis:J

    return-wide v0
.end method

.method public whitelist getUser()Landroid/os/UserHandle;
    .locals 2

    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public whitelist getWhitelistedRestrictedPermissions()Ljava/util/Set;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->RESTRICTED_PERMISSIONS_ALL:Ljava/util/Set;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasParentSessionId()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isActive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    return v0
.end method

.method public whitelist isApplicationEnabledSettingPersistent()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->applicationEnabledSettingPersistent:Z

    return v0
.end method

.method public whitelist isCommitted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    return v0
.end method

.method public blacklist isForceQueryable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->forceQueryable:Z

    return v0
.end method

.method public whitelist isMultiPackage()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    return v0
.end method

.method public greylist-max-o isOpen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isActive()Z

    move-result v0

    return v0
.end method

.method public whitelist isPreApprovalRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isPreapprovalRequested:Z

    return v0
.end method

.method public whitelist isRequestUpdateOwnership()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isSealed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    return v0
.end method

.method public whitelist isStaged()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    return v0
.end method

.method public whitelist isStagedSessionActive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isStagedSessionApplied()Z
    .locals 1

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    return v0
.end method

.method public whitelist isStagedSessionFailed()Z
    .locals 1

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    return v0
.end method

.method public whitelist isStagedSessionReady()Z
    .locals 1

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->checkSessionIsStaged()V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    return v0
.end method

.method public whitelist isUnarchival()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setSessionErrorCode(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorCode:I

    iput-object p2, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installScenario:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->forceQueryable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->mSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->isPreapprovalRequested:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackLifetimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackImpactLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->requireUserAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->applicationEnabledSettingPersistent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionInfo;->pendingUserActionReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

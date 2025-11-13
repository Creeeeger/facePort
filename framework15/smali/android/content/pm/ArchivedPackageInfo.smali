.class public final Landroid/content/pm/ArchivedPackageInfo;
.super Ljava/lang/Object;
.source "ArchivedPackageInfo.java"


# instance fields
.field private blacklist mDefaultToDeviceProtectedStorage:Ljava/lang/String;

.field private blacklist mLauncherActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ArchivedActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mRequestLegacyExternalStorage:Ljava/lang/String;

.field private blacklist mSigningInfo:Landroid/content/pm/SigningInfo;

.field private blacklist mTargetSdkVersion:I

.field private blacklist mUserDataFragile:Ljava/lang/String;

.field private blacklist mVersionCode:I

.field private blacklist mVersionCodeMajor:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/ArchivedPackageParcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCode:I

    iput v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCodeMajor:I

    iput v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mTargetSdkVersion:I

    iget-object v1, p1, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mPackageName:Ljava/lang/String;

    new-instance v1, Landroid/content/pm/SigningInfo;

    iget-object v2, p1, Landroid/content/pm/ArchivedPackageParcel;->signingDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v1, v2}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    iput-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    iget v1, p1, Landroid/content/pm/ArchivedPackageParcel;->versionCode:I

    iput v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCode:I

    iget v1, p1, Landroid/content/pm/ArchivedPackageParcel;->versionCodeMajor:I

    iput v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCodeMajor:I

    iget v1, p1, Landroid/content/pm/ArchivedPackageParcel;->targetSdkVersion:I

    iput v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mTargetSdkVersion:I

    iget-object v1, p1, Landroid/content/pm/ArchivedPackageParcel;->defaultToDeviceProtectedStorage:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mDefaultToDeviceProtectedStorage:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ArchivedPackageParcel;->requestLegacyExternalStorage:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mRequestLegacyExternalStorage:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ArchivedPackageParcel;->userDataFragile:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mUserDataFragile:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    iget-object v1, p1, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    new-instance v5, Landroid/content/pm/ArchivedActivityInfo;

    invoke-direct {v5, v3}, Landroid/content/pm/ArchivedActivityInfo;-><init>(Landroid/content/pm/ArchivedActivityParcel;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/SigningInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ArchivedActivityInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCode:I

    iput v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCodeMajor:I

    iput v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mTargetSdkVersion:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/ArchivedPackageInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    iput-object p3, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist getDefaultToDeviceProtectedStorage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mDefaultToDeviceProtectedStorage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLauncherActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ArchivedActivityInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getParcel()Landroid/content/pm/ArchivedPackageParcel;
    .locals 5

    new-instance v0, Landroid/content/pm/ArchivedPackageParcel;

    invoke-direct {v0}, Landroid/content/pm/ArchivedPackageParcel;-><init>()V

    iget-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ArchivedPackageParcel;->signingDetails:Landroid/content/pm/SigningDetails;

    iget v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCode:I

    iput v1, v0, Landroid/content/pm/ArchivedPackageParcel;->versionCode:I

    iget v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCodeMajor:I

    iput v1, v0, Landroid/content/pm/ArchivedPackageParcel;->versionCodeMajor:I

    iget v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mTargetSdkVersion:I

    iput v1, v0, Landroid/content/pm/ArchivedPackageParcel;->targetSdkVersion:I

    iget-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mDefaultToDeviceProtectedStorage:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ArchivedPackageParcel;->defaultToDeviceProtectedStorage:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mRequestLegacyExternalStorage:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ArchivedPackageParcel;->requestLegacyExternalStorage:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mUserDataFragile:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ArchivedPackageParcel;->userDataFragile:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/ArchivedActivityParcel;

    iput-object v1, v0, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    const/4 v1, 0x0

    iget-object v2, v0, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    array-length v2, v2

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, v0, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    iget-object v4, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ArchivedActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ArchivedActivityInfo;->getParcel()Landroid/content/pm/ArchivedActivityParcel;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public whitelist getRequestLegacyExternalStorage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mRequestLegacyExternalStorage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSigningInfo()Landroid/content/pm/SigningInfo;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    return-object v0
.end method

.method public whitelist getTargetSdkVersion()I
    .locals 1

    iget v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mTargetSdkVersion:I

    return v0
.end method

.method public whitelist getUserDataFragile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mUserDataFragile:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersionCode()I
    .locals 1

    iget v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCode:I

    return v0
.end method

.method public whitelist getVersionCodeMajor()I
    .locals 1

    iget v0, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCodeMajor:I

    return v0
.end method

.method public whitelist setDefaultToDeviceProtectedStorage(Ljava/lang/String;)Landroid/content/pm/ArchivedPackageInfo;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mDefaultToDeviceProtectedStorage:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setLauncherActivities(Ljava/util/List;)Landroid/content/pm/ArchivedPackageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ArchivedActivityInfo;",
            ">;)",
            "Landroid/content/pm/ArchivedPackageInfo;"
        }
    .end annotation

    iput-object p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ArchivedPackageInfo;->mLauncherActivities:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/content/pm/ArchivedPackageInfo;
    .locals 3

    iput-object p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mPackageName:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ArchivedPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whitelist setRequestLegacyExternalStorage(Ljava/lang/String;)Landroid/content/pm/ArchivedPackageInfo;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mRequestLegacyExternalStorage:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setSigningInfo(Landroid/content/pm/SigningInfo;)Landroid/content/pm/ArchivedPackageInfo;
    .locals 3

    iput-object p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ArchivedPackageInfo;->mSigningInfo:Landroid/content/pm/SigningInfo;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whitelist setTargetSdkVersion(I)Landroid/content/pm/ArchivedPackageInfo;
    .locals 0

    iput p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mTargetSdkVersion:I

    return-object p0
.end method

.method public whitelist setUserDataFragile(Ljava/lang/String;)Landroid/content/pm/ArchivedPackageInfo;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mUserDataFragile:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setVersionCode(I)Landroid/content/pm/ArchivedPackageInfo;
    .locals 0

    iput p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCode:I

    return-object p0
.end method

.method public whitelist setVersionCodeMajor(I)Landroid/content/pm/ArchivedPackageInfo;
    .locals 0

    iput p1, p0, Landroid/content/pm/ArchivedPackageInfo;->mVersionCodeMajor:I

    return-object p0
.end method

.class public abstract Lcom/android/settings/applications/InstalledAppCounter;
.super Lcom/android/settings/applications/AppCounter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mInstallReason:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;)V
    .locals 1

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/InstalledAppCounter;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/android/settings/applications/AppCounter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;)V

    iput p2, p0, Lcom/android/settings/applications/InstalledAppCounter;->mInstallReason:I

    return-void
.end method

.method public static includeInCount(ILandroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z
    .locals 5

    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_0

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    if-eq v1, p0, :cond_0

    return v2

    :cond_0
    iget p0, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, p0, 0x80

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    and-int/2addr p0, v3

    if-nez p0, :cond_2

    return v3

    :cond_2
    new-instance p0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const p2, 0xc0200

    invoke-virtual {p1, p0, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method


# virtual methods
.method public final includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    iget v0, p0, Lcom/android/settings/applications/InstalledAppCounter;->mInstallReason:I

    iget-object p0, p0, Lcom/android/settings/applications/AppCounter;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v0, p0, p1}, Lcom/android/settings/applications/InstalledAppCounter;->includeInCount(ILandroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

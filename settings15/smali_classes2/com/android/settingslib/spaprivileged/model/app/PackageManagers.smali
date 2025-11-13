.class public final Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;

    invoke-direct {v0}, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;-><init>()V

    sput-object v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;

    invoke-direct {v0}, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->$$delegate_0:Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;

    return-void
.end method


# virtual methods
.method public final getAppOpPermissionPackages(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->$$delegate_0:Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;->getAppOpPermissionPackages(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfoAsUser(ILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->$$delegate_0:Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;->getPackageInfoAsUser(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfoAsUser(JILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->$$delegate_0:Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final hasGrantPermission(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->$$delegate_0:Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;->hasGrantPermission(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final hasRequestPermission(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->$$delegate_0:Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;->hasRequestPermission(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isPackageInstalledAsUser(ILjava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->$$delegate_0:Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

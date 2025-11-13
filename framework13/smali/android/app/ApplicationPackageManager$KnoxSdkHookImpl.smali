.class Landroid/app/ApplicationPackageManager$KnoxSdkHookImpl;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"

# interfaces
.implements Landroid/app/ApplicationPackageManager$KnoxSdkHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KnoxSdkHookImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ApplicationPackageManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/ApplicationPackageManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ApplicationPackageManager;

    .line 2665
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$KnoxSdkHookImpl;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist applyRuntimePermissionsForAllApplicationsForMdm(II)Z
    .locals 2
    .param p1, "permState"    # I
    .param p2, "userId"    # I

    .line 2680
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$KnoxSdkHookImpl;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-static {v0}, Landroid/app/ApplicationPackageManager;->-$$Nest$fgetmPM(Landroid/app/ApplicationPackageManager;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->applyRuntimePermissionsForAllApplicationsForMDM(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2681
    :catch_0
    move-exception v0

    .line 2683
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist applyRuntimePermissionsForMdm(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p3, "permState"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 2670
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$KnoxSdkHookImpl;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-static {v0}, Landroid/app/ApplicationPackageManager;->-$$Nest$fgetmPM(Landroid/app/ApplicationPackageManager;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2671
    :catch_0
    move-exception v0

    .line 2673
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getRequestedRuntimePermissionsForMdm(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2690
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$KnoxSdkHookImpl;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-static {v0}, Landroid/app/ApplicationPackageManager;->-$$Nest$fgetmPM(Landroid/app/ApplicationPackageManager;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2691
    :catch_0
    move-exception v0

    .line 2692
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

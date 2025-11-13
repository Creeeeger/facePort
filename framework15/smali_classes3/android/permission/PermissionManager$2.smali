.class Landroid/permission/PermissionManager$2;
.super Landroid/app/PropertyInvalidatedCache;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/permission/PermissionManager$PackageNamePermissionQuery;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist bypass(Landroid/permission/PermissionManager$PackageNamePermissionQuery;)Z
    .locals 1

    iget v0, p1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic blacklist bypass(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionManager$2;->bypass(Landroid/permission/PermissionManager$PackageNamePermissionQuery;)Z

    move-result p1

    return p1
.end method

.method public blacklist recompute(Landroid/permission/PermissionManager$PackageNamePermissionQuery;)Ljava/lang/Integer;
    .locals 4

    iget-object v0, p1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    iget-object v1, p1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    iget-object v2, p1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->persistentDeviceId:Ljava/lang/String;

    iget v3, p1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    invoke-static {v0, v1, v2, v3}, Landroid/permission/PermissionManager;->-$$Nest$smcheckPackageNamePermissionUncached(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionManager$2;->recompute(Landroid/permission/PermissionManager$PackageNamePermissionQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

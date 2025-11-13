.class interface abstract Landroid/app/ApplicationPackageManager$KnoxSdkHook;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "KnoxSdkHook"
.end annotation


# virtual methods
.method public blacklist applyRuntimePermissionsForAllApplicationsForMdm(II)Z
    .locals 1
    .param p1, "permState"    # I
    .param p2, "userId"    # I

    .line 2657
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist applyRuntimePermissionsForMdm(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 1
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

    .line 2653
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRequestedRuntimePermissionsForMdm(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 2661
    const/4 v0, 0x0

    return-object v0
.end method

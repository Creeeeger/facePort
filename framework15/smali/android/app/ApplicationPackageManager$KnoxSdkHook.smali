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

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist applyRuntimePermissionsForMdm(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRequestedRuntimePermissionsForMdm(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    const/4 v0, 0x0

    return-object v0
.end method

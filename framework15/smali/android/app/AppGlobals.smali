.class public Landroid/app/AppGlobals;
.super Ljava/lang/Object;
.source "AppGlobals.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getFloatCoreSetting(Ljava/lang/String;F)F
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityThread;->getFloatCoreSetting(Ljava/lang/String;F)F

    move-result v1

    return v1

    :cond_0
    return p1
.end method

.method public static greylist getInitialApplication()Landroid/app/Application;
    .locals 1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public static greylist getInitialPackage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getIntCoreSetting(Ljava/lang/String;I)I
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityThread;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_0
    return p1
.end method

.method public static greylist getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getPermissionManager()Landroid/permission/IPermissionManager;
    .locals 1

    invoke-static {}, Landroid/app/ActivityThread;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object v0

    return-object v0
.end method

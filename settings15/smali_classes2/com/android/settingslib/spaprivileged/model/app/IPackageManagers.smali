.class public interface abstract Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public abstract getAppOpPermissionPackages(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract getPackageInfoAsUser(ILjava/lang/String;)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getPackageInfoAsUser(JILjava/lang/String;)Landroid/content/pm/PackageInfo;
.end method

.method public abstract hasGrantPermission(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
.end method

.method public abstract hasRequestPermission(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
.end method

.method public abstract isPackageInstalledAsUser(ILjava/lang/String;)Z
.end method

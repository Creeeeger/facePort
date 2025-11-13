.class public final Lcom/android/settings/spa/app/appinfo/AppLaunchButton;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final userPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V
    .locals 1

    const-string v0, "packageInfoPresenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppLaunchButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->getUserPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppLaunchButton;->userPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

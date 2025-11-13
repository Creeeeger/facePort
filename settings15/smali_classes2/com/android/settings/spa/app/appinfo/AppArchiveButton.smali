.class public final Lcom/android/settings/spa/app/appinfo/AppArchiveButton;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appButtonRepository:Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

.field public appLabel:Ljava/lang/CharSequence;

.field public broadcastReceiverIsCreated:Z

.field public final context:Landroid/content/Context;

.field public final isHibernationSwitchEnabledStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final packageInstaller:Landroid/content/pm/PackageInstaller;

.field public final packageName:Ljava/lang/String;

.field public final userHandle:Landroid/os/UserHandle;

.field public final userPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Lkotlinx/coroutines/flow/MutableStateFlow;)V
    .locals 1

    const-string v0, "packageInfoPresenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isHibernationSwitchEnabledStateFlow"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->isHibernationSwitchEnabledStateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p2, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    invoke-direct {v0, p2}, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->appButtonRepository:Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    invoke-virtual {p1}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->getUserPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->userPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p2

    const-string v0, "getPackageInstaller(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->packageInstaller:Landroid/content/pm/PackageInstaller;

    iget-object p2, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->userId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->userHandle:Landroid/os/UserHandle;

    return-void
.end method

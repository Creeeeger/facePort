.class public final Lcom/android/settings/spa/app/appinfo/AppRestoreButton;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public broadcastReceiverIsCreated:Z

.field public final buttonTextIndexStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final buttonTexts:[I

.field public final context:Landroid/content/Context;

.field public coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final packageInstaller:Landroid/content/pm/PackageInstaller;

.field public final packageName:Ljava/lang/String;

.field public updateButtonTextJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final userHandle:Landroid/os/UserHandle;

.field public final userPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V
    .locals 4

    const-string v0, "packageInfoPresenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->getUserPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->userPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    const-string v1, "getPackageInstaller(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->packageInstaller:Landroid/content/pm/PackageInstaller;

    iget-object v0, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->userId:I

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->userHandle:Landroid/os/UserHandle;

    const p1, 0x7f141efb

    const v0, 0x7f141efd

    const v1, 0x7f141ef2

    const v2, 0x7f141efc

    const v3, 0x7f141efa

    filled-new-array {v1, p1, v0, v2, v3}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->buttonTexts:[I

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->buttonTextIndexStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method

.class public abstract Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;


# instance fields
.field public final context:Landroid/content/Context;

.field public final notChangeablePackages:Ljava/util/Set;

.field public final packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

.field public final permissionHasAppOpFlag:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;-><init>(Landroid/content/Context;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageManagers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->permissionHasAppOpFlag:Z

    const-string p1, "com.android.systemui"

    invoke-static {p1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->notChangeablePackages:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final createRecord(Landroid/content/pm/ApplicationInfo;Z)Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->getBroaderPermission()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    invoke-interface {v1, p1, v0}, Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;->hasRequestPermission(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->getAppOps()Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->getPermission()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p1, v3, p0}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/AppOps;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;-><init>(Landroid/content/pm/ApplicationInfo;ZZLcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;)V

    return-object p0
.end method

.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$filter$$inlined$filterItem$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    new-instance p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel$transform$$inlined$map$1;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p0, v0}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel$transform$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;I)V

    return-object p1
.end method

.method public abstract getAppOps()Lcom/android/settingslib/spaprivileged/model/app/AppOps;
.end method

.method public getBroaderPermission()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEnhancedConfirmationKey()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->getAppOps()Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    move-result-object p0

    iget p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOps;->op:I

    invoke-static {p0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getPermission()Ljava/lang/String;
.end method

.method public getPermissionHasAppOpFlag()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->permissionHasAppOpFlag:Z

    return p0
.end method

.method public final isAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
    .locals 2

    check-cast p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;

    const-string p0, "record"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const p0, -0x6bef5ee0

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean p0, p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;->hasRequestBroaderPermission:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel$isAllowed$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel$isAllowed$1;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;->appOpsPermissionController:Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;->isAllowedFlow:Lkotlinx/coroutines/flow/Flow;

    const/4 p1, 0x0

    const/16 v1, 0x38

    invoke-static {p0, p1, p2, v1}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    const p1, 0x47fb3528

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez p1, :cond_1

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, p1, :cond_2

    :cond_1
    new-instance v1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel$isAllowed$2$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel$isAllowed$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    move-object p0, v1

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic isChangeable(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)Z
    .locals 0

    check-cast p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->isChangeable(Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;)Z

    move-result p0

    return p0
.end method

.method public isChangeable(Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;)Z
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;->hasRequestPermission:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;->hasRequestBroaderPermission:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->notChangeablePackages:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;->app:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic setAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Z)V
    .locals 0

    check-cast p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->setAllowed(Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;Z)V

    return-void
.end method

.method public setAllowed(Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;Z)V
    .locals 0

    const-string p0, "record"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;->appOpsPermissionController:Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;->appOpsController:Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->setAllowed(Z)V

    return-void
.end method

.method public final transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->getPermissionHasAppOpFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel$transform$$inlined$map$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel$transform$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;I)V

    new-instance p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel$transform$2;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel$transform$2;-><init>(Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel$transform$$inlined$map$1;

    const/4 v0, 0x2

    invoke-direct {p1, p2, p0, v0}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel$transform$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;I)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final transformItem(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/spaprivileged/model/app/AppRecord;
    .locals 2

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    invoke-virtual {p0}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->getPermission()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;->hasRequestPermission(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionListModel;->createRecord(Landroid/content/pm/ApplicationInfo;Z)Lcom/android/settingslib/spaprivileged/template/app/AppOpPermissionRecord;

    move-result-object p0

    return-object p0
.end method

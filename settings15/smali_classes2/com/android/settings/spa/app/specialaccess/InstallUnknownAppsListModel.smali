.class public final Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;


# static fields
.field public static final APP_OPS:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

.field public static final Companion:Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel$Companion;


# instance fields
.field public final context:Landroid/content/Context;

.field public final enhancedConfirmationKey:Ljava/lang/String;

.field public final switchRestrictionKeys:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel;->Companion:Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel$Companion;

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    const/4 v1, 0x6

    const/16 v2, 0x42

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/android/settingslib/spaprivileged/model/app/AppOps;-><init>(IIZI)V

    sput-object v0, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel;->APP_OPS:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel;->context:Landroid/content/Context;

    const-string p1, "no_install_unknown_sources"

    const-string v0, "no_install_unknown_sources_globally"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel;->switchRestrictionKeys:Ljava/util/List;

    const-string p1, "android:request_install_packages"

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel;->enhancedConfirmationKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$filter$$inlined$filterItem$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance p0, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel$filter$$inlined$map$1;

    invoke-direct {p0, p1}, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel$filter$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;)V

    new-instance p1, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel$filter$2;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {p0, p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p0

    return-object p0
.end method

.method public final getEnhancedConfirmationKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel;->enhancedConfirmationKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getFooterResId()I
    .locals 0

    const p0, 0x7f14122d

    return p0
.end method

.method public final getPageTitleResId()I
    .locals 0

    const p0, 0x7f141232

    return p0
.end method

.method public final getSwitchRestrictionKeys()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel;->switchRestrictionKeys:Ljava/util/List;

    return-object p0
.end method

.method public final getSwitchTitleResId()I
    .locals 0

    const p0, 0x7f140f3d

    return p0
.end method

.method public final isAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
    .locals 0

    check-cast p1, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsRecord;

    const-string p0, "record"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const p0, 0x64705adc

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p0, p1, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsRecord;->appOpsController:Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/settingslib/spaprivileged/model/app/IAppOpsController$special$$inlined$map$1;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->modeFlow:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p1, p0}, Lcom/android/settingslib/spaprivileged/model/app/IAppOpsController$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p1, p2}, Lcom/android/settingslib/spa/lifecycle/FlowExtKt;->collectAsCallbackWithLifecycle(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method

.method public final isChangeable(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)Z
    .locals 2

    check-cast p1, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsRecord;

    const-string p0, "record"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsRecord;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {v0, v1, p0}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const-string v0, "getAppOpPermissionPackages(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel$Companion;->access$isChangeable(Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsRecord;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public final setAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Z)V
    .locals 0

    check-cast p1, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsRecord;

    const-string p0, "record"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsRecord;->appOpsController:Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->setAllowed(Z)V

    return-void
.end method

.method public final transformItem(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/spaprivileged/model/app/AppRecord;
    .locals 3

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsRecord;

    new-instance v1, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel;->context:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsListModel;->APP_OPS:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/AppOps;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/spa/app/specialaccess/InstallUnknownAppsRecord;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;)V

    return-object v0
.end method

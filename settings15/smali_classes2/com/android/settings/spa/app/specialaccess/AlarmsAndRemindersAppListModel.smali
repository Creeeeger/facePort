.class public final Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;


# static fields
.field public static final APP_OPS:Lcom/android/settingslib/spaprivileged/model/app/AppOps;


# instance fields
.field public final context:Landroid/content/Context;

.field public final enhancedConfirmationKey:Ljava/lang/String;

.field public final footerResId:I

.field public final packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

.field public final pageTitleResId:I

.field public final switchTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x6b

    const/4 v4, 0x2

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/settingslib/spaprivileged/model/app/AppOps;-><init>(IIZI)V

    sput-object v0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->APP_OPS:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "packageManagers"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    const p1, 0x7f1402e4

    iput p1, p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->pageTitleResId:I

    const p1, 0x7f1402e3

    iput p1, p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->switchTitleResId:I

    const p1, 0x7f1402e1

    iput p1, p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->footerResId:I

    const-string p1, "android:schedule_exact_alarm"

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->enhancedConfirmationKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final createRecord(Landroid/content/pm/ApplicationInfo;Z)Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppRecord;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object v3

    const-wide/32 v4, 0xa35edc1

    invoke-static {v4, v5, v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    const-string v3, "android.permission.USE_EXACT_ALARM"

    invoke-interface {v2, p1, v3}, Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;->hasRequestPermission(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object v3

    const-wide/32 v4, 0xd068d35

    invoke-static {v4, v5, v2, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->context:Landroid/content/Context;

    const-class v4, Landroid/os/PowerExemptionManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerExemptionManager;

    if-eqz v3, :cond_1

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/os/PowerExemptionManager;->isAllowListed(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    new-instance v3, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppRecord;

    if-eqz p2, :cond_4

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    new-instance p2, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->context:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->APP_OPS:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    const-string v4, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-direct {p2, p0, p1, v1, v4}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/AppOps;Ljava/lang/String;)V

    invoke-direct {v3, p1, v2, v0, p2}, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppRecord;-><init>(Landroid/content/pm/ApplicationInfo;ZZLcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;)V

    return-object v3
.end method

.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$filter$$inlined$filterItem$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    new-instance p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel$filter$$inlined$map$1;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel$filter$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    return-object p0
.end method

.method public final getEnhancedConfirmationKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->enhancedConfirmationKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getFooterResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->footerResId:I

    return p0
.end method

.method public final getPageTitleResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->pageTitleResId:I

    return p0
.end method

.method public final getSwitchTitleResId()I
    .locals 0

    iget p0, p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->switchTitleResId:I

    return p0
.end method

.method public final isAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
    .locals 0

    check-cast p1, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppRecord;

    const-string p0, "record"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const p0, 0x5d4cc720

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean p0, p1, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppRecord;->isTrumped:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel$isAllowed$1;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel$isAllowed$1;

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppRecord;->controller:Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;->isAllowedFlow:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p0, p2}, Lcom/android/settingslib/spa/lifecycle/FlowExtKt;->collectAsCallbackWithLifecycle(Lkotlinx/coroutines/flow/Flow;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method

.method public final isChangeable(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;)Z
    .locals 0

    check-cast p1, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppRecord;

    const-string p0, "record"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppRecord;->isChangeable:Z

    return p0
.end method

.method public final setAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Z)V
    .locals 6

    check-cast p1, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppRecord;

    const-string p0, "record"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppRecord;->controller:Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;->appOpsController:Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->setAllowed(Z)V

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v0

    const/16 v3, 0x74d

    const-string v5, ""

    const/4 v1, 0x0

    const/16 v2, 0x6d8

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel$filter$$inlined$map$1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel$filter$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    new-instance p1, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel$transform$2;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel$transform$2;-><init>(Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p0

    return-object p0
.end method

.method public final transformItem(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/spaprivileged/model/app/AppRecord;
    .locals 2

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    const-string v1, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-interface {v0, p1, v1}, Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;->hasRequestPermission(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppListModel;->createRecord(Landroid/content/pm/ApplicationInfo;Z)Lcom/android/settings/spa/app/specialaccess/AlarmsAndRemindersAppRecord;

    move-result-object p0

    return-object p0
.end method

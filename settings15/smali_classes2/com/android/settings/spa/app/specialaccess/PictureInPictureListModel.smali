.class public final Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;


# static fields
.field public static final APP_OPS:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

.field public static final Companion:Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$Companion;

.field public static final GET_ACTIVITIES_FLAGS:Landroid/content/pm/PackageManager$PackageInfoFlags;


# instance fields
.field public final context:Landroid/content/Context;

.field public final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    const/4 v1, 0x6

    const/16 v2, 0x43

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/android/settingslib/spaprivileged/model/app/AppOps;-><init>(IIZI)V

    sput-object v0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;->APP_OPS:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    const-string v1, "of(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;->GET_ACTIVITIES_FLAGS:Landroid/content/pm/PackageManager$PackageInfoFlags;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final filter(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$filter$$inlined$filterItem$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    new-instance p0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$filter$$inlined$map$1;

    invoke-direct {p0, p2}, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$filter$$inlined$map$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionInternalAppListModel$filter$$inlined$filterItem$1;)V

    return-object p0
.end method

.method public final getEnhancedConfirmationKey()Ljava/lang/String;
    .locals 0

    const-string p0, "android:picture_in_picture"

    return-object p0
.end method

.method public final getFooterResId()I
    .locals 0

    const p0, 0x7f141c2f

    return p0
.end method

.method public final getPageTitleResId()I
    .locals 0

    const p0, 0x7f141c34

    return p0
.end method

.method public final getSwitchTitleResId()I
    .locals 0

    const p0, 0x7f141c30

    return p0
.end method

.method public final isAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
    .locals 0

    check-cast p1, Lcom/android/settings/spa/app/specialaccess/PictureInPictureRecord;

    const-string p0, "record"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const p0, -0x36d41cde

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p0, p1, Lcom/android/settings/spa/app/specialaccess/PictureInPictureRecord;->appOpsController:Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;

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
    .locals 0

    check-cast p1, Lcom/android/settings/spa/app/specialaccess/PictureInPictureRecord;

    const-string p0, "record"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Lcom/android/settings/spa/app/specialaccess/PictureInPictureRecord;->isSupport:Z

    return p0
.end method

.method public final setAllowed(Lcom/android/settingslib/spaprivileged/model/app/AppRecord;Z)V
    .locals 0

    check-cast p1, Lcom/android/settings/spa/app/specialaccess/PictureInPictureRecord;

    const-string p0, "record"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/settings/spa/app/specialaccess/PictureInPictureRecord;->appOpsController:Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->setAllowed(Z)V

    return-void
.end method

.method public final transform(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;)V

    new-instance p1, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$2;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel$transform$2;-><init>(Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object p0

    return-object p0
.end method

.method public final transformItem(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/spaprivileged/model/app/AppRecord;
    .locals 6

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;->GET_ACTIVITIES_FLAGS:Landroid/content/pm/PackageManager$PackageInfoFlags;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "PictureInPictureListModel"

    const-string v3, "Exception while getPackageInfoAsUser"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    new-instance v0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureRecord;

    new-instance v2, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;

    iget-object p0, p0, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;->context:Landroid/content/Context;

    sget-object v3, Lcom/android/settings/spa/app/specialaccess/PictureInPictureListModel;->APP_OPS:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    invoke-direct {v2, p0, p1, v3}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/AppOps;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/spa/app/specialaccess/PictureInPictureRecord;-><init>(Landroid/content/pm/ApplicationInfo;ZLcom/android/settingslib/spaprivileged/model/app/AppOpsController;)V

    return-object v0
.end method

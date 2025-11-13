.class public final Lcom/android/systemui/privacy/PrivacyDialogController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final LOCATION_OPS:[I

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final appOpsController:Lcom/android/systemui/appops/AppOpsController;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public dialog:Landroid/app/Dialog;

.field public final dialogProvider:Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final locationManager:Landroid/location/LocationManager;

.field public final onDialogDismissed:Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final panelSplitHepler$delegate:Lkotlin/Lazy;

.field public final permissionManager:Landroid/permission/PermissionManager;

.field public final privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field public final privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final uiExecutor:Ljava/util/concurrent/Executor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/privacy/PrivacyDialogController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/PrivacyDialogController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager;Landroid/location/LocationManager;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;)V
    .locals 15

    sget-object v14, Lcom/android/systemui/privacy/PrivacyDialogControllerKt;->defaultDialogProvider:Lcom/android/systemui/privacy/PrivacyDialogControllerKt$defaultDialogProvider$1;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/privacy/PrivacyDialogController;-><init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager;Landroid/location/LocationManager;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager;Landroid/location/LocationManager;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->permissionManager:Landroid/permission/PermissionManager;

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->packageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->locationManager:Landroid/location/LocationManager;

    iput-object p4, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iput-object p5, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p6, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p7, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->uiExecutor:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    iput-object p10, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p11, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    iput-object p12, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p13, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iput-object p14, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialogProvider:Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;

    const/4 p1, 0x1

    const/4 p2, 0x0

    filled-new-array {p1, p2}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->LOCATION_OPS:[I

    new-instance p1, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->onDialogDismissed:Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;

    sget-object p1, Lcom/android/systemui/privacy/PrivacyDialogController$panelSplitHepler$2;->INSTANCE:Lcom/android/systemui/privacy/PrivacyDialogController$panelSplitHepler$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->panelSplitHepler$delegate:Lkotlin/Lazy;

    return-void
.end method

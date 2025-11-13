.class public final Lcom/android/systemui/privacy/PrivacyDialogControllerV2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final appOpsController:Lcom/android/systemui/appops/AppOpsController;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final dialogProvider:Lcom/android/systemui/privacy/PrivacyDialogControllerV2$DialogProvider;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final locationManager:Landroid/location/LocationManager;

.field public final onDialogDismissed:Lcom/android/systemui/privacy/PrivacyDialogControllerV2$onDialogDismissed$1;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final permissionManager:Landroid/permission/PermissionManager;

.field public final privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field public final privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final uiExecutor:Ljava/util/concurrent/Executor;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager;Landroid/location/LocationManager;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/animation/DialogTransitionAnimator;)V
    .locals 15

    sget-object v14, Lcom/android/systemui/privacy/PrivacyDialogControllerV2Kt;->defaultDialogProvider:Lcom/android/systemui/privacy/PrivacyDialogControllerV2Kt$defaultDialogProvider$1;

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

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/privacy/PrivacyDialogControllerV2;-><init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager;Landroid/location/LocationManager;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/privacy/PrivacyDialogControllerV2$DialogProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager;Landroid/location/LocationManager;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/appops/AppOpsController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/privacy/PrivacyDialogControllerV2$DialogProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/privacy/PrivacyDialogControllerV2;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p7, p0, Lcom/android/systemui/privacy/PrivacyDialogControllerV2;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/android/systemui/privacy/PrivacyDialogControllerV2;->uiExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/systemui/privacy/PrivacyDialogControllerV2$onDialogDismissed$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyDialogControllerV2$onDialogDismissed$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogControllerV2;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogControllerV2;->onDialogDismissed:Lcom/android/systemui/privacy/PrivacyDialogControllerV2$onDialogDismissed$1;

    return-void
.end method

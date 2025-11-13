.class public final Lcom/android/systemui/camera/CameraGestureHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final activityTaskManager:Landroid/app/IActivityTaskManager;

.field public final cameraIntents:Lcom/android/systemui/camera/CameraIntentsWrapper;

.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final contentResolver:Landroid/content/ContentResolver;

.field public final context:Landroid/content/Context;

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final uiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/camera/CameraGestureHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/camera/CameraGestureHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/content/pm/PackageManager;Landroid/app/ActivityManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/ActivityIntentHelper;Landroid/app/IActivityTaskManager;Lcom/android/systemui/camera/CameraIntentsWrapper;Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/camera/CameraGestureHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/camera/CameraGestureHelper;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iput-object p3, p0, Lcom/android/systemui/camera/CameraGestureHelper;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iput-object p4, p0, Lcom/android/systemui/camera/CameraGestureHelper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p5, p0, Lcom/android/systemui/camera/CameraGestureHelper;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p6, p0, Lcom/android/systemui/camera/CameraGestureHelper;->packageManager:Landroid/content/pm/PackageManager;

    iput-object p8, p0, Lcom/android/systemui/camera/CameraGestureHelper;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p9, p0, Lcom/android/systemui/camera/CameraGestureHelper;->activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    iput-object p10, p0, Lcom/android/systemui/camera/CameraGestureHelper;->activityTaskManager:Landroid/app/IActivityTaskManager;

    iput-object p11, p0, Lcom/android/systemui/camera/CameraGestureHelper;->cameraIntents:Lcom/android/systemui/camera/CameraIntentsWrapper;

    iput-object p12, p0, Lcom/android/systemui/camera/CameraGestureHelper;->contentResolver:Landroid/content/ContentResolver;

    iput-object p13, p0, Lcom/android/systemui/camera/CameraGestureHelper;->uiExecutor:Ljava/util/concurrent/Executor;

    iput-object p14, p0, Lcom/android/systemui/camera/CameraGestureHelper;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    return-void
.end method


# virtual methods
.method public final getStartCameraIntent(I)Landroid/content/Intent;
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/camera/CameraGestureHelper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    iget-object p0, p0, Lcom/android/systemui/camera/CameraGestureHelper;->cameraIntents:Lcom/android/systemui/camera/CameraIntentsWrapper;

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/camera/CameraIntents;->Companion:Lcom/android/systemui/camera/CameraIntents$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/camera/CameraIntents;->Companion:Lcom/android/systemui/camera/CameraIntents$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object p0
.end method

.method public final launchCamera(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/camera/CameraGestureHelper;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/camera/CameraGestureHelper;->getStartCameraIntent(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.systemui.camera_launch_source"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/camera/CameraGestureHelper;->activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(ILandroid/content/Intent;)Z

    move-result v0

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;->POWER_DOUBLE_TAP:Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;

    iget-object v4, p0, Lcom/android/systemui/camera/CameraGestureHelper;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->cameraLaunchSourceIntToModel(I)Lcom/android/systemui/keyguard/shared/model/CameraLaunchSourceModel;

    move-result-object p1

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const-string v3, "isQuickLaunchMode"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v3, Lcom/android/systemui/camera/CameraIntents;->Companion:Lcom/android/systemui/camera/CameraIntents$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->Companion:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/camera/CameraGestureHelper;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/camera/CameraGestureHelper;->uiExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;-><init>(Landroid/content/Intent;Lcom/android/systemui/camera/CameraGestureHelper;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    const-string v0, "isSecure"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v3, v4

    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isForegroundComponentName(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p1, 0x10200000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const/high16 v0, 0x30010000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/camera/CameraGestureHelper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_4

    :cond_3
    const p1, 0x4008000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/camera/CameraGestureHelper;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    sget-object v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$2;->INSTANCE:Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$2;

    invoke-interface {p1, v2, v1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startCameraActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    :goto_2
    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    const-wide/16 v0, 0x1388

    iget-object p1, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    const/16 v2, 0x3eb

    invoke-interface {p1, v2, v0, v1}, Lcom/android/systemui/util/concurrency/MessageRouter;->sendMessageDelayed(IJ)V

    iget-object p0, p0, Lcom/android/systemui/camera/CameraGestureHelper;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->readyForKeyguardDone()V

    return-void
.end method

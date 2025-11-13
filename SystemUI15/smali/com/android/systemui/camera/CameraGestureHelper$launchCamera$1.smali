.class public final Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic $isPowerDoubleTap:Z

.field public final synthetic this$0:Lcom/android/systemui/camera/CameraGestureHelper;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/android/systemui/camera/CameraGestureHelper;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    iput-boolean p3, p0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->$isPowerDoubleTap:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->$intent:Landroid/content/Intent;

    const-string v4, "isSecure"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    iget-object v3, v3, Lcom/android/systemui/camera/CameraGestureHelper;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object v4, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->$intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    check-cast v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isForegroundComponentName(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->$intent:Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->$intent:Landroid/content/Intent;

    const/high16 v4, 0x30010000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    iget-object v3, v3, Lcom/android/systemui/camera/CameraGestureHelper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->$isPowerDoubleTap:Z

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->$intent:Landroid/content/Intent;

    const v4, 0x4008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    :goto_0
    sget-boolean v3, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v3, :cond_3

    const-class v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v4, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v3, v3, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    iget-object v3, v3, Lcom/android/systemui/camera/CameraGestureHelper;->context:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v4, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/qp/util/SubscreenUtil;->getSubDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    iget-object v3, v3, Lcom/android/systemui/camera/CameraGestureHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    :goto_1
    iget-object v4, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    iget-object v4, v4, Lcom/android/systemui/camera/CameraGestureHelper;->activityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v4}, Landroid/app/IActivityTaskManager;->resumeAppSwitches()V

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    iget-object v3, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    iget-object v4, v3, Lcom/android/systemui/camera/CameraGestureHelper;->activityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, v3, Lcom/android/systemui/camera/CameraGestureHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    iget-object v3, v3, Lcom/android/systemui/camera/CameraGestureHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->$intent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    iget-object v3, v3, Lcom/android/systemui/camera/CameraGestureHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v15

    iget-object v0, v0, Lcom/android/systemui/camera/CameraGestureHelper$launchCamera$1;->this$0:Lcom/android/systemui/camera/CameraGestureHelper;

    iget-object v0, v0, Lcom/android/systemui/camera/CameraGestureHelper;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v16

    const/high16 v13, 0x10000000

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v4 .. v16}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v1, "CameraGestureHelper"

    const-string v2, "Unable to start camera activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

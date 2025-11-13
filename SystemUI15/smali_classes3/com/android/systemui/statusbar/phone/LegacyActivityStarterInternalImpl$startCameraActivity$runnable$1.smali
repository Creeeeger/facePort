.class public final Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$runnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

.field public final synthetic $intent:Landroid/content/Intent;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;Landroid/content/Intent;Lcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$runnable$1;->$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$runnable$1;->$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->assistManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v1, v1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->access$getSubDisplayID(Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;)I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$runnable$1;->$intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v12

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x10000000

    const/4 v11, 0x0

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v1, "LegacyActivityStarterInternalImpl"

    const-string v2, "Unable to start activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, -0x60

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startCameraActivity$runnable$1;->$callback:Lcom/android/systemui/plugins/ActivityStarter$Callback;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter$Callback;->onActivityStarted(I)V

    :cond_1
    return-void
.end method

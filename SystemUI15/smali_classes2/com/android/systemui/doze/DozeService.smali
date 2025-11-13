.class public Lcom/android/systemui/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Service;
.implements Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/dreams/DreamService;",
        "Lcom/android/systemui/doze/DozeMachine$Service;",
        "Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/Plugin;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

.field public mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

.field public final mDozeComponentBuilder:Lcom/android/systemui/doze/dagger/DozeComponent$Builder;

.field public mDozeMachine:Lcom/android/systemui/doze/AODMachine;

.field public mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public mFaceWidgetManagerLazy:Ldagger/Lazy;

.field public mIsOccluded:Z

.field public mIsUnlockedState:Z

.field public mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mPluginAODManagerLazy:Ldagger/Lazy;

.field public final mPluginConnectionRunnable:Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DozeService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/doze/dagger/DozeComponent$Builder;Lcom/android/systemui/plugins/PluginManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    new-instance v0, Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeService;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginConnectionRunnable:Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozeComponentBuilder:Lcom/android/systemui/doze/dagger/DozeComponent$Builder;

    sget-boolean p1, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    invoke-virtual {p0, p1}, Landroid/service/dreams/DreamService;->setDebug(Z)V

    iput-object p2, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    return-void
.end method


# virtual methods
.method public final dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    if-eqz p0, :cond_0

    const-string p1, " state="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mState:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, " mUiModeType="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/doze/DozeMachine;->mUiModeType:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, " wakeLockHeldForCurrentState="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLockHeldForCurrentState:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, " wakeLock="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/doze/DozeMachine;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "Parts:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    array-length p1, p0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    aget-object v0, p0, p3

    invoke-interface {v0, p2}, Lcom/android/systemui/doze/DozeMachine$Part;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeMachine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final onCreate()V
    .locals 15

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setWindowless(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "addPluginListener: called"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mFaceWidgetManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-boolean v0, v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mIsConnected:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v2, "com.android.systemui.action.PLUGIN_AOD"

    const-class v4, Lcom/android/systemui/plugins/aod/PluginAOD;

    const/4 v5, 0x0

    move-object v3, p0

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-string v9, "com.samsung.systemui.action.PLUGIN_CLOCK_PACK"

    const-class v11, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    const/4 v12, 0x0

    move-object v10, p0

    invoke-interface/range {v8 .. v14}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    goto :goto_0

    :cond_1
    const-string v0, "addPluginListener() PluginFaceWidget is not connected, wait connection"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mPluginConnectionRunnable:Lcom/android/systemui/doze/DozeService$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/PluginAODManager;->addConnectionRunnable(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeComponentBuilder:Lcom/android/systemui/doze/dagger/DozeComponent$Builder;

    invoke-interface {v0, p0}, Lcom/android/systemui/doze/dagger/DozeComponent$Builder;->build(Lcom/android/systemui/doze/DozeMachine$Service;)Lcom/android/systemui/doze/dagger/DozeComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/doze/dagger/DozeComponent;->getAODMachine()Lcom/android/systemui/doze/AODMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/doze/DozeMachine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/android/systemui/doze/DozeMachine$Part;->destroy()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    return-void
.end method

.method public final onDreamingStarted()V
    .locals 3

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SAFEMODE:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    const-string v1, "DozeService"

    if-nez v0, :cond_1

    const-string p0, "onDreamingStarted: mAODDozeMachine is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "onDreamingStarted: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    const-string v1, "DozeServiceHost"

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v0, "isUnLockedstate() called before initialize(), returning true"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    xor-int/2addr v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeService;->mIsUnlockedState:Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-nez v0, :cond_3

    const-string v0, "isOccludedstate() called before initialize(), returning false"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService;->mIsOccluded:Z

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_BRIGHTNESS_CONTROL:Z

    if-eqz v0, :cond_5

    const v0, 0x10002

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/service/dreams/DreamService;->semSetDozeScreenBrightness(II)V

    :cond_5
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->startDozing()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->startAlwaysOnDisplay()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->onRequestHideDoze()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->startClockPack()V

    :cond_7
    :goto_2
    return-void
.end method

.method public final onDreamingStopped()V
    .locals 2

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SAFEMODE:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    const-string v1, "DozeService"

    if-nez v0, :cond_1

    const-string p0, "onDreamingStopped: mDozeMachine is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "onDreamingStopped: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->stopAlwaysOnDisplay()V

    :cond_2
    return-void
.end method

.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 3

    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p2}, Lcom/android/systemui/doze/PluginAODManager;->initAODOverlayContainer()V

    iget-object p2, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "DozeService"

    if-nez p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onPluginConnected: aodMachine is null, plugin="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    instance-of v1, p1, Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPluginConnected: PluginAOD plugin="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/android/systemui/plugins/aod/PluginAOD;

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/PluginAODManager;->setAODPlugin(Lcom/android/systemui/plugins/aod/PluginAOD;)V

    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iput-object p2, p1, Lcom/android/systemui/doze/PluginAODManager;->mAODMachine:Lcom/android/systemui/doze/AODMachine;

    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/aod/PluginAOD;->setAODPluginCallback(Lcom/android/systemui/plugins/aod/PluginAOD$Callback;)V

    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p1}, Lcom/android/systemui/plugins/aod/PluginAOD;->getAODParameter()Lcom/android/systemui/plugins/aod/PluginAODParameter;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/systemui/doze/AODMachine;->getAODDozeBrightness()Lcom/android/systemui/doze/AODScreenBrightness;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/plugins/aod/PluginAODParameter;->getSensorToBrightness()[I

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/plugins/aod/PluginAODParameter;->getSensorToBrightness()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/plugins/aod/PluginAODParameter;->getSensorToBrightness()[I

    move-result-object p1

    iput-object p1, p2, Lcom/android/systemui/doze/AODScreenBrightness;->mBrightnessValues:[I

    :cond_2
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->startAlwaysOnDisplay()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->onRequestHideDoze()V

    goto :goto_1

    :cond_3
    instance-of v1, p1, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPluginConnected: PluginClockPack plugin="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    iput-object v0, p1, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/android/systemui/doze/PluginAODManager;->mAODUICallback:Lcom/android/systemui/doze/PluginAODManager$6;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->setAODUICallback(Lcom/android/systemui/plugins/aod/PluginAOD$UICallback;)V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->setAODPluginCallback(Lcom/android/systemui/plugins/aod/PluginAOD$Callback;)V

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->canDoze()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->isDozing()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->startClockPack()V

    goto :goto_1

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onPluginConnected: abnormal plugin="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->onRequestHideDoze()V

    :cond_6
    :goto_1
    return-void
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 3

    instance-of v0, p1, Lcom/android/systemui/plugins/aod/PluginAOD;

    const-string v1, "DozeService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onPluginDisconnected: PluginAOD plugin="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v1, p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iput-boolean v0, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->dozing:Z

    invoke-virtual {p1, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->stopAlwaysOnDisplay()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onPluginDisconnected: PluginClockPack plugin="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/doze/PluginAODManager;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/doze/PluginAODManager;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stopClockPack: mClockPackPlugin="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->onDreamingStopped()V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    :cond_1
    :goto_0
    return-void
.end method

.method public final onRequestHideDoze()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_0
    return-void
.end method

.method public final onRequestShowDoze()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_0
    return-void
.end method

.method public final requestWakeUp(I)V
    .locals 5

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v4, 0x6

    if-eq p1, v4, :cond_3

    const/16 v2, 0x9

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x11

    goto :goto_0

    :cond_1
    const/16 v2, 0xf

    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->reasonToString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "com.android.systemui:NODOZE "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method public final setDozeScreenState(I)V
    .locals 5

    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->setDozeScreenState(I)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/AODMachine;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLog;->mLogger:Lcom/android/systemui/doze/DozeLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/doze/DozeLogger$logDisplayStateChanged$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logDisplayStateChanged$2;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/android/systemui/doze/DozeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "DozeLog"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v2, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine;->mParts:[Lcom/android/systemui/doze/DozeMachine$Part;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lcom/android/systemui/doze/DozeMachine$Part;->onScreenState(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final startAlwaysOnDisplay()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startAlwaysOnDisplay: mAODPlugin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " unlockedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mIsUnlockedState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " occlude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService;->mIsOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " screenOffMemoRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isScreenOffMemoRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " bouncerFullyShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBouncerFullyShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " aodFullscreenMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v1}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " shouldControlUnlockedScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v1, v1, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldPlayUnlockedScreenOffAnimation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " shouldControlScreenOff()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v1, v1, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    const-string v2, "DozeService"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    sget-boolean v2, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mAODAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    invoke-virtual {v2}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODFullScreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v2, v2, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->shouldPlayUnlockedScreenOffAnimation()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeService;->mIsUnlockedState:Z

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeService;->mIsOccluded:Z

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isScreenOffMemoRunning()Z

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBouncerFullyShown()Z

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v2, v2, Lcom/android/systemui/doze/PluginAODManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(IZ)V

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v2, v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->getNotificationPanelView()Lcom/android/systemui/shade/NotificationShadeWindowView;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_AOD_BY_FOLDER_EVENT:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/doze/PluginAODManager;

    iget-boolean v3, v3, Lcom/android/systemui/doze/PluginAODManager;->mStartedByFolderClosed:Z

    const/4 v4, 0x3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    iget-object v3, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/doze/PluginAODManager;->setStartedByFolderClosed(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;->set(II)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {p0, v2, v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->onDreamingStarted(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public final startClockPack()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startClockPack: mClockPackPlugin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->getNotificationPanelView()Lcom/android/systemui/shade/NotificationShadeWindowView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mClockPackPlugin:Lcom/android/systemui/plugins/clockpack/PluginClockPack;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager;->mSysUIConfig:Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;

    invoke-interface {v1, v0, p0}, Lcom/android/systemui/plugins/clockpack/PluginClockPack;->onDreamingStarted(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/aod/PluginAODSystemUIConfiguration;)V

    :cond_0
    return-void
.end method

.method public final stopAlwaysOnDisplay()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stopAlwaysOnDisplay: mAODPlugin="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/PluginAODManager;->setAODPlugin(Lcom/android/systemui/plugins/aod/PluginAOD;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    invoke-interface {v0}, Lcom/android/systemui/plugins/aod/PluginAOD;->onDreamingStopped()V

    iput-object v1, p0, Lcom/android/systemui/doze/DozeService;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    :cond_0
    return-void
.end method

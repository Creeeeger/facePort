.class public final Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qp/SubscreenQSControllerContract$Presenter;


# static fields
.field public static mContext:Landroid/content/Context;

.field public static sInstance:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;


# instance fields
.field public final mDisplayListener:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$1;

.field public mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

.field public final mUiHandler:Landroid/os/Handler;

.field public final mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$1;-><init>(Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;)V

    new-instance v1, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;-><init>(Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;)V

    iput-object v1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessObserver:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;

    sput-object p1, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_0
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;
    .locals 1

    sget-object v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->sInstance:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    if-nez v0, :cond_0

    sput-object p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->sInstance:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    :cond_0
    sget-object p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->sInstance:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    return-object p0
.end method


# virtual methods
.method public final finishFlashLightActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->getActivityState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    check-cast p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->finishFlashLightActivity()V

    :cond_0
    return-void
.end method

.method public final registerReceiver(Z)V
    .locals 0

    return-void
.end method

.method public final startFlashActivity()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    const-string v1, "SubscreenFlashLightController"

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    invoke-virtual {v0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->getActivityState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "FlashLight presentation Activity already in stack or in top: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    check-cast p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->getActivityState()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "FlashLight presentation Activity starting"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qp/util/SubscreenUtil;

    sget-object v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mContext:Landroid/content/Context;

    const-string v1, "com.android.systemui.qp.flashlight.SubroomFlashLightSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qp/util/SubscreenUtil;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final unRegisterReceiver(Z)V
    .locals 0

    return-void
.end method

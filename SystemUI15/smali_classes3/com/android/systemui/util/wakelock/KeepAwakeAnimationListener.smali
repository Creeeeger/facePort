.class public Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeepAwakeAnimListener"

.field static sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-object p0, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const-string v0, "animation"

    invoke-static {p1, p0, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLockLogger;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    :cond_0
    return-void
.end method

.method private onEnd()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-object p0, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v0, "KeepAwakeAnimListener"

    invoke-interface {p0, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    return-void
.end method

.method private onStart()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-object p0, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->sWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v0, "KeepAwakeAnimListener"

    invoke-interface {p0, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->onEnd()V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->onEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->onStart()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/wakelock/KeepAwakeAnimationListener;->onStart()V

    return-void
.end method

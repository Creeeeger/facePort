.class public final Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/ambient/touch/TouchHandler;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mHiddenCallback:Ljava/lang/Runnable;

.field public final mHideComplications:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$2;

.field public final mOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mRestoreComplications:Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$1;

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mVisibilityController:Lcom/android/systemui/complication/Complication$VisibilityController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "HideComplicationHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/complication/Complication$VisibilityController;IILcom/android/systemui/touch/TouchInsetManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dreams/DreamOverlayStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    new-instance p2, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$1;-><init>(Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;)V

    new-instance p2, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler$2;-><init>(Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mVisibilityController:Lcom/android/systemui/complication/Complication$VisibilityController;

    iput-object p5, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p6, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p7, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    return-void
.end method


# virtual methods
.method public final onSessionStart(Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V
    .locals 3

    const-string v0, "HideComplicationHandler"

    sget-boolean v1, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v2, "onSessionStart"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result p0

    sget-object v2, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not fading. Active session count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mTouchMonitor:Lcom/android/systemui/ambient/touch/TouchMonitor;

    iget-object v2, v2, Lcom/android/systemui/ambient/touch/TouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Bouncer showing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->pop()V

    return-void
.end method

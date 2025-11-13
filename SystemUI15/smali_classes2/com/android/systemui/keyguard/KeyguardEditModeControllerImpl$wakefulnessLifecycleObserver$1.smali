.class public final Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$wakefulnessLifecycleObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$wakefulnessLifecycleObserver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartedGoingToSleep()V
    .locals 2

    const-string v0, "KeyguardEditModeController"

    const-string v1, "onStartedGoingToSleep"

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl$wakefulnessLifecycleObserver$1;->this$0:Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->startCancelAnimationFunction:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    return-void
.end method

.class public final Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->viewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->setFoldOpenState(I)V

    :cond_0
    return-void
.end method

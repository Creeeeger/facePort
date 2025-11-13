.class public final Lcom/android/systemui/statusbar/phone/TapAgainViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field public final mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mDoubleTapTimeMs:J

.field public mHideCanceler:Ljava/lang/Runnable;


# direct methods
.method public static $r8$lambda$RI85HBul7dnFWQwIiM-PGhllBiQ(Lcom/android/systemui/statusbar/phone/TapAgainViewController;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->mHideCanceler:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/TapAgainView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TapAgainView;->animateOut()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/TapAgainView;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/policy/ConfigurationController;J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/TapAgainViewController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/TapAgainViewController$1;-><init>(Lcom/android/systemui/statusbar/phone/TapAgainViewController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-wide p4, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->mDoubleTapTimeMs:J

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/statusbar/phone/TapAgainViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/systemui/statusbar/phone/TapAgainViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final onViewAttached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final show()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->mHideCanceler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/TapAgainView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TapAgainView;->animateIn()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/TapAgainViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TapAgainViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/TapAgainViewController;)V

    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->mDoubleTapTimeMs:J

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->mDelayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v3, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TapAgainViewController;->mHideCanceler:Ljava/lang/Runnable;

    return-void
.end method

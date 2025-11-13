.class public final Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeAllIndications()V

    :cond_0
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIsScreenOn:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addInitialIndication()V

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    return-void
.end method

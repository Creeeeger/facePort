.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1$onPostFinishedWakingUp$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1$onPostFinishedWakingUp$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1$onPostFinishedWakingUp$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "cancel blank scrim"

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$init$1$onPostFinishedWakingUp$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->scrimControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onScreenTurnedOn()V

    return-void
.end method

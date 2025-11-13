.class public final Lcom/android/systemui/wmshell/BubblesManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wmshell/BubblesManager;

.field public final synthetic val$keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/BubblesManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/wmshell/BubblesManager$1;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    iput-object p2, p0, Lcom/android/systemui/wmshell/BubblesManager$1;->val$keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$1;->val$keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "onKeyguardShowingChanged: isUnlockedShade="

    const-string v2, "Bubbles"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/wmshell/BubblesManager$1;->this$0:Lcom/android/systemui/wmshell/BubblesManager;

    iput-boolean v0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mIsScreenUnlocked:Z

    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager;->mSysuiUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/BubblesManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wmshell/BubblesManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

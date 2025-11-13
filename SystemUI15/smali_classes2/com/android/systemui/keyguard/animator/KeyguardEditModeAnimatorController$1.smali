.class public final Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    sget v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    move-result v0

    const-string/jumbo v1, "rotation "

    const-string v2, " "

    const-string v3, "KeyguardEditModeAnimatorController"

    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    iget-object p1, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    iget-object p1, p1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->cancel()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->resetViews()V

    :cond_0
    return-void
.end method

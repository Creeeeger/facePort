.class public final Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardEditModeController$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnded()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setVisible(Z)V

    return-void
.end method

.method public final onAnimationStarted(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$1;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setVisible(Z)V

    return-void
.end method

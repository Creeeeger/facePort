.class public final Lcom/android/systemui/statusbar/KeyguardSecIndicationController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrimaryBouncerShowingChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mPrimaryBouncerShowing:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mIndicationPolicy:Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationPolicy;->removeAllIndications()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setVisible(Z)V

    :goto_0
    return-void
.end method

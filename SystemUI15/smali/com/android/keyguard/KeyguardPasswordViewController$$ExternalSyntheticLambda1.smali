.class public final synthetic Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardPasswordViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPasswordViewController;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardPasswordViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardPasswordViewController;

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onCancelClicked()V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/android/keyguard/KeyguardPasswordViewController;->$r8$lambda$Pb-6RdnaWPPJK13KjtHJDiHXFvo(Lcom/android/keyguard/KeyguardPasswordViewController;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

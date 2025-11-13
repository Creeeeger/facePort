.class public final synthetic Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda8;->f$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->initializeBottomContainerView$1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

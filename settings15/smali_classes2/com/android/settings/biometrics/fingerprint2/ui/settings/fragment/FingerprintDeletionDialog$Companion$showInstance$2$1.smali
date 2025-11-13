.class public final Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$Companion$showInstance$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$Companion$showInstance$2$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$Companion$showInstance$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$Companion$showInstance$2$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$Companion$showInstance$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintDeletionDialog$Companion$showInstance$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

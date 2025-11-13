.class public final Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$onClick$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;

.field public final synthetic $dialog:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog;

.field public final synthetic $fp:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$onClick$1;->$dialog:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$onClick$1;->$fp:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$onClick$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$onClick$1;->$dialog:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    move-result-object p1

    const p2, 0x7f0a0648

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.ImeAwareEditText"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$onClick$1;->$fp:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    iget-object p2, p2, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$onClick$1;->$fp:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$onClick$1;->$dialog:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rename "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ".name to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FingerprintSettingsRenameDialog"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$onClick$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    new-instance v0, Lkotlin/Pair;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$onClick$1;->$fp:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsRenameDialog$Companion$showInstance$2$onClick$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.class public final Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic $this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;

.field public final synthetic $useAlphaNumeric:Z

.field public final synthetic $useRetryStrings:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;

    iput-boolean p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;->$useRetryStrings:Z

    iput-boolean p3, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;->$useAlphaNumeric:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;

    const v0, 0x7f0a02f9

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x7f131064

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-boolean v1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;->$useRetryStrings:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13046a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;

    const v1, 0x7f0a02fb

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f131065

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f06004e

    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;

    const v1, 0x7f0a02fa

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;->$useAlphaNumeric:Z

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget-object v2, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_1

    const/16 v2, 0x81

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$1;

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3$2;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createSecPinDialog$2$3$2;-><init>(Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.class public final Lcom/samsung/android/settings/lockscreen/ContactInformation$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$1;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-lez p3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$1;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$1;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

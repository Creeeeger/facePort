.class Lcom/samsung/android/settings/lockscreen/ContactInformation$3;
.super Ljava/lang/Object;
.source "ContactInformation.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/ContactInformation;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$3;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-lez p3, :cond_0

    .line 268
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$3;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/app/AlertDialog;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 256
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$3;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p2}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/app/AlertDialog;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 257
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 259
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$3;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmOwnerInfoEditText(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/EditText;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$3;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmOwnerInfoEditText(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/EditText;

    move-result-object p0

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setGravity(I)V

    :goto_0
    return-void
.end method

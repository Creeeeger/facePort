.class Lcom/android/settingslib/users/EditUserInfoController$1;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/users/EditUserInfoController;->createDialog(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/users/EditUserInfoController;


# direct methods
.method constructor <init>(Lcom/android/settingslib/users/EditUserInfoController;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController$1;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

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

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 161
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    .line 162
    iget-object p0, p0, Lcom/android/settingslib/users/EditUserInfoController$1;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-static {p0}, Lcom/android/settingslib/users/EditUserInfoController;->-$$Nest$fgetmEditUserInfoDialog(Lcom/android/settingslib/users/EditUserInfoController;)Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Landroid/app/AlertDialog;

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/users/EditUserInfoController$1;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-static {p0}, Lcom/android/settingslib/users/EditUserInfoController;->-$$Nest$fgetmEditUserInfoDialog(Lcom/android/settingslib/users/EditUserInfoController;)Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Landroid/app/AlertDialog;

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

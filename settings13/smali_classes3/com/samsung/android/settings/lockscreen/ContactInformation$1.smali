.class Lcom/samsung/android/settings/lockscreen/ContactInformation$1;
.super Ljava/lang/Object;
.source "ContactInformation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/ContactInformation;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    .line 113
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$1;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$1;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->-$$Nest$fgetmOwnerInfoEditText(Lcom/samsung/android/settings/lockscreen/ContactInformation;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 117
    check-cast p1, Landroid/app/AlertDialog;

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

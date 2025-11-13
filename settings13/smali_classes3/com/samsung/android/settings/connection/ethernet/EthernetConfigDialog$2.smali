.class Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$2;
.super Ljava/lang/Object;
.source "EthernetConfigDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->buildDialogContent(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 182
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->-$$Nest$fgetstaticInputView(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->-$$Nest$fgetmConTypeManual(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setNextFocusDownId(I)V

    .line 184
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->-$$Nest$fgetmConTypeManual(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 185
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->-$$Nest$fgetmConTypeManual(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->-$$Nest$fgetmIpaddr(Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 188
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    return-void
.end method

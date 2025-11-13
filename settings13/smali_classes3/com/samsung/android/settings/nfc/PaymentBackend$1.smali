.class Lcom/samsung/android/settings/nfc/PaymentBackend$1;
.super Ljava/lang/Object;
.source "PaymentBackend.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/PaymentBackend;->showErrorDialog(IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentBackend;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentBackend;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 344
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 345
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nfc/PaymentBackend;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/content/DialogInterface;

    if-eqz p1, :cond_0

    .line 346
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentBackend$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/PaymentBackend;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nfc/PaymentBackend;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/content/DialogInterface;

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method

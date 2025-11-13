.class Lcom/samsung/android/settings/nfc/PaymentDefaultDialog$2;
.super Ljava/lang/Object;
.source "PaymentDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->onPaymentDefaultValidityVerified(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog$2;->this$0:Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 264
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 265
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog$2;->this$0:Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 266
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog$2;->this$0:Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentDefaultDialog;->dismiss()V

    return-void
.end method

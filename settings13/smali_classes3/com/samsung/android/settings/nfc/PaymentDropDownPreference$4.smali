.class Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;
.super Ljava/lang/Object;
.source "PaymentDropDownPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setResult(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field preferredClick:Z

.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

.field final synthetic val$handler2:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

.field final synthetic val$setClicked:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;ILcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;Landroid/app/ProgressDialog;Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler2:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 258
    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmNfcAdapter(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->setPreferredSimSlot(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredSimSlot("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentDropDownPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 265
    iget v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 266
    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 267
    iput v1, v0, Landroid/os/Message;->what:I

    .line 279
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler2:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 284
    iget v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    iput v2, v0, Landroid/os/Message;->what:I

    .line 286
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler2:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    const/4 v1, 0x0

    .line 271
    iput v1, v0, Landroid/os/Message;->what:I

    .line 274
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmIndex(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fputmIndex(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;I)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmSpinner(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmIndex(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

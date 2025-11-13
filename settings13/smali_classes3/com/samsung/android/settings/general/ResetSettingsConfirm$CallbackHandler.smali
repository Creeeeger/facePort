.class public Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;
.super Landroid/os/Handler;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/general/ResetSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 297
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 308
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string p1, "ResetSettings"

    const-string v0, "Acc Reset Complete!"

    .line 299
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->accreset_done_message:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {v0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 302
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 303
    iget-object p1, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-static {p1}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->-$$Nest$fgetmService(Lcom/samsung/android/settings/general/ResetSettingsConfirm;)Landroid/os/Messenger;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 304
    iget-object p0, p0, Lcom/samsung/android/settings/general/ResetSettingsConfirm$CallbackHandler;->this$0:Lcom/samsung/android/settings/general/ResetSettingsConfirm;

    invoke-virtual {p0}, Lcom/samsung/android/settings/general/ResetSettingsConfirm;->unregisterAccCallbackFromService()V

    :cond_1
    :goto_0
    return-void
.end method

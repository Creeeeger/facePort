.class public final Lcom/samsung/android/settings/biometrics/Wallet24Service$1$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/biometrics/Wallet24Service$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/biometrics/Wallet24Service$1;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service$1$1;->this$1:Lcom/samsung/android/settings/biometrics/Wallet24Service$1;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service$1$1;->this$1:Lcom/samsung/android/settings/biometrics/Wallet24Service$1;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service$1;->this$0:Lcom/samsung/android/settings/biometrics/Wallet24Service;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "CA_packageName_list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mAppList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service$1;->this$0:Lcom/samsung/android/settings/biometrics/Wallet24Service;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/Wallet24Service;->unbindService()V

    :cond_0
    return-void
.end method

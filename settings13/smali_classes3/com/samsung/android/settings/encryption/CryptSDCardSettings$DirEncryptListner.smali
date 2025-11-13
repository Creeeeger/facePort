.class Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
.super Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;
.source "CryptSDCardSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/encryption/CryptSDCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirEncryptListner"
.end annotation


# instance fields
.field public mStatus:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;-><init>()V

    const-string p1, "none"

    .line 158
    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->mStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEncryptionStatusChanged: operation, volId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CryptKeeperSDSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    const-string p1, "free"

    .line 162
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 163
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetmSse(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Lcom/samsung/android/security/SemSdCardEncryption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object p1

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "status free: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string p2, "ejecting"

    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetserviceBusy(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 168
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 166
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_2
    const-string p1, "busy"

    .line 172
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "status busy"

    .line 173
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p1, p4}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fputmProgressValue(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;I)V

    .line 175
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetmStorageValue(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)I

    move-result p1

    if-nez p1, :cond_3

    .line 176
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p1, p5}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fputmStorageValue(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;I)V

    :cond_3
    const/4 p1, 0x2

    if-ne p2, p1, :cond_4

    .line 180
    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p2, v0}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fputmDoEncrypt(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;Z)V

    .line 182
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 183
    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_5
    const-string p1, "Mount"

    .line 186
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "status mount"

    .line 187
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetserviceBusy(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 189
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetfromWhere(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MainClearConfirm"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "MainClearConfirm Case , Device will be Reset to Factory Default !!!"

    .line 192
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 194
    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p4, -0x1

    invoke-virtual {p2, p4, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 195
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 198
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetmDoEncrypt(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "Encrypt Success Case"

    goto :goto_1

    :cond_7
    const-string p1, "Decrypt Success Case"

    :goto_1
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->getMetricsCategory()I

    move-result p1

    .line 200
    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->-$$Nest$fgetmDoEncrypt(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/16 p2, 0x25ef

    goto :goto_2

    :cond_8
    const/16 p2, 0x25f0

    .line 199
    :goto_2
    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_3

    :cond_9
    const-string p1, "ignore status"

    .line 205
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_a
    :goto_3
    iput-object p3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->mStatus:Ljava/lang/String;

    return-void
.end method

.class public final Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;
.super Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mStatus:Ljava/lang/String;

.field public final synthetic this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-direct {p0}, Lcom/samsung/android/security/IDirEncryptServiceListener$Stub;-><init>()V

    const-string/jumbo p1, "none"

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->mStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onEncryptionStatusChanged: operation, volId = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CryptKeeperSDSettings"

    invoke-static {v0, p3, v1}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b

    const-string p1, "free"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {p1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "status free: "

    invoke-static {p2, p1, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p2, "ejecting"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    iget-boolean p2, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz p2, :cond_b

    iget-object p1, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_2
    const-string p1, "busy"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x2

    if-eqz p1, :cond_5

    const-string/jumbo p1, "status busy"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    iput p4, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mProgressValue:I

    iget p4, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    if-nez p4, :cond_3

    iput p5, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mStorageValue:I

    :cond_3
    if-ne p2, v2, :cond_4

    iput-boolean v0, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_5
    const-string p1, "Mount"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string/jumbo p1, "status mount"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    iget-boolean p4, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->serviceBusy:Z

    if-eqz p4, :cond_b

    iget-object p1, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mHandler:Lcom/samsung/android/settings/encryption/CryptSDCardSettings$1;

    const/4 p4, 0x4

    invoke-virtual {p1, p4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->fromWhere:Ljava/lang/String;

    const-string p4, "MainClearConfirm"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "MainClearConfirm Case , Device will be Reset to Factory Default !!!"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p4, -0x1

    invoke-virtual {p2, p4, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_6
    if-ne p2, v2, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    iput-boolean v0, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    iget-boolean p1, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz p1, :cond_8

    const-string p1, "Encrypt Success Case"

    goto :goto_1

    :cond_8
    const-string p1, "Decrypt Success Case"

    :goto_1
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->this$0:Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    iget-boolean p1, p1, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;->mDoEncrypt:Z

    if-eqz p1, :cond_9

    const/16 p1, 0x25ef

    goto :goto_2

    :cond_9
    const/16 p1, 0x25f0

    :goto_2
    const/16 p2, 0x1194

    invoke-static {p2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_3

    :cond_a
    const-string p1, "ignore status"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    iput-object p3, p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings$DirEncryptListner;->mStatus:Ljava/lang/String;

    return-void
.end method

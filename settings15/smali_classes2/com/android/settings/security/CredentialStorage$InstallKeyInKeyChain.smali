.class public final Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAlias:Ljava/lang/String;

.field public final mCaListData:[B

.field public final mCertData:[B

.field public final mKeyData:[B

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/settings/security/CredentialStorage;


# direct methods
.method public constructor <init>(Lcom/android/settings/security/CredentialStorage;Ljava/lang/String;[B[B[BI)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->this$0:Lcom/android/settings/security/CredentialStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mAlias:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mKeyData:[B

    iput-object p4, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mCertData:[B

    iput-object p5, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mCaListData:[B

    iput p6, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mUid:I

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, [Ljava/lang/Void;

    const-string p1, "CredentialStorage"

    const-string v0, "Failed installing key "

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->this$0:Lcom/android/settings/security/CredentialStorage;

    invoke-static {v1}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v8

    iget-object v3, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mKeyData:[B

    iget-object v4, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mCertData:[B

    iget-object v5, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mCaListData:[B

    iget-object v6, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mAlias:Ljava/lang/String;

    iget v7, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mUid:I

    move-object v2, v8

    invoke-interface/range {v2 .. v7}, Landroid/security/IKeyChainService;->installKeyPair([B[B[BLjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mAlias:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_3
    iget v0, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mUid:I

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mAlias:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v8, v0, v2}, Landroid/security/IKeyChainService;->setUserSelectable(Ljava/lang/String;Z)V

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    iget-object p0, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mAlias:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interrupted while installing key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    :goto_4
    iget-object v1, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mAlias:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mUid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Failed to install key %s to uid %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object v0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->this$0:Lcom/android/settings/security/CredentialStorage;

    iget-object v1, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mAlias:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/security/CredentialStorage$InstallKeyInKeyChain;->mUid:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v2, Lcom/android/settings/security/CredentialStorage;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "CredentialStorage"

    if-nez p1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Error installing alias %s for uid %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Successfully installed alias %s to uid %d."

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.security.action.KEYCHAIN_CHANGED"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

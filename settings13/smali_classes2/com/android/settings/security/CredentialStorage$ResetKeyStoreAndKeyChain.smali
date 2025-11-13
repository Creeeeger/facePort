.class Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;
.super Landroid/os/AsyncTask;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CredentialStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetKeyStoreAndKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/security/CredentialStorage;


# direct methods
.method private constructor <init>(Lcom/android/settings/security/CredentialStorage;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/security/CredentialStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/security/CredentialStorage;Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/security/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    .line 281
    iget-object p1, p0, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/security/CredentialStorage;

    invoke-static {p1}, Lcom/android/settings/security/CredentialStorage;->-$$Nest$fgetmUtils(Lcom/android/settings/security/CredentialStorage;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->resetKeyStore(I)V

    .line 285
    iget-object p1, p0, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/security/CredentialStorage;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 286
    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    .line 292
    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 293
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 298
    :cond_0
    iget-object v6, p0, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/security/CredentialStorage;

    .line 299
    invoke-static {v6, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    .line 302
    :try_start_1
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v6

    invoke-interface {v6}, Landroid/security/IKeyChainService;->reset()Z

    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 308
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 306
    :catch_0
    :try_start_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    :try_start_4
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    return-object p0

    :goto_2
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 309
    throw p0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    const-string p0, "CredentialStorage"

    const-string p1, "CredentialStorage is destroyed"

    .line 317
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 311
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 312
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    if-ne v1, v4, :cond_3

    const/4 v2, 0x1

    .line 321
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 275
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 327
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/security/CredentialStorage;

    sget v1, Lcom/android/settings/R$string;->credentials_erased:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 329
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 330
    iget-object p1, p0, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/security/CredentialStorage;

    invoke-static {p1}, Lcom/android/settings/security/CredentialStorage;->-$$Nest$mclearLegacyVpnIfEstablished(Lcom/android/settings/security/CredentialStorage;)V

    goto :goto_0

    .line 332
    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/security/CredentialStorage;

    sget v1, Lcom/android/settings/R$string;->credentials_not_erased:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 335
    :goto_0
    iget-object p0, p0, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;->this$0:Lcom/android/settings/security/CredentialStorage;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 275
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/security/CredentialStorage$ResetKeyStoreAndKeyChain;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

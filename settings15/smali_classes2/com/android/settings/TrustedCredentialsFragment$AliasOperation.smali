.class public final Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

.field public final synthetic this$0:Lcom/android/settings/TrustedCredentialsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    iput-object p0, p1, Lcom/android/settings/TrustedCredentialsFragment;->mAliasOperation:Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;

    const/16 p0, 0x11a4

    sput p0, Lcom/android/settings/TrustedCredentialsFragment;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH:I

    const/16 p0, 0x3e8

    sput p0, Lcom/android/settings/TrustedCredentialsFragment;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_ON:I

    const/4 p0, 0x0

    sput p0, Lcom/android/settings/TrustedCredentialsFragment;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_OFF:I

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, [Ljava/lang/Void;

    :try_start_0
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    monitor-enter p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsFragment;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    iget v1, v1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/KeyChain$KeyChainConnection;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->isSystemCert()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/settings/TrustedCredentialsFragment;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH:I

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    iget-boolean v2, v2, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mDeleted:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/android/settings/TrustedCredentialsFragment;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_ON:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/android/settings/TrustedCredentialsFragment;->SETTINTS_VIEW_CERTIFICATES_LIST_SWITCH_TURN_OFF:I

    :goto_0
    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    iget-boolean v2, v1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mDeleted:Z

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    monitor-exit p1

    goto :goto_2

    :cond_3
    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "TrustedCredentialsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while toggling alias "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object v0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    iget-boolean v0, v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mDeleted:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mDeleted:Z

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget v1, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;->mCertHolder:Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    iget-object p1, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mAdapter:Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;

    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->load()V

    :goto_1
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment;->mAliasOperation:Lcom/android/settings/TrustedCredentialsFragment$AliasOperation;

    return-void
.end method

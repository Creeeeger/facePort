.class public final synthetic Lcom/android/settings/security/CredentialManagementAppPolicyPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/security/CredentialManagementAppPolicyPreference;

.field public final synthetic f$1:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/security/CredentialManagementAppPolicyPreference;Landroidx/preference/PreferenceViewHolder;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/CredentialManagementAppPolicyPreference;

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/CredentialManagementAppPolicyPreference;

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceViewHolder;

    iget-boolean v1, v0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference;->mHasCredentialManagerPackage:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0a0c68

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/android/settings/security/CredentialManagementAppAdapter;

    iget-object v4, v0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference;->mCredentialManagerPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference;->mCredentialManagerPolicy:Landroid/security/AppUriAuthenticationPolicy;

    invoke-virtual {v0}, Landroid/security/AppUriAuthenticationPolicy;->getAppAndUriMappings()Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/security/CredentialManagementAppAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZZ)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/CredentialManagementAppPolicyPreference;

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v2}, Landroid/security/IKeyChainService;->hasCredentialManagementApp()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference;->mHasCredentialManagerPackage:Z

    invoke-interface {v2}, Landroid/security/IKeyChainService;->getCredentialManagementAppPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference;->mCredentialManagerPackageName:Ljava/lang/String;

    invoke-interface {v2}, Landroid/security/IKeyChainService;->getCredentialManagementAppPolicy()Landroid/security/AppUriAuthenticationPolicy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference;->mCredentialManagerPolicy:Landroid/security/AppUriAuthenticationPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v1, "CredentialManagementApp"

    const-string v2, "Unable to display credential management app policy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, v0, Lcom/android/settings/security/CredentialManagementAppPolicyPreference;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/security/CredentialManagementAppPolicyPreference$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v3}, Lcom/android/settings/security/CredentialManagementAppPolicyPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/CredentialManagementAppPolicyPreference;Landroidx/preference/PreferenceViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

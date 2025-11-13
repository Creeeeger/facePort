.class public final synthetic Lcom/android/settings/security/RequestManageCredentials$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/security/RequestManageCredentials;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/security/RequestManageCredentials;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/security/RequestManageCredentials$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/security/RequestManageCredentials$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/RequestManageCredentials;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/android/settings/security/RequestManageCredentials$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/security/RequestManageCredentials$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/security/RequestManageCredentials;

    packed-switch p1, :pswitch_data_0

    sget p1, Lcom/android/settings/security/RequestManageCredentials;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mKeyChainConnection:Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {p1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/security/RequestManageCredentials;->mCredentialManagerPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/security/RequestManageCredentials;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    invoke-interface {p1, v0, v1}, Landroid/security/IKeyChainService;->setCredentialManagementApp(Ljava/lang/String;Landroid/security/AppUriAuthenticationPolicy;)V

    const/16 p1, 0xb4

    invoke-static {p1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ManageCredentials"

    const-string v1, "Unable to set credential manager app"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0xb6

    invoke-static {p1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    sget p1, Lcom/android/settings/security/RequestManageCredentials;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0xb5

    invoke-static {p1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_1
    iget-boolean p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mIsLandscapeMode:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    invoke-virtual {p1}, Landroid/security/AppUriAuthenticationPolicy;->getAppAndUriMappings()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    sub-int/2addr p1, v0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    invoke-virtual {p1}, Landroid/security/AppUriAuthenticationPolicy;->getAppAndUriMappings()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    :goto_1
    iget-object v1, p0, Lcom/android/settings/security/RequestManageCredentials;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mExtendedFab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(I)V

    invoke-virtual {p0}, Lcom/android/settings/security/RequestManageCredentials;->showButtonPanel()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public Lcom/android/settings/security/RequestManageCredentials;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

.field public mButtonPanel:Landroid/widget/LinearLayout;

.field public mCredentialManagerPackage:Ljava/lang/String;

.field public mDisplayingButtonPanel:Z

.field public mExtendedFab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field public mIsLandscapeMode:Z

.field public mKeyChainConnection:Landroid/security/KeyChain$KeyChainConnection;

.field public mKeyChainTread:Landroid/os/HandlerThread;

.field public mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/security/RequestManageCredentials;->mDisplayingButtonPanel:Z

    iput-boolean v0, p0, Lcom/android/settings/security/RequestManageCredentials;->mIsLandscapeMode:Z

    return-void
.end method


# virtual methods
.method public getKeyChainConnection(Landroid/content/Context;Landroid/os/HandlerThread;)Landroid/security/KeyChain$KeyChainConnection;
    .locals 0

    new-instance p0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p1, p0, p2}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Faile to bind to KeyChain"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.security.MANAGE_CREDENTIALS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0xb6

    const/4 v1, 0x0

    const-string v2, "ManageCredentials"

    if-nez p1, :cond_0

    const-string p1, "Unable to start activity because intent action is not android.security.MANAGE_CREDENTIALS"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUser()Landroid/os/UserHandle;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_b

    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mCredentialManagerPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Unknown credential manager app"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    const/16 p1, 0xb2

    invoke-static {p1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    iget-object v3, p0, Lcom/android/settings/security/RequestManageCredentials;->mCredentialManagerPackage:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    const p1, 0x7f0d05d3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v3, 0x80000

    invoke-virtual {p1, v3}, Landroid/view/Window;->addSystemFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p1, v3, :cond_4

    move p1, v4

    goto :goto_0

    :cond_4
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mIsLandscapeMode:Z

    new-instance p1, Landroid/os/HandlerThread;

    const-string v3, "KeyChainConnection"

    invoke-direct {p1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mKeyChainTread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mKeyChainTread:Landroid/os/HandlerThread;

    invoke-virtual {p0, p0, p1}, Lcom/android/settings/security/RequestManageCredentials;->getKeyChainConnection(Landroid/content/Context;Landroid/os/HandlerThread;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mKeyChainConnection:Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "android.security.extra.AUTHENTICATION_POLICY"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/security/AppUriAuthenticationPolicy;

    const-string v3, "Invalid authentication policy"

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/security/AppUriAuthenticationPolicy;->getAppAndUriMappings()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_4

    :cond_5
    :try_start_0
    invoke-virtual {p1}, Landroid/security/AppUriAuthenticationPolicy;->getAliases()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/security/RequestManageCredentials;->mKeyChainConnection:Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/security/IKeyChainService;->requestPrivateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_6

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_7
    iput-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    const/16 p1, 0xb3

    invoke-static {p1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/security/RequestManageCredentials;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    invoke-virtual {v0}, Landroid/security/AppUriAuthenticationPolicy;->getAppAndUriMappings()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/security/RequestManageCredentials;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    invoke-virtual {v2}, Landroid/security/AppUriAuthenticationPolicy;->getAppAndUriMappings()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1

    :cond_8
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    iget-boolean p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mIsLandscapeMode:Z

    if-eqz p1, :cond_9

    const p1, 0x7f0a0450

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0a0451

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f141eb6

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/security/RequestManageCredentials;->mCredentialManagerPackage:Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array v2, v4, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/security/RequestManageCredentials;->mCredentialManagerPackage:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const p1, 0x7f0a012e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/security/RequestManageCredentials;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/android/settings/security/CredentialManagementAppAdapter;

    iget-object v7, p0, Lcom/android/settings/security/RequestManageCredentials;->mCredentialManagerPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/security/RequestManageCredentials;->mAuthenticationPolicy:Landroid/security/AppUriAuthenticationPolicy;

    invoke-virtual {v0}, Landroid/security/AppUriAuthenticationPolicy;->getAppAndUriMappings()Ljava/util/Map;

    move-result-object v8

    iget-boolean v0, p0, Lcom/android/settings/security/RequestManageCredentials;->mIsLandscapeMode:Z

    xor-int/lit8 v9, v0, 0x1

    const/4 v10, 0x0

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/security/CredentialManagementAppAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZZ)V

    iget-object v0, p0, Lcom/android/settings/security/RequestManageCredentials;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p1, 0x7f0a02b0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mButtonPanel:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0560

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    new-instance v1, Lcom/android/settings/security/RequestManageCredentials$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/security/RequestManageCredentials$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/RequestManageCredentials;I)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/settings/security/RequestManageCredentials$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lcom/android/settings/security/RequestManageCredentials$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/RequestManageCredentials;I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0603

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iput-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mExtendedFab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    new-instance v0, Lcom/android/settings/security/RequestManageCredentials$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/security/RequestManageCredentials$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/RequestManageCredentials;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settings/security/RequestManageCredentials;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/settings/security/RequestManageCredentials$1;

    invoke-direct {v0, p0}, Lcom/android/settings/security/RequestManageCredentials$1;-><init>(Lcom/android/settings/security/RequestManageCredentials;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void

    :goto_3
    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_4
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_b
    :goto_5
    const-string p1, "Credential management on managed devices should be done by the Device Policy Controller, not a credential management app"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/security/RequestManageCredentials;->mKeyChainConnection:Landroid/security/KeyChain$KeyChainConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/security/RequestManageCredentials;->mKeyChainConnection:Landroid/security/KeyChain$KeyChainConnection;

    iget-object p0, p0, Lcom/android/settings/security/RequestManageCredentials;->mKeyChainTread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method public final showButtonPanel()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/settings/security/RequestManageCredentials;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/settings/security/RequestManageCredentials;->mButtonPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/security/RequestManageCredentials;->mDisplayingButtonPanel:Z

    return-void
.end method

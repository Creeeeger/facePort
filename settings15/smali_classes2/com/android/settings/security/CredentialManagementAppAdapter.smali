.class public final Lcom/android/settings/security/CredentialManagementAppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppUriAuthentication:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mCredentialManagerPackage:Ljava/lang/String;

.field public final mIncludeExpander:Z

.field public final mIncludeHeader:Z

.field public final mIsLayoutRtl:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mSortedAppNames:Ljava/util/List;

.field public final mViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZZ)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mCredentialManagerPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mAppUriAuthentication:Ljava/util/Map;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p3, Lcom/android/settings/security/CredentialManagementAppAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/settings/security/CredentialManagementAppAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/CredentialManagementAppAdapter;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mSortedAppNames:Ljava/util/List;

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {p2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object p2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    iput-boolean p4, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mIncludeHeader:Z

    iput-boolean p5, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mIncludeExpander:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mIsLayoutRtl:Z

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mIncludeHeader:Z

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mAppUriAuthentication:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mIncludeHeader:Z

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    instance-of v0, p1, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;

    iget-object p0, p1, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    const/4 p2, 0x1

    const v0, 0x7f141eb6

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mCredentialManagerPackage:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, p1, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->mAppIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p1, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-array v6, p2, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v3, p1, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p1, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-array p2, p2, [Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mCredentialManagerPackage:Ljava/lang/String;

    aput-object p0, p2, v2

    invoke-static {v0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mIncludeHeader:Z

    if-eqz p0, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    check-cast p1, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;

    iget-object p0, p1, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mSortedAppNames:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p1, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppNameView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    iget-object p0, p1, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p1, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppNameView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindPolicyView(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d05d4

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    new-instance p2, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/security/CredentialManagementAppAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const p2, 0x7f0d0046

    invoke-static {p1, p2, p1, v1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;-><init>(Lcom/android/settings/security/CredentialManagementAppAdapter;Landroid/view/View;)V

    return-object p2
.end method

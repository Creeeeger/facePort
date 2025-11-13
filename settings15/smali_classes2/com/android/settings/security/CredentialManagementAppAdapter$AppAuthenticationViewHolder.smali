.class public final Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppIconView:Landroid/widget/ImageView;

.field public final mAppNameView:Landroid/widget/TextView;

.field public final mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mExpandedApps:Ljava/util/List;

.field public final mExpanderIconView:Landroid/widget/ImageView;

.field public final mNumberOfUrisView:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/security/CredentialManagementAppAdapter;Landroid/view/View;)V
    .locals 4

    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a010e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppIconView:Landroid/widget/ImageView;

    const v1, 0x7f0a0115

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppNameView:Landroid/widget/TextView;

    const v1, 0x7f0a0abb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    const v1, 0x7f0a05ee

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    const v3, 0x7f0a10c7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    iget-boolean p1, p1, Lcom/android/settings/security/CredentialManagementAppAdapter;->mIsLayoutRtl:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0a010b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance p1, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final bindChildView(Ljava/util/Map;)V
    .locals 4

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    iput v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    new-instance v2, Lcom/android/settings/security/UriAuthenticationPolicyAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3}, Lcom/android/settings/security/UriAuthenticationPolicyAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public final bindPolicyView(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    iget-boolean v1, v0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mIncludeExpander:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    const v2, 0x7f0803ed

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mAppUriAuthentication:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindChildView(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mAppUriAuthentication:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget-object v0, v0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12002d

    invoke-virtual {v0, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    const p1, 0x1080423

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/android/settings/security/CredentialManagementAppAdapter;->mAppUriAuthentication:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindChildView(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

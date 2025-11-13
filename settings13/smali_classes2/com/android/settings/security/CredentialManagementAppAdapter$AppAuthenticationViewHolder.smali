.class public Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CredentialManagementAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/CredentialManagementAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppAuthenticationViewHolder"
.end annotation


# instance fields
.field private final mAppIconView:Landroid/widget/ImageView;

.field private final mAppNameView:Landroid/widget/TextView;

.field private final mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mExpandedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExpanderIconView:Landroid/widget/ImageView;

.field private final mNumberOfUrisView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;


# direct methods
.method public static synthetic $r8$lambda$OsNXKvILekBzduv1SZYLxZfh6Fw(Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/security/CredentialManagementAppAdapter;Landroid/view/View;)V
    .locals 4

    .line 112
    iput-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    .line 113
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 114
    sget v0, Lcom/android/settings/R$id;->app_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppIconView:Landroid/widget/ImageView;

    .line 115
    sget v1, Lcom/android/settings/R$id;->app_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppNameView:Landroid/widget/TextView;

    .line 116
    sget v1, Lcom/android/settings/R$id;->number_of_uris:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    .line 117
    sget v1, Lcom/android/settings/R$id;->expand:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    .line 118
    sget v3, Lcom/android/settings/R$id;->uris:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    .line 121
    invoke-static {p1}, Lcom/android/settings/security/CredentialManagementAppAdapter;->-$$Nest$fgetmIsLayoutRtl(Lcom/android/settings/security/CredentialManagementAppAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    sget p1, Lcom/android/settings/R$id;->app_details:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 124
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    .line 125
    invoke-virtual {p1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 127
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :cond_0
    new-instance p1, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindChildView(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 185
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 186
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 187
    new-instance v1, Lcom/android/settings/security/UriAuthenticationPolicyAdapter;

    new-instance v2, Ljava/util/ArrayList;

    .line 188
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Lcom/android/settings/security/UriAuthenticationPolicyAdapter;-><init>(Ljava/util/List;)V

    .line 189
    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 190
    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 191
    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 192
    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {p0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->-$$Nest$fgetmViewPool(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method private bindPolicyView(Ljava/lang/String;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->-$$Nest$fgetmIncludeExpander(Lcom/android/settings/security/CredentialManagementAppAdapter;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->ic_expand_less:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->-$$Nest$fgetmAppUriAuthentication(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindChildView(Ljava/util/Map;)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mChildRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v1}, Lcom/android/settings/security/CredentialManagementAppAdapter;->-$$Nest$fgetmAppUriAuthentication(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/Map;

    move-result-object v1

    .line 169
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->getNumberOfUrlsText(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    const p1, 0x10803d7

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mNumberOfUrisView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpanderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->-$$Nest$fgetmAppUriAuthentication(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindChildView(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private getNumberOfUrlsText(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 199
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    .line 200
    iget-object p0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {p0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->-$$Nest$fgetmContext(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$plurals;->number_of_websites:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 200
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {p1}, Lcom/android/settings/security/CredentialManagementAppAdapter;->-$$Nest$fgetmSortedAppNames(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mExpandedApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindPolicyView(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindView(I)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->-$$Nest$fgetmSortedAppNames(Lcom/android/settings/security/CredentialManagementAppAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v0}, Lcom/android/settings/security/CredentialManagementAppAdapter;->-$$Nest$fgetmPackageManager(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v2}, Lcom/android/settings/security/CredentialManagementAppAdapter;->-$$Nest$fgetmPackageManager(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->this$0:Lcom/android/settings/security/CredentialManagementAppAdapter;

    invoke-static {v2}, Lcom/android/settings/security/CredentialManagementAppAdapter;->-$$Nest$fgetmPackageManager(Lcom/android/settings/security/CredentialManagementAppAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->mAppNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/security/CredentialManagementAppAdapter$AppAuthenticationViewHolder;->bindPolicyView(Ljava/lang/String;)V

    return-void
.end method

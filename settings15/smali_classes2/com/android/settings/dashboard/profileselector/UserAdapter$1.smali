.class public final Lcom/android/settings/dashboard/profileselector/UserAdapter$1;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/dashboard/profileselector/UserAdapter;

.field public final synthetic val$onClickListener:Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/profileselector/UserAdapter;Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$1;->this$0:Lcom/android/settings/dashboard/profileselector/UserAdapter;

    iput-object p2, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$1;->val$onClickListener:Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$1;->this$0:Lcom/android/settings/dashboard/profileselector/UserAdapter;

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter;->mUserDetails:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    check-cast p1, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$1;->this$0:Lcom/android/settings/dashboard/profileselector/UserAdapter;

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter;->mUserDetails:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;

    iget-object p2, p1, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$UserDetails;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;->mButtonView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 1

    const p2, 0x7f0d09d6

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$1;->val$onClickListener:Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;

    invoke-direct {p2, p1}, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iget-object p1, p2, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;->mButtonView:Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;Lcom/android/settings/dashboard/profileselector/UserAdapter$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p2
.end method

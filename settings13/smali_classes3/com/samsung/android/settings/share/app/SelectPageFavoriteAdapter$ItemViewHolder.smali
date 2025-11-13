.class Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SelectPageFavoriteAdapter.java"

# interfaces
.implements Lcom/samsung/android/settings/share/app/ISwappable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field mDeleteIconView:Landroid/widget/ImageView;

.field mIconView:Landroid/widget/ImageView;

.field private mIsPinnedItem:Z

.field mMainLabelView:Landroid/widget/TextView;

.field mParent:Landroid/view/View;

.field mSecondLabelView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;Landroid/view/View;)V
    .locals 1

    .line 215
    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->this$0:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    .line 216
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 208
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->mMainLabelView:Landroid/widget/TextView;

    .line 209
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->text2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->mSecondLabelView:Landroid/widget/TextView;

    .line 210
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->mIconView:Landroid/widget/ImageView;

    .line 211
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->delete_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->mDeleteIconView:Landroid/widget/ImageView;

    .line 217
    iput-object p2, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->mParent:Landroid/view/View;

    const/4 p1, 0x0

    .line 218
    iput-boolean p1, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->mIsPinnedItem:Z

    return-void
.end method


# virtual methods
.method public isPinnedItem()Z
    .locals 0

    .line 227
    iget-boolean p0, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->mIsPinnedItem:Z

    return p0
.end method

.method public isSwappable()Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->mIsPinnedItem:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setPinnedItem(Z)V
    .locals 2

    .line 231
    iput-boolean p1, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->mIsPinnedItem:Z

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->mDeleteIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public updateContentDescription(Ljava/lang/String;)V
    .locals 6

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->mIsPinnedItem:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->this$0:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;)Landroid/content/Context;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_share_select_remove:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    iget-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter$ItemViewHolder;->this$0:Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/share/app/SelectPageFavoriteAdapter;)Landroid/content/Context;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->sec_share_select_button:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    .line 241
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, ", "

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 244
    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

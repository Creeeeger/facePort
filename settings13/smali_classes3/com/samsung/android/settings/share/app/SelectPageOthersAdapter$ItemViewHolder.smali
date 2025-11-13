.class Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SelectPageOthersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field mIconView:Landroid/widget/ImageView;

.field mMainLabelView:Landroid/widget/TextView;

.field mSecondLabelView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;Landroid/view/View;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->this$0:Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    .line 220
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 221
    sget p1, Lcom/android/settings/R$id;->text1:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->mMainLabelView:Landroid/widget/TextView;

    .line 222
    sget p1, Lcom/android/settings/R$id;->text2:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->mSecondLabelView:Landroid/widget/TextView;

    .line 223
    sget p1, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->mIconView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public updateContentDescription(Ljava/lang/String;)V
    .locals 6

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->this$0:Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;)Landroid/content/Context;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_share_select_add:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    iget-object p1, p0, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter$ItemViewHolder;->this$0:Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/share/app/SelectPageOthersAdapter;)Landroid/content/Context;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->sec_share_select_button:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    .line 231
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, ", "

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 234
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

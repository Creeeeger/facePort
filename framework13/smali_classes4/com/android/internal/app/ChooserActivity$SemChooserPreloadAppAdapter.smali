.class public final Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;
.super Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SemChooserPreloadAppAdapter"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 11009
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 11010
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V

    .line 11011
    return-void
.end method


# virtual methods
.method blacklist bindItemViewHolder(ILcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;

    .line 11030
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetPreloadAppTargets()Ljava/util/List;

    move-result-object v0

    .line 11032
    .local v0, "preloadAppTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 11033
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 11034
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    .line 11035
    .local v1, "lastIndex":I
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->extraLabel:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 11036
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->extraLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 11037
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    .line 11038
    .local v3, "firtstItem":Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    .line 11040
    .local v4, "lastItem":Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;
    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11041
    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11045
    .end local v1    # "lastIndex":I
    .end local v3    # "firtstItem":Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;
    .end local v4    # "lastItem":Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->displayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object v1, p2, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->mDri:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 11046
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->mainLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->setText(Ljava/lang/CharSequence;)V

    .line 11047
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->extraLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 11048
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->extraLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->setExtraInfoText(Ljava/lang/CharSequence;)V

    .line 11051
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsPrivateShareAnimCompleted(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11052
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;

    iget v1, v1, Lcom/android/internal/app/ChooserActivity$SemPreloadAppTarget;->preloadType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 11053
    invoke-virtual {p2}, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;->animatePrivateShareButton()V

    .line 11057
    :cond_2
    return-void
.end method

.method public blacklist getItemCount()I
    .locals 1

    .line 11015
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetPreloadAppTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method blacklist getListPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .line 11061
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 11026
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->bindItemViewHolder(ILcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;)V

    .line 11027
    return-void
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 11020
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090143

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 11021
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserPreloadAppAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/app/ChooserActivity$SemChooserChipButtonViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V

    return-object v1
.end method

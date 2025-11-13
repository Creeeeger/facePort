.class final Lcom/android/internal/app/ChooserActivity$ItemViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ViewHolderBase;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ItemViewHolder"
.end annotation


# instance fields
.field blacklist mListPosition:I

.field blacklist mWrappedViewHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "isClickable"    # Z
    .param p4, "viewType"    # I

    .line 5652
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 5653
    invoke-direct {p0, p2, p4}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;-><init>(Landroid/view/View;I)V

    .line 5650
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mListPosition:I

    .line 5654
    new-instance v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mWrappedViewHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 5655
    if-eqz p3, :cond_0

    .line 5656
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity$ItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5668
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder$1;-><init>(Lcom/android/internal/app/ChooserActivity$ItemViewHolder;Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5702
    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$new$1(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 5684
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mListPosition:I

    .line 5685
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 5688
    .local v0, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    instance-of v1, v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mshouldShowTargetDetails(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5693
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/app/ChooserActivity;->mMultiTargetInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    .line 5694
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmPinTargetInfo(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 5695
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/ChooserActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 5698
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method synthetic blacklist lambda$new$0$com-android-internal-app-ChooserActivity$ItemViewHolder(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 5658
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mSelectedViewholder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 5659
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_REMOVE_EXIF:Z

    if-eqz v0, :cond_0

    .line 5660
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mExifViewholder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 5663
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mListPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    .line 5665
    return-void
.end method

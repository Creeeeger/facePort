.class public final Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBubbles:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field public final mPromoteBubbleFromOverflow:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;",
            "Lcom/android/wm/shell/bubbles/BubblePositioner;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;->mBubbles:Ljava/util/List;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;->mPromoteBubbleFromOverflow:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;->mBubbles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter$ViewHolder;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter$ViewHolder;->iconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/bubbles/BadgedImageView;->setRenderedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    sget-object v0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    iget-object v1, p1, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter$ViewHolder;->iconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BadgedImageView;->removeDotSuppressionFlag(Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;)V

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;Lcom/android/wm/shell/bubbles/Bubble;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f130d15

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p2, Lcom/android/wm/shell/bubbles/Bubble;->mAppName:Ljava/lang/String;

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f13031f

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p0, p2, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p2, Lcom/android/wm/shell/bubbles/Bubble;->mAppName:Ljava/lang/String;

    :goto_0
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const p1, 0x7f0d0360

    const/4 v0, 0x0

    invoke-static {p2, p1, p2, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance p2, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter$ViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-direct {p2, p1, p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter$ViewHolder;-><init>(Landroid/widget/LinearLayout;Lcom/android/wm/shell/bubbles/BubblePositioner;)V

    return-object p2
.end method

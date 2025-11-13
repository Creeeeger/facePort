.class public final synthetic Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->mMenuViewController:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuView:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mScrimView:Landroid/view/View;

    if-nez p1, :cond_5

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0d006e

    invoke-virtual {p1, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuView:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuView:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuView:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuView:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;

    new-instance v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;I)V

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->mBubbleSectionView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda0;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuView:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_1

    iget-object v4, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->mBubbleIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->mBubbleIconView:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/Bubble;->mBubbleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->mBubbleTitleView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuView:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, v2, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v5, :cond_3

    new-instance v5, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mContext:Landroid/content/Context;

    const v7, 0x7f0806d5

    invoke-static {v6, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    const v7, 0x7f130329

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda5;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v2, v9}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;Lcom/android/wm/shell/bubbles/Bubble;I)V

    invoke-direct {v5, v6, v7, v8}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Lcom/android/wm/shell/bubbles/Bubble;->mRawBadgeBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    invoke-static {v5}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v0

    :goto_1
    new-instance v6, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;

    iget-object v7, v2, Lcom/android/wm/shell/bubbles/Bubble;->mAppName:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const v8, 0x7f130328

    invoke-virtual {v4, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda5;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v2, v9}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;Lcom/android/wm/shell/bubbles/Bubble;I)V

    invoke-direct {v6, v5, v7, v8}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v5, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;

    const v6, 0x7f080ab6

    invoke-static {v4, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    const v7, 0x7f130321

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mContext:Landroid/content/Context;

    const v8, 0x7f060085

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    new-instance v8, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda5;

    const/4 v9, 0x2

    invoke-direct {v8, p0, v2, v9}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;Lcom/android/wm/shell/bubbles/Bubble;I)V

    invoke-direct {v5, v6, v4, v7, v8}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->updateActions(Ljava/util/ArrayList;)V

    :cond_4
    new-instance p1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mScrimView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mScrimView:Landroid/view/View;

    new-instance v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mScrimView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuView:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/wm/shell/shared/animation/PhysicsAnimator;->cancel()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuAnimator:Lcom/android/wm/shell/shared/animation/PhysicsAnimator;

    :cond_6
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mMenuView:Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->mScrimView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuViewController;->animateTransition(Ljava/lang/Runnable;Z)V

    return-void
.end method

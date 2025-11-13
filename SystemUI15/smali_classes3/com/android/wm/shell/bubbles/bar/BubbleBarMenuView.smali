.class public Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActionsSectionView:Landroid/view/ViewGroup;

.field public mBubbleIconView:Landroid/widget/ImageView;

.field public mBubbleSectionView:Landroid/view/ViewGroup;

.field public mBubbleTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final getAlpha()F
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->mBubbleSectionView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p0

    return p0
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a01f6

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->mBubbleSectionView:Landroid/view/ViewGroup;

    const v0, 0x7f0a01f4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->mActionsSectionView:Landroid/view/ViewGroup;

    const v0, 0x7f0a01f5

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->mBubbleIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a01f7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->mBubbleTitleView:Landroid/widget/TextView;

    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->mBubbleSectionView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->mActionsSectionView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public final updateActions(Ljava/util/ArrayList;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->mActionsSectionView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->mActionsSectionView:Landroid/view/ViewGroup;

    const v3, 0x7f0d006d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuItemView;

    iget-object v3, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;->mIcon:Landroid/graphics/drawable/Icon;

    iget v5, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;->mTint:I

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1010036

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    iget-object v6, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuItemView;->mTextView:Landroid/widget/TextView;

    const/high16 v7, -0x1000000

    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    iget-object v4, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v3, v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuItemView;->mTextView:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;->mOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView;->mActionsSectionView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

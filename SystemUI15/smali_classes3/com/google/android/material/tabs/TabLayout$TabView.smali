.class public final Lcom/google/android/material/tabs/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public customIconView:Landroid/widget/ImageView;

.field public customTextView:Landroid/widget/TextView;

.field public customView:Landroid/view/View;

.field public defaultMaxLines:I

.field public iconView:Landroid/widget/ImageView;

.field public mDotBadgeView:Landroid/widget/TextView;

.field public mIconSize:I

.field public mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

.field public mIsCallPerformClick:Z

.field public mMainTabTouchBackground:Landroid/view/View;

.field public mNBadgeView:Landroid/widget/TextView;

.field public mSubTextView:Landroid/widget/TextView;

.field public mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mTabViewKeyListener:Lcom/google/android/material/tabs/TabLayout$TabView$1;

.field public tab:Lcom/google/android/material/tabs/TabLayout$Tab;

.field public textView:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    new-instance v1, Lcom/google/android/material/tabs/TabLayout$TabView$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/tabs/TabLayout$TabView$1;-><init>(Lcom/google/android/material/tabs/TabLayout$TabView;)V

    iget v2, p1, Lcom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    if-eqz v2, :cond_1

    iget v3, p1, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    if-eq v3, v0, :cond_1

    invoke-static {v2, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    const/16 p2, 0x11

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-boolean p2, p1, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget p2, p1, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    if-ne p2, v0, :cond_2

    iget p2, p1, Lcom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, v0, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07132a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIconSize:I

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07132a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIconSize:I

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v4, v1, v4, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object v2, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1307c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "AccessibilityNodeInfo.roleDescription"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mDotBadgeView:Landroid/widget/TextView;

    const-string v1, ", "

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mDotBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mDotBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mNBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setLeft(I)V

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    iget-object p3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    goto :goto_0

    :cond_0
    sub-int p2, p4, p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setRight(I)V

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIconSize:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget p2, p2, Lcom/google/android/material/tabs/TabLayout;->mIconTextGap:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    add-int/2addr p1, p2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3

    neg-int p1, p1

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getRight()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getRight()I

    move-result p3

    if-ne p2, p3, :cond_4

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLeft()I

    move-result p3

    if-ne p2, p3, :cond_4

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->offsetLeftAndRight(I)V

    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->offsetLeftAndRight(I)V

    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v3, v2, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    iget v4, v2, Lcom/google/android/material/tabs/TabLayout;->mode:I

    const/16 v5, 0xb

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    if-eq v4, v5, :cond_3

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mRequestedTabWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_1
    if-lez v3, :cond_5

    if-eqz v1, :cond_2

    if-le v0, v3, :cond_5

    :cond_2
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_4
    if-ne v1, v7, :cond_5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v1, 0x2

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v4, v2, Lcom/google/android/material/tabs/TabLayout;->tabTextSize:F

    float-to-int v5, v4

    invoke-static {v2, v0, v5}, Lcom/google/android/material/tabs/TabLayout;->access$1900(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    if-ne v2, v1, :cond_6

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    iget v5, v0, Lcom/google/android/material/tabs/TabLayout;->mSubTabTextSize:I

    invoke-static {v0, v2, v5}, Lcom/google/android/material/tabs/TabLayout;->access$1900(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    :cond_6
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->mSubTabTextSize:I

    int-to-float v4, v0

    move v0, v5

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v5, :cond_8

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v4, v2, Lcom/google/android/material/tabs/TabLayout;->tabTextMultiLineSize:F

    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iget-object v7, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    iget-object v9, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMaxLines()I

    move-result v9

    cmpl-float v2, v4, v2

    if-nez v2, :cond_9

    if-ltz v9, :cond_c

    if-eq v0, v9, :cond_c

    :cond_9
    iget-object v9, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v9, v9, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-ne v9, v5, :cond_a

    if-lez v2, :cond_a

    if-ne v7, v5, :cond_a

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    div-float v2, v4, v2

    mul-float/2addr v2, v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    float-to-int v4, v4

    invoke-static {v2, v5, v4}, Lcom/google/android/material/tabs/TabLayout;->access$1900(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v4, v2, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    if-ne v4, v1, :cond_b

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    iget v5, v2, Lcom/google/android/material/tabs/TabLayout;->mSubTabTextSize:I

    invoke-static {v2, v4, v5}, Lcom/google/android/material/tabs/TabLayout;->access$1900(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    :cond_b
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-nez v2, :cond_e

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    if-ne v0, v1, :cond_e

    if-lez v3, :cond_d

    invoke-virtual {p1, v3, v8}, Landroid/widget/TextView;->measure(II)V

    goto :goto_4

    :cond_d
    invoke-virtual {p1, v8, v8}, Landroid/widget/TextView;->measure(II)V

    :goto_4
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071339

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_e
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    sget-object v1, Lcom/google/android/material/tabs/TabLayout;->tabPool:Landroidx/core/util/Pools$SynchronizedPool;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-eqz v0, :cond_13

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_12

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, -0x1

    const v3, 0x101009e

    const v4, 0x10100a1

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    if-eqz v5, :cond_3

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->onHide()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v5, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->mBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v5, v5, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_5

    filled-new-array {v4, v3}, [I

    move-result-object v2

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v5, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->onShow()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    if-ne v0, v1, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->startReleaseEffect()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->startReleaseEffect()V

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->performClick()Z

    iput-boolean v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIsCallPerformClick:Z

    goto/16 :goto_0

    :cond_b
    iput-boolean v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIsCallPerformClick:Z

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->mBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    filled-new-array {v4, v3}, [I

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->startPressEffect()V

    :cond_e
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    if-eqz v2, :cond_f

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->onHide()V

    goto :goto_0

    :cond_10
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->startPressEffect()V

    :cond_11
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_12
    return v1

    :cond_13
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final performClick()Z
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIsCallPerformClick:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIsCallPerformClick:Z

    return v1

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    return v1

    :cond_2
    return v0
.end method

.method public final setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final setSelected(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->subText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f081209

    goto :goto_1

    :cond_5
    const v2, 0x7f081208

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_7
    return-void
.end method

.method public final update()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTab()V

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public final updateTab()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->customView:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/16 v3, 0x8

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, p0, :cond_3

    if-eqz v4, :cond_1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    const v4, 0x1020014

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/widget/TextView;->getMaxLines()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    :cond_7
    const v4, 0x1020006

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    if-eqz v2, :cond_9

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    :cond_9
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    :goto_1
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    const/4 v4, 0x0

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v5, 0x2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    if-ne v2, v5, :cond_a

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f0d0422

    invoke-virtual {v2, v6, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f0d0421

    invoke-virtual {v2, v6, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v6, 0x7f0a068b

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    if-eqz v2, :cond_c

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_c

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_b

    const v7, 0x7f081203

    goto :goto_2

    :cond_b
    const v7, 0x7f081202

    :goto_2
    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v7, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mMainTabTouchBackground:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    :goto_3
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v6, 0x7f0a052c

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    :cond_d
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v6, v2, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    const/4 v7, -0x1

    if-ne v6, v5, :cond_e

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz v6, :cond_f

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mSubTabSelectedIndicatorColor:I

    if-eq v2, v7, :cond_f

    invoke-virtual {v6, v2}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->onSetSelectedIndicatorColor(I)V

    goto :goto_4

    :cond_e
    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mIndicatorView:Lcom/google/android/material/tabs/SeslAbsIndicatorView;

    if-eqz v6, :cond_f

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mTabSelectedIndicatorColor:I

    invoke-virtual {v6, v2}, Lcom/google/android/material/tabs/SeslAbsIndicatorView;->onSetSelectedIndicatorColor(I)V

    :cond_f
    :goto_4
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v6, 0x7f0a0d34

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    :cond_10
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMaxLines()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->defaultMaxLines:I

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v6, v6, Lcom/google/android/material/tabs/TabLayout;->defaultTabTextAppearance:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->selectedTabTextAppearance:I

    if-eq v2, v7, :cond_11

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_5

    :cond_11
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabTextAppearance:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->mBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_6

    :cond_12
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_6
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget v8, v2, Lcom/google/android/material/tabs/TabLayout;->tabTextSize:F

    float-to-int v8, v8

    invoke-static {v2, v6, v8}, Lcom/google/android/material/tabs/TabLayout;->access$1900(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    if-ne v2, v5, :cond_15

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v6, 0x7f0a0c44

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    :cond_13
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_14

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v6, v6, Lcom/google/android/material/tabs/TabLayout;->mSubTabSubTextAppearance:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v6, v6, Lcom/google/android/material/tabs/TabLayout;->mSubTabSubTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_14
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_15

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v8, v6, Lcom/google/android/material/tabs/TabLayout;->mSubTabTextSize:I

    invoke-static {v6, v2, v8}, Lcom/google/android/material/tabs/TabLayout;->access$1900(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    :cond_15
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_16

    const v6, 0x7f0a0505

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    :cond_16
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mSubTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-virtual {p0, v2, v8, v9}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    if-eqz v6, :cond_1e

    iget-object v8, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v8, :cond_17

    iget-object v8, v8, Lcom/google/android/material/tabs/TabLayout$Tab;->subText:Ljava/lang/CharSequence;

    goto :goto_7

    :cond_17
    move-object v8, v1

    :goto_7
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v10, v9

    if-eqz v10, :cond_18

    move v11, v7

    goto :goto_8

    :cond_18
    move v11, v4

    :goto_8
    iput v11, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    if-eqz v10, :cond_19

    move v11, v7

    goto :goto_9

    :cond_19
    move v11, v4

    :goto_9
    iput v11, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eqz v10, :cond_1a

    const v11, 0x7f0a026c

    goto :goto_a

    :cond_1a
    move v11, v7

    :goto_a
    iput v11, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-eqz v10, :cond_1b

    goto :goto_b

    :cond_1b
    move-object v8, v1

    :goto_b
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_1d

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->labelVisibilityMode:I

    if-ne v2, v9, :cond_1c

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    :cond_1c
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_c
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d

    :cond_1d
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1e
    :goto_d
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v3, v2, Lcom/google/android/material/tabs/TabLayout;->mDepthStyle:I

    const/4 v6, -0x2

    if-ne v3, v5, :cond_22

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-nez v2, :cond_1f

    move v7, v6

    :cond_1f
    if-eqz v0, :cond_20

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->subText:Ljava/lang/CharSequence;

    :cond_20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v9

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->mSubTabIndicator2ndHeight:I

    goto :goto_e

    :cond_21
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->mSubTabIndicatorHeight:I

    :goto_e
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_24

    move v4, v9

    goto :goto_f

    :cond_22
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_23

    move v1, v7

    move v7, v6

    goto :goto_f

    :cond_23
    move v1, v7

    :cond_24
    :goto_f
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v2, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_10

    :cond_25
    if-eqz v4, :cond_26

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->mTabParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v2, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :cond_26
    :goto_10
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    if-nez v1, :cond_27

    goto :goto_11

    :cond_27
    new-instance v2, Lcom/google/android/material/tabs/TabLayout$TabView$2;

    invoke-direct {v2, p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView$2;-><init>(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_11
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    if-nez v1, :cond_28

    goto :goto_12

    :cond_28
    new-instance v2, Lcom/google/android/material/tabs/TabLayout$TabView$2;

    invoke-direct {v2, p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView$2;-><init>(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_12

    :cond_29
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v1, :cond_2a

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2b

    :cond_2a
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    :cond_2b
    :goto_12
    if-eqz v0, :cond_2c

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2c
    return-void
.end method

.method public final updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, v2, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_1

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    if-eqz p1, :cond_a

    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    iget v6, v6, Lcom/google/android/material/tabs/TabLayout$Tab;->labelVisibilityMode:I

    if-ne v6, v5, :cond_6

    goto :goto_4

    :cond_6
    move v5, v4

    :goto_4
    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move-object v2, v1

    :goto_5
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_8

    move v2, v4

    goto :goto_6

    :cond_8
    move v2, v3

    :goto_6
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_9

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    move v4, v5

    :cond_a
    if-eqz p3, :cond_c

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_c

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->this$0:Lcom/google/android/material/tabs/TabLayout;

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout;->mIconTextGap:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(ILandroid/content/Context;)F

    :cond_c
    :goto_7
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->tab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_d
    move-object p1, v1

    :goto_8
    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    move-object v1, p1

    :goto_9
    invoke-virtual {p0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

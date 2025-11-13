.class public final Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInstruction:Landroid/widget/TextSwitcher;

.field public mLastTutorialPagePosition:I

.field public mOnPageSelectedCallback:Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda1;

.field public final mTitle:Landroid/widget/TextSwitcher;

.field public final mTutorialPages:Ljava/util/List;

.field public final mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/viewpager/widget/ViewPager;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mLastTutorialPagePosition:I

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Landroid/widget/TextSwitcher;

    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mTitle:Landroid/widget/TextSwitcher;

    check-cast p4, Landroid/widget/TextSwitcher;

    iput-object p4, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mInstruction:Landroid/widget/TextSwitcher;

    iput-object p5, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mTutorialPages:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mOnPageSelectedCallback:Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda1;

    invoke-virtual {p2, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IIF)V
    .locals 0

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 6

    iget v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mLastTutorialPagePosition:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const v3, 0x10a0002

    goto :goto_1

    :cond_1
    const v3, 0x10a0152

    :goto_1
    if-eqz v0, :cond_2

    const v0, 0x10a0003

    goto :goto_2

    :cond_2
    const v0, 0x10a0155

    :goto_2
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mTitle:Landroid/widget/TextSwitcher;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mTitle:Landroid/widget/TextSwitcher;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v0}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mTitle:Landroid/widget/TextSwitcher;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mTutorialPages:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    iget-object v5, v5, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mInstruction:Landroid/widget/TextSwitcher;

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mInstruction:Landroid/widget/TextSwitcher;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mInstruction:Landroid/widget/TextSwitcher;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mTutorialPages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    iget-object v3, v3, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mInstruction:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mTutorialPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    iget-object v3, v3, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mTutorialPages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    iget-object v0, v0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mIndicatorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mLastTutorialPagePosition:I

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mTutorialPages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f140213

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPageChangeListener;->mOnPageSelectedCallback:Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p0, v0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->updateTutorialNegativeButtonTextAndVisibility(Landroidx/appcompat/app/AlertDialog;Ljava/util/List;I)V

    :cond_4
    return-void
.end method

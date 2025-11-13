.class public final Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mTutorialPages:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPagerAdapter;->mTutorialPages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPagerAdapter;->mTutorialPages:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mIllustrationView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPagerAdapter;->mTutorialPages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPagerAdapter;->mTutorialPages:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$TutorialPage;->mIllustrationView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

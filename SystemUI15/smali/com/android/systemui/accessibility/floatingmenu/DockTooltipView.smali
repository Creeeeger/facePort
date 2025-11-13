.class public final Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;
.super Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1300ac

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->hide()V

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/DockTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->fadeOut()V

    return-void
.end method

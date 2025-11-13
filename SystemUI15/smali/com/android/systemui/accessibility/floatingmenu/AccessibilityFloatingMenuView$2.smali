.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$2;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$2;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsLongClicked:Z

    iget-object p1, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x29

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$2;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/EditTooltipView;

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$2;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$2;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/accessibility/floatingmenu/EditTooltipView;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V

    iput-object v1, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mEditTooltipView:Lcom/android/systemui/accessibility/floatingmenu/EditTooltipView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$2;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mEditTooltipView:Lcom/android/systemui/accessibility/floatingmenu/EditTooltipView;

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mIsShowing:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->updateTooltipView()V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

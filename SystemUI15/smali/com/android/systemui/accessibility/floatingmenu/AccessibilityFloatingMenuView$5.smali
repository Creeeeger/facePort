.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$5;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$5;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.systemui.accessibility.floatingmenu.SHOW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$5;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-boolean p2, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz p2, :cond_0

    iget p0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mRadiusType:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->showFloatingButton(IZ)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateHideHandle(I)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$5;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateViewLayout(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

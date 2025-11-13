.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$3;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$3;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->destroyFloatingMenu()V

    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$3;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    iget-object v0, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$3;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    iget v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    iget-object v2, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->handleFloatingMenuVisibility(ILjava/lang/String;Z)V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$3;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    iget-object p1, p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController$3;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    iget-boolean p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mIsKeyguardVisible:Z

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnMode:I

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->mBtnTargets:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->handleFloatingMenuVisibility(ILjava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    return-void
.end method

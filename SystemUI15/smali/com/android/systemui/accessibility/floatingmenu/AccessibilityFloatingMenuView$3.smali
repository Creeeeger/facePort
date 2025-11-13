.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

.field public final synthetic val$layoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$3;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$3;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$3;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$3;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->$r8$clinit:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->updateViewLayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView$3;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    sget p1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->$r8$clinit:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const-string p0, "AccessibilityFloatingMenuView"

    const-string p1, "removeViewAttachStateChangeListener called"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

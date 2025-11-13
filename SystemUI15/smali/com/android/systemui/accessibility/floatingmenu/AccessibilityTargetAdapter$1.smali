.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

.field public final synthetic val$target:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;Lcom/android/internal/accessibility/dialog/AccessibilityTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;->val$target:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 3

    const v0, 0x8000

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter$1;->val$target:Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;->getStateDescription(Lcom/android/internal/accessibility/dialog/AccessibilityTarget;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

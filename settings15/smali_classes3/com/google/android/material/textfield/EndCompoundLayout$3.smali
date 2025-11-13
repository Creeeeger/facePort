.class public final Lcom/google/android/material/textfield/EndCompoundLayout$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/textfield/EndCompoundLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$3;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$3;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->addTouchExplorationStateChangeListenerIfNeeded()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$3;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda5;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;

    invoke-direct {v0, p1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda5;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void
.end method

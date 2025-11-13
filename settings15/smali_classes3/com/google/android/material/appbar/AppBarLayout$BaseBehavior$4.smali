.class public final Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/core/view/accessibility/AccessibilityViewCommand;


# instance fields
.field public final synthetic val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic val$expand:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;->val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;->val$expand:Z

    return-void
.end method


# virtual methods
.method public final perform(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;->val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-boolean p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$4;->val$expand:Z

    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    const/4 p0, 0x1

    return p0
.end method

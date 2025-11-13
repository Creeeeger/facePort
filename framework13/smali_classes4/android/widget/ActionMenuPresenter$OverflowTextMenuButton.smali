.class public Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;
.super Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverflowTextMenuButton"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActionMenuPresenter;
    .param p2, "context"    # Landroid/content/Context;

    .line 1597
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowTextMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1598
    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    .line 1599
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist jumpDrawablesToCurrentState()V
    .locals 0

    .line 1596
    invoke-super {p0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->jumpDrawablesToCurrentState()V

    return-void
.end method

.method public bridge synthetic whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1596
    invoke-super {p0, p1}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public bridge synthetic whitelist performClick()Z
    .locals 1

    .line 1596
    invoke-super {p0}, Landroid/widget/ActionMenuPresenter$SemTextOverflowMenuButton;->performClick()Z

    move-result v0

    return v0
.end method

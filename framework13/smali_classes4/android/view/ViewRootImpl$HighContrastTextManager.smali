.class final Landroid/view/ViewRootImpl$HighContrastTextManager;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HighContrastTextManager"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 12392
    iput-object p1, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12393
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isHighTextContrastEnabled()Z

    move-result v0

    invoke-static {v0}, Landroid/view/ThreadedRenderer;->setHighContrastText(Z)V

    .line 12394
    return-void
.end method


# virtual methods
.method public greylist-max-o onHighTextContrastStateChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 12397
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->setHighContrastText(Z)V

    .line 12400
    iget-object v0, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$mdoRelayoutForHCT(Landroid/view/ViewRootImpl;Z)V

    .line 12403
    return-void
.end method

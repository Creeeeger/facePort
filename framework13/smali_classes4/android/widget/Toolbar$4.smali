.class Landroid/widget/Toolbar$4;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toolbar;->ensureCollapseButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Toolbar;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Toolbar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Toolbar;

    .line 1819
    iput-object p1, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 1823
    iget-object v0, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-static {v0}, Landroid/widget/Toolbar;->-$$Nest$fgetmIsThemeDeviceDefaultFamily(Landroid/widget/Toolbar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1824
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1825
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1826
    iget-object v1, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1828
    :cond_0
    iget-object v1, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-static {v1}, Landroid/widget/Toolbar;->-$$Nest$fgetmCollapseHandler(Landroid/widget/Toolbar;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-static {v2}, Landroid/widget/Toolbar;->-$$Nest$fgetmPerformToCollapse(Landroid/widget/Toolbar;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1829
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_0

    .line 1830
    :cond_1
    iget-object v0, p0, Landroid/widget/Toolbar$4;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->collapseActionView()V

    .line 1832
    :goto_0
    return-void
.end method

.class Landroid/view/ViewRootImpl$2;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 903
    iput-object p1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 906
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDesktopMode(Landroid/view/ViewRootImpl;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/directwriting/DirectWritingState;->isDirectWritingUsable(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    return-void

    .line 909
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->COMMON_IS_PRODUCT_DEV:Z

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirectWriting, mDWT_onSetViewRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDirectWritingTrigger(Landroid/view/ViewRootImpl;)Landroid/widget/directwriting/DirectWritingTrigger;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmWindowHashCode(Landroid/view/ViewRootImpl;)I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/directwriting/DirectWritingTrigger;->onSetView(Landroid/content/Context;JLandroid/view/View;)V

    .line 913
    return-void
.end method

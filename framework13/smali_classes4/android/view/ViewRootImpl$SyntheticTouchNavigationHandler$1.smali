.class Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    .line 9273
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 9276
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 9277
    .local v0, "time":J
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-static {v2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-$$Nest$fgetmPendingKeyCode(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I

    move-result v3

    iget-object v4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-static {v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-$$Nest$fgetmPendingKeyMetaState(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I

    move-result v4

    invoke-static {v2, v0, v1, v3, v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-$$Nest$msendKeyDownOrRepeat(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;JII)V

    .line 9278
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-static {v2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-$$Nest$fgetmFlingVelocity(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)F

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-$$Nest$fputmFlingVelocity(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;F)V

    .line 9279
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-static {v2, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-$$Nest$mpostFling(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9280
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-$$Nest$fputmFlinging(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Z)V

    .line 9281
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;->this$1:Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;

    invoke-static {v2, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->-$$Nest$mfinishKeys(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V

    .line 9283
    :cond_0
    return-void
.end method

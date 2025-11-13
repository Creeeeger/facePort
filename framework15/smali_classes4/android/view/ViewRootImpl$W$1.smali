.class Landroid/view/ViewRootImpl$W$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl$W;->invalidateForScreenShot(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl$W;

.field final synthetic blacklist val$tag:Ljava/lang/String;

.field final synthetic blacklist val$viewAncestor:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl$W;Ljava/lang/String;Landroid/view/ViewRootImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ViewRootImpl$W$1;->this$0:Landroid/view/ViewRootImpl$W;

    iput-object p2, p0, Landroid/view/ViewRootImpl$W$1;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Landroid/view/ViewRootImpl$W$1;->val$viewAncestor:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl$W$1;->val$tag:Ljava/lang/String;

    const-string v1, "invalidateForScreenShot post vri invalidate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/ViewRootImpl$W$1;->val$viewAncestor:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    return-void
.end method

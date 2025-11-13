.class Landroid/app/EnterTransitionCoordinator$9;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->startEnterTransitionOnly()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/EnterTransitionCoordinator;


# direct methods
.method constructor blacklist <init>(Landroid/app/EnterTransitionCoordinator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$9;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator$9;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v2}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/app/EnterTransitionCoordinator$9;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v3, v2, v0, v1}, Landroid/app/EnterTransitionCoordinator;->-$$Nest$mbeginTransition(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;

    move-result-object v3

    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator$9;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v4, v3}, Landroid/app/EnterTransitionCoordinator;->-$$Nest$mstartEnterTransition(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

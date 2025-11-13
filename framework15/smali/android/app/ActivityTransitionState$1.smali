.class Landroid/app/ActivityTransitionState$1;
.super Ljava/lang/Object;
.source "ActivityTransitionState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityTransitionState;->onResume(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityTransitionState;


# direct methods
.method public static synthetic blacklist $r8$lambda$TaGYe9oRK-dQUkqXDRNZTQGHxbs(Landroid/app/ActivityTransitionState$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityTransitionState$1;->lambda$run$0()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/ActivityTransitionState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$run$0()V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-$$Nest$mgetPendingExitNames(Landroid/app/ActivityTransitionState;)Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityTransitionState;->-$$Nest$fputmEnterTransitionCoordinator(Landroid/app/ActivityTransitionState;Landroid/app/EnterTransitionCoordinator;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-$$Nest$fgetmEnterTransitionCoordinator(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-$$Nest$fgetmEnterTransitionCoordinator(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isWaitingForRemoteExit()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-$$Nest$fgetmEnterTransitionCoordinator(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-$$Nest$fgetmEnterTransitionCoordinator(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;

    move-result-object v0

    new-instance v1, Landroid/app/ActivityTransitionState$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/ActivityTransitionState$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ActivityTransitionState$1;)V

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator;->runAfterTransitionsComplete(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-$$Nest$mrestoreExitedViews(Landroid/app/ActivityTransitionState;)V

    iget-object v0, p0, Landroid/app/ActivityTransitionState$1;->this$0:Landroid/app/ActivityTransitionState;

    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-$$Nest$mrestoreReenteringViews(Landroid/app/ActivityTransitionState;)V

    :cond_2
    :goto_1
    return-void
.end method

.class public final synthetic Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    const/4 v0, -0x2

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, p0, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->addListenerForType(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;[I)V

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mSplitScreenControllerOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

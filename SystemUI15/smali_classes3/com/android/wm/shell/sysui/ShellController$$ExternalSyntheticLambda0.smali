.class public final synthetic Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/sysui/ShellController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sysui/ShellController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/sysui/ShellController;

    iput-boolean p2, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/sysui/ShellController;

    iget-boolean p0, p0, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0, p0}, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/sysui/ShellController;Z)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

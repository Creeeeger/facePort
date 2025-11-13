.class public final synthetic Lcom/android/wm/shell/taskview/TaskViewFactoryController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Lcom/android/wm/shell/taskview/TaskView;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/android/wm/shell/taskview/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/taskview/TaskView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskViewFactoryController$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/taskview/TaskView;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

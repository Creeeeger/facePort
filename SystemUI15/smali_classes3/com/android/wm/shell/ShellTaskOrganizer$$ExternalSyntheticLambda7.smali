.class public final synthetic Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/ShellTaskOrganizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    return-void
.end method


# virtual methods
.method public final onMultiWindowCoreStateChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda7;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    sget v0, Lcom/android/wm/shell/ShellTaskOrganizer;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/window/TaskOrganizer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda8;-><init>(ILcom/android/wm/shell/ShellTaskOrganizer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

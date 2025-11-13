.class Landroid/os/IncidentManager$AuthListener$1;
.super Landroid/os/IIncidentAuthListener$Stub;
.source "IncidentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IncidentManager$AuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/IncidentManager$AuthListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$63tUgm8jhsBgoAnSh8XTz4NBpAk(Landroid/os/IncidentManager$AuthListener$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/IncidentManager$AuthListener$1;->lambda$onReportDenied$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Za7vRr1yTEdILGBylVmsO-tza4Y(Landroid/os/IncidentManager$AuthListener$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/IncidentManager$AuthListener$1;->lambda$onReportApproved$0()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/IncidentManager$AuthListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    invoke-direct {p0}, Landroid/os/IIncidentAuthListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onReportApproved$0()V
    .locals 1

    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    invoke-virtual {v0}, Landroid/os/IncidentManager$AuthListener;->onReportApproved()V

    return-void
.end method

.method private synthetic blacklist lambda$onReportDenied$1()V
    .locals 1

    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    invoke-virtual {v0}, Landroid/os/IncidentManager$AuthListener;->onReportDenied()V

    return-void
.end method


# virtual methods
.method public blacklist onReportApproved()V
    .locals 2

    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    iget-object v0, v0, Landroid/os/IncidentManager$AuthListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    iget-object v0, v0, Landroid/os/IncidentManager$AuthListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/IncidentManager$AuthListener$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/os/IncidentManager$AuthListener$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/IncidentManager$AuthListener$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    invoke-virtual {v0}, Landroid/os/IncidentManager$AuthListener;->onReportApproved()V

    :goto_0
    return-void
.end method

.method public blacklist onReportDenied()V
    .locals 2

    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    iget-object v0, v0, Landroid/os/IncidentManager$AuthListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    iget-object v0, v0, Landroid/os/IncidentManager$AuthListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/IncidentManager$AuthListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/os/IncidentManager$AuthListener$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/IncidentManager$AuthListener$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1;->this$0:Landroid/os/IncidentManager$AuthListener;

    invoke-virtual {v0}, Landroid/os/IncidentManager$AuthListener;->onReportDenied()V

    :goto_0
    return-void
.end method

.class public final synthetic Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/ShellTaskOrganizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    new-instance v1, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mCompatUI:Lcom/android/wm/shell/compatui/api/CompatUIHandler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/compatui/api/CompatUIHandler;->setCallback(Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda0;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->registerOrganizer()Ljava/util/List;

    return-void
.end method

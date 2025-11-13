.class public final synthetic Lcom/android/wm/shell/dagger/WMShellModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/wm/shell/transition/Transitions;

.field public final synthetic f$2:Lcom/android/wm/shell/sysui/ShellInit;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/sysui/ShellInit;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/dagger/WMShellModule$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/transition/Transitions;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/sysui/ShellInit;

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    new-instance v2, Lcom/android/wm/shell/desktopmode/DesktopTasksTransitionObserver;

    invoke-direct {v2, v0, p1, v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksTransitionObserver;-><init>(Landroid/content/Context;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/sysui/ShellInit;)V

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

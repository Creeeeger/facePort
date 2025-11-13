.class public final synthetic Lcom/android/systemui/shortcut/ShortcutKeyDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher$$ExternalSyntheticLambda0;->f$0:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/shortcut/ShortcutKeyDispatcher$$ExternalSyntheticLambda0;->f$0:J

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda9;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;J)V

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

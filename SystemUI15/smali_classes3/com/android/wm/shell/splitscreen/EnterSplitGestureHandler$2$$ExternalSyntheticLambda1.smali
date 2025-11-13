.class public final synthetic Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 1

    sget-object p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    const-string v0, "gesture committed but split controller is null."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

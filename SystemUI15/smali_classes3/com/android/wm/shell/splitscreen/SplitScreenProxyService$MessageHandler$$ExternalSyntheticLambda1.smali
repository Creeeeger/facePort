.class public final synthetic Lcom/android/wm/shell/splitscreen/SplitScreenProxyService$MessageHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->toggleSplitScreen(I)V

    return-void
.end method

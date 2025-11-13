.class public final synthetic Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda2;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda2;->f$0:Z

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mGestureStarter:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda11;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$$ExternalSyntheticLambda11;-><init>(ZI)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

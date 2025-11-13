.class public final synthetic Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object p1, p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mImpl:Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController$SplitScreenImpl;->startSplitByTwoTouchSwipeIfPossible(I)V

    return-void
.end method

.class public final synthetic Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;

    check-cast p1, Landroid/view/TwoFingerSwipeGestureDetector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$2;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;Landroid/view/TwoFingerSwipeGestureDetector;)V

    return-object v0
.end method

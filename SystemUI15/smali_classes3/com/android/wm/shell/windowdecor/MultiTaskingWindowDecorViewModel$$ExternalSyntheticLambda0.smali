.class public final synthetic Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    return-void
.end method


# virtual methods
.method public final onDisplayChange$1(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 7

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda3;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda3;-><init>(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {p0, v6}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->forAllDecorations(Ljava/util/function/Consumer;)V

    return-void
.end method

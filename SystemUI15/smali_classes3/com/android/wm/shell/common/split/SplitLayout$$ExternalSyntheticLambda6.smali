.class public final synthetic Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;ILcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda6;->f$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iget v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda6;->f$1:I

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda6;->f$2:Ljava/lang/Runnable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

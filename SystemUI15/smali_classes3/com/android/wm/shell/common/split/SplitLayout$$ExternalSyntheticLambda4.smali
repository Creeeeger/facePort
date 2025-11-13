.class public final synthetic Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-boolean p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;->f$1:Z

    iput p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;->f$1:Z

    iget p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda4;->f$2:I

    iget-object v0, v0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onSnappedToDismiss(IZZ)V

    return-void
.end method

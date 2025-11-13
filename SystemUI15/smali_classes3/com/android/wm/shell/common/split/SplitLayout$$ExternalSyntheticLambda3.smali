.class public final synthetic Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/common/split/SplitLayout;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;->f$2:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;->f$1:Z

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$$ExternalSyntheticLambda3;->f$2:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NATURAL_RESIZING:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->setCellDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/wm/shell/common/split/SplitLayout;->setDividePosition(ILandroid/window/WindowContainerTransaction;Z)V

    :goto_0
    return-void
.end method

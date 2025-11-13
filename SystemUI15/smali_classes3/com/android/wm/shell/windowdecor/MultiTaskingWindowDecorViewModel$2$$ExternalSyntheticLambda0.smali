.class public final synthetic Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2;

.field public final synthetic f$1:Landroid/graphics/Region;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2;Landroid/graphics/Region;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Region;

    iput p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Region;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2$$ExternalSyntheticLambda0;->f$2:I

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mExclusionRegion:Landroid/graphics/Region;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eq v6, p0, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_CUSTOMIZABLE_WINDOW_HEADERS:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsTaskInBack:Z

    if-eqz v6, :cond_1

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v5, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Region;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

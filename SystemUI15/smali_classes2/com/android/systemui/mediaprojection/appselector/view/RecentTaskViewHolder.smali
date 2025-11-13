.class public final Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider$TaskPreviewSizeListener;


# instance fields
.field public final iconLoader:Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;

.field public final iconView:Landroid/widget/ImageView;

.field public job:Lkotlinx/coroutines/Job;

.field public final labelLoader:Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskLabelLoader;

.field public final root:Landroid/view/ViewGroup;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final taskViewSizeProvider:Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

.field public final thumbnailLoader:Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskThumbnailLoader;

.field public final thumbnailView:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskThumbnailLoader;Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskLabelLoader;Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->root:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->iconLoader:Lcom/android/systemui/mediaprojection/appselector/data/BadgedAppIconLoader;

    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->thumbnailLoader:Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskThumbnailLoader;

    iput-object p4, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->labelLoader:Lcom/android/systemui/mediaprojection/appselector/data/RecentTaskLabelLoader;

    iput-object p5, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->taskViewSizeProvider:Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

    iput-object p6, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->scope:Lkotlinx/coroutines/CoroutineScope;

    const p2, 0x7f0a0d0f

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->thumbnailView:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;

    const p3, 0x7f0a0d0d

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget-object p1, p5, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->size:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p5, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->size:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final onTaskSizeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->thumbnailView:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->taskViewSizeProvider:Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

    iget-object v2, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->size:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->size:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

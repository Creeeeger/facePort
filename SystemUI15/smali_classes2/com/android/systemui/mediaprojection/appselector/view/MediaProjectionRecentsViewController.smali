.class public final Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$RecentTaskClickListener;
.implements Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider$TaskPreviewSizeListener;


# instance fields
.field public final activityTaskManager:Landroid/app/IActivityTaskManager;

.field public final context:Landroid/content/Context;

.field public lastBoundData:Ljava/util/List;

.field public final pluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

.field public final recentTasksAdapterFactory:Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$Factory;

.field public final resultHandler:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;

.field public final splitScreen:Ljava/util/Optional;

.field public final taskViewSizeProvider:Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

.field public views:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/PluginAODManager;Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$Factory;Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;Landroid/app/IActivityTaskManager;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/doze/PluginAODManager;",
            "Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$Factory;",
            "Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;",
            "Landroid/app/IActivityTaskManager;",
            "Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->pluginAODManager:Lcom/android/systemui/doze/PluginAODManager;

    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->recentTasksAdapterFactory:Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$Factory;

    iput-object p4, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->taskViewSizeProvider:Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

    iput-object p5, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->activityTaskManager:Landroid/app/IActivityTaskManager;

    iput-object p6, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->resultHandler:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;

    iput-object p7, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->splitScreen:Ljava/util/Optional;

    iget-object p1, p4, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final bind(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->views:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    iget-object p0, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->progress:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->recentTasksAdapterFactory:Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$Factory;

    invoke-interface {v0, p1, p0}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$Factory;->create(Ljava/util/List;Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$RecentTaskClickListener;)Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->lastBoundData:Ljava/util/List;

    return-void
.end method

.method public final onTaskSizeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->views:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->recentsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->setTaskHeightSize(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setTaskHeightSize(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->taskViewSizeProvider:Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->size:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07099a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070999

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

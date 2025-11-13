.class public final Lcom/android/systemui/media/MediaOutputHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mediaOutputDetailAdapter:Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;

.field public mediaRootView:Landroid/view/View;

.field public final qsDetailController:Lcom/android/systemui/qs/SecQSDetailController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/MediaOutputHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaOutputHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/qs/SecQSDetailController;Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/MediaOutputHelper;->qsDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    iput-object p3, p0, Lcom/android/systemui/media/MediaOutputHelper;->mediaOutputDetailAdapter:Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;

    new-instance p1, Lcom/android/systemui/media/MediaOutputHelper$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaOutputHelper$1;-><init>(Lcom/android/systemui/media/MediaOutputHelper;)V

    iput-object p1, p3, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->callback:Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter$Callback;

    return-void
.end method


# virtual methods
.method public final showDetail()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/MediaOutputHelper;->qsDetailController:Lcom/android/systemui/qs/SecQSDetailController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSDetailController;->getQsExpanded()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/media/MediaOutputHelper;->mediaOutputDetailAdapter:Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/MediaOutputHelper;->mediaRootView:Landroid/view/View;

    if-eqz p0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v3

    iput p0, v1, Landroid/graphics/Rect;->bottom:I

    iput-object v1, v2, Lcom/android/systemui/qs/tiles/detail/MediaOutputDetailAdapter;->fromRect:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecQSDetailController;->showTargetDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    return-void
.end method

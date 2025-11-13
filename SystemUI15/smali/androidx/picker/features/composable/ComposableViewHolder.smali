.class public abstract Landroidx/picker/features/composable/ComposableViewHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final frameView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/features/composable/ComposableViewHolder;->frameView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bindAdapter(Landroidx/picker/adapter/AbsAdapter;)V
    .locals 0

    return-void
.end method

.method public abstract bindData(Landroidx/picker/model/viewdata/ViewData;)V
.end method

.method public final getFrameView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/composable/ComposableViewHolder;->frameView:Landroid/view/View;

    return-object p0
.end method

.method public onBind$picker_app_release(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 0

    return-void
.end method

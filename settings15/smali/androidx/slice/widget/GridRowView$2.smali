.class public final Landroidx/slice/widget/GridRowView$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Landroidx/slice/widget/GridRowView;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/GridRowView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/GridRowView$2;->this$0:Landroidx/slice/widget/GridRowView;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/GridRowView$2;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-virtual {v0}, Landroidx/slice/widget/GridRowView;->getMaxCells()I

    move-result v1

    iput v1, v0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    iget-object v0, p0, Landroidx/slice/widget/GridRowView$2;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-virtual {v0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    iget-object v0, p0, Landroidx/slice/widget/GridRowView$2;->this$0:Landroidx/slice/widget/GridRowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Landroidx/slice/widget/GridRowView$2;->this$0:Landroidx/slice/widget/GridRowView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    const/4 p0, 0x1

    return p0
.end method

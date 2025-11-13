.class public final Landroidx/slice/widget/RowView$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/slice/widget/RowView;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/RowView;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {v0}, Landroidx/slice/widget/RowView;->sendSliderValue()V

    iget-object p0, p0, Landroidx/slice/widget/RowView$2;->this$0:Landroidx/slice/widget/RowView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    return-void
.end method

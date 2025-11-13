.class public final Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$VerticalSpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final verticalSpaceHeight:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$VerticalSpaceItemDecoration;->verticalSpaceHeight:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$VerticalSpaceItemDecoration;->verticalSpaceHeight:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

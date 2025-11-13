.class public final Lcom/android/systemui/util/recycler/HorizontalSpacerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I


# instance fields
.field private final offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/android/systemui/util/recycler/HorizontalSpacerItemDecoration;->offset:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    iget v0, p0, Lcom/android/systemui/util/recycler/HorizontalSpacerItemDecoration;->offset:I

    if-nez p2, :cond_1

    mul-int/lit8 v0, v0, 0x2

    :cond_1
    add-int/lit8 p3, p3, -0x1

    iget p0, p0, Lcom/android/systemui/util/recycler/HorizontalSpacerItemDecoration;->offset:I

    if-ne p2, p3, :cond_2

    mul-int/lit8 p0, p0, 0x2

    :cond_2
    invoke-virtual {p1, v0, p4, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

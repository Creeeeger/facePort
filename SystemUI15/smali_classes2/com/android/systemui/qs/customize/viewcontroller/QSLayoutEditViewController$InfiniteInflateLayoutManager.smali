.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$InfiniteInflateLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final MAX_INT:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x2710

    iput p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$InfiniteInflateLayoutManager;->MAX_INT:I

    return-void
.end method


# virtual methods
.method public final getExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSLayoutEditViewController$InfiniteInflateLayoutManager;->MAX_INT:I

    return p0
.end method

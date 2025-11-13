.class public final Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final subHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KshViewAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a05dc

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;->subHeader:Landroid/widget/TextView;

    const p1, 0x7f0a05db

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

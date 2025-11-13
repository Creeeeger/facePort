.class public final Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final iconView:Landroid/widget/ImageView;

.field public final keywordView:Landroid/widget/TextView;

.field public final shortcutKeysContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KshChildViewAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0569

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->iconView:Landroid/widget/ImageView;

    const p1, 0x7f0a056b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->keywordView:Landroid/widget/TextView;

    const p1, 0x7f0a056a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshChildViewAdapter$ViewHolder;->shortcutKeysContainer:Landroid/widget/LinearLayout;

    return-void
.end method

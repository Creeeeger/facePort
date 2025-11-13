.class public final Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appIcon:Landroid/widget/ImageView;

.field public appInfoIcon:Landroid/widget/ImageView;

.field public final appInfoIconStub:Landroid/view/ViewStub;

.field public final checkBox:Landroid/widget/CheckBox;

.field public final divider:Landroid/view/View;

.field public final mainText:Landroid/widget/TextView;

.field public final subText:Landroid/widget/TextView;

.field public verticalDivider:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a030e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->checkBox:Landroid/widget/CheckBox;

    const v0, 0x7f0a010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->appIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->appInfoIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->appInfoIconStub:Landroid/view/ViewStub;

    const v0, 0x7f0a0922

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->mainText:Landroid/widget/TextView;

    const v0, 0x7f0a0f30

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->subText:Landroid/widget/TextView;

    const v0, 0x7f0a0545

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->divider:Landroid/view/View;

    const v0, 0x7f0a10ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/viewholder/SubAppListViewHolder;->verticalDivider:Landroid/view/View;

    return-void
.end method

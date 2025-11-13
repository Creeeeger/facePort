.class public final Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mButtonView:Landroid/view/View;

.field public final mIconView:Landroid/widget/ImageView;

.field public final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a028a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/UserAdapter$ViewHolder;->mButtonView:Landroid/view/View;

    return-void
.end method

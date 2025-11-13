.class public final Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCustomizeButton:Landroid/widget/Button;

.field public final mDisabledAlphaValue:F

.field public final mPreviewPlaceholderView:Landroid/widget/ImageView;

.field public final mPreviewView:Landroid/widget/ImageView;

.field public final mSummaryView:Landroid/widget/TextView;

.field public final mTitleView:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/settings/dream/DreamAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/dream/DreamAdapter;Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->this$0:Lcom/android/settings/dream/DreamAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mContext:Landroid/content/Context;

    const p1, 0x7f0a0b8d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mPreviewView:Landroid/widget/ImageView;

    const p1, 0x7f0a0b97

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mPreviewPlaceholderView:Landroid/widget/ImageView;

    const p1, 0x7f0a105d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mTitleView:Landroid/widget/TextView;

    const p1, 0x7f0a0f8a

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mSummaryView:Landroid/widget/TextView;

    const p1, 0x7f0a0480

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mCustomizeButton:Landroid/widget/Button;

    invoke-static {p3}, Lcom/android/settingslib/utils/ColorUtil;->getDisabledAlpha(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mDisabledAlphaValue:F

    return-void
.end method


# virtual methods
.method public final setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/android/settings/dream/DreamAdapter$DreamViewHolder;->mDisabledAlphaValue:F

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

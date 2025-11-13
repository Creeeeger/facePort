.class public final Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field final mSliceSliderLayout:Landroid/widget/LinearLayout;

.field final sliceView:Landroidx/slice/widget/SliceView;

.field public final synthetic this$0:Lcom/android/settings/panel/PanelSlicesAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/panel/PanelSlicesAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->this$0:Lcom/android/settings/panel/PanelSlicesAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0e89

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/slice/widget/SliceView;

    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/slice/widget/SliceView;->setMode(I)V

    invoke-virtual {p1}, Landroidx/slice/widget/SliceView;->setShowTitleItems()V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    const p1, 0x7f0a0e88

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->mSliceSliderLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final isDividerAllowedAbove()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isDividerAllowedBelow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setActionLabel(Landroid/view/View;)V
    .locals 0

    new-instance p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$2;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public updateActionLabel()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a0cd7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->setActionLabel(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    const v1, 0x7f0a0fc2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    new-instance v1, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$1;

    invoke-direct {v1, p0}, Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder$1;-><init>(Lcom/android/settings/panel/PanelSlicesAdapter$SliceRowViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method

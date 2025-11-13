.class public final synthetic Lcom/android/systemui/qs/AutoSizingList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/AutoSizingList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/AutoSizingList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/AutoSizingList$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/AutoSizingList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/qs/AutoSizingList$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/AutoSizingList;

    iget-object v0, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/AutoSizingList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eq v2, v1, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/AutoSizingList;->mCount:I

    if-le v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

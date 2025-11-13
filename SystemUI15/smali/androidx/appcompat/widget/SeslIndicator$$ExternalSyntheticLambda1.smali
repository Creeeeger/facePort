.class public final synthetic Landroidx/appcompat/widget/SeslIndicator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/widget/SeslIndicator;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/SeslIndicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/SeslIndicator$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/widget/SeslIndicator;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/SeslIndicator$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/widget/SeslIndicator;

    iget-object v0, p0, Landroidx/appcompat/widget/SeslIndicator;->itemClickListener:Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView$inflate$1$1;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    iget-object p1, v0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView$inflate$1$1;->this$0:Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewpager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Landroidx/viewpager2/widget/FakeDrag;

    iget-object v0, v0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    iget-boolean v0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.class public final synthetic Landroidx/appcompat/widget/SeslIndicator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/widget/SeslIndicator$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/widget/SeslIndicator;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SeslIndicator;->itemClickListener:Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView$inflate$1$1;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/SeslIndicator;->indicator:Ljava/util/List;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    iget-object p1, v0, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView$inflate$1$1;->this$0:Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewpager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

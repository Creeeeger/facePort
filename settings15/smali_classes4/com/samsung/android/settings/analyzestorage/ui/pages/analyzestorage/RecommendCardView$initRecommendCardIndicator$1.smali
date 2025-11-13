.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$initRecommendCardIndicator$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$initRecommendCardIndicator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$initRecommendCardIndicator$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const-string p2, "context"

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "remove_animations"

    const/4 p4, 0x0

    invoke-static {p0, p2, p4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p2, 0x1

    if-eq p0, p2, :cond_0

    move p4, p2

    :cond_0
    invoke-virtual {p1, p3, p4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

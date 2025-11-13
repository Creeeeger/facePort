.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$bindRecommendCardViewPager$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$bindRecommendCardViewPager$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    return-void
.end method


# virtual methods
.method public final transformPage(Landroid/view/View;F)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$bindRecommendCardViewPager$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->updateHeightCard(I)V

    return-void
.end method

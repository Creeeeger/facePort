.class public final Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView$pageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView$pageChangeCallback$1;->this$0:Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView$pageChangeCallback$1;->this$0:Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;

    invoke-static {p0}, Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;->access$getIndicator(Lcom/samsung/android/settings/suggestionappbar/SecViewPagerAppBarView;)Landroidx/appcompat/widget/SeslIndicator;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslIndicator;->setSelectedPosition(I)V

    :goto_0
    return-void
.end method

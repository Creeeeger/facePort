.class public final Lcom/android/settings/widget/DotsPageIndicator$2;
.super Landroid/database/DataSetObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$2;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/widget/DotsPageIndicator$2;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object v0, p0, Lcom/android/settings/widget/DotsPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/widget/DotsPageIndicator;->-$$Nest$msetPageCount(Lcom/android/settings/widget/DotsPageIndicator;I)V

    return-void
.end method

.class public final Lcom/android/settings/display/ColorModePreferenceFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/display/ColorModePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/ColorModePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/ColorModePreferenceFragment$2;->this$0:Lcom/android/settings/display/ColorModePreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IIF)V
    .locals 1

    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment$2;->this$0:Lcom/android/settings/display/ColorModePreferenceFragment;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object p3, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mViewPagerImages:[Landroid/view/View;

    aget-object p3, p3, p2

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mViewPagerImages:[Landroid/view/View;

    aget-object p2, p2, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f1409af

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/display/ColorModePreferenceFragment;->updateIndicator(I)V

    :cond_1
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    return-void
.end method

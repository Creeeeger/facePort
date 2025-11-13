.class public final Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;

.field public final synthetic val$actionBar:Landroidx/appcompat/app/ActionBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;Landroidx/appcompat/app/ActionBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$1;->val$actionBar:Landroidx/appcompat/app/ActionBar;

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(IIF)V
    .locals 4

    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;

    iget-object p3, p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mPageText:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d/%d"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$1;->val$actionBar:Landroidx/appcompat/app/ActionBar;

    iget-object p3, p3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p0, 0x4

    if-nez p1, :cond_1

    iget-object p1, p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mPreviousButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ne v1, p1, :cond_2

    iget-object p1, p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mNextButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mPreviousButtonLayout:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mNextButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    return-void
.end method

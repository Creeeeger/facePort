.class public Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mItemList:Landroid/util/SparseArray;

.field public mNextButtonLayout:Landroid/widget/LinearLayout;

.field public mPageText:Landroid/widget/TextView;

.field public mPreviousButtonLayout:Landroid/widget/LinearLayout;

.field public mTipsViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d09ce

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "page_position"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    if-nez v2, :cond_1

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    :cond_1
    sget-object v2, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;

    invoke-static {p0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "sec_tap_dark_flip.json"

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "sec_tap_light_flip.json"

    :goto_1
    const v5, 0x7f14241d

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f14241e

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;

    invoke-static {p0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "sec_tap_with_two_finger_dark_flip.json"

    goto :goto_2

    :cond_3
    const-string/jumbo v4, "sec_tap_with_two_finger_light_flip.json"

    :goto_2
    const v5, 0x7f14241f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f142420

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;

    invoke-static {p0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "sec_swipe_with_two_finger_dark_flip.json"

    goto :goto_3

    :cond_4
    const-string/jumbo v4, "sec_swipe_with_two_finger_light_flip.json"

    :goto_3
    const v5, 0x7f14241b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f14241c

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;

    invoke-static {p0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "sec_pinch_with_two_finger_dark_flip.json"

    goto :goto_4

    :cond_5
    const-string/jumbo v4, "sec_pinch_with_two_finger_light_flip.json"

    :goto_4
    const v5, 0x7f142419

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f14241a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;

    invoke-static {p0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "sec_touch_hold_dark_flip.json"

    goto :goto_5

    :cond_6
    const-string/jumbo v4, "sec_touch_hold_light_flip.json"

    :goto_5
    const v5, 0x7f142425

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f142426

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;

    invoke-static {p0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "sec_touch_hold_drag_dark_flip.json"

    goto :goto_6

    :cond_7
    const-string/jumbo v4, "sec_touch_hold_drag_light_flip.json"

    :goto_6
    const v5, 0x7f142427

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f142428

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;

    invoke-static {p0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "sec_tap_with_three_finger_dark_flip.json"

    goto :goto_7

    :cond_8
    const-string/jumbo v4, "sec_tap_with_three_finger_light_flip.json"

    :goto_7
    const v5, 0x7f142423

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f142424

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;

    invoke-static {p0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "sec_tap_with_four_finger_dark_flip.json"

    goto :goto_8

    :cond_9
    const-string/jumbo v4, "sec_tap_with_four_finger_light_flip.json"

    :goto_8
    const v5, 0x7f142421

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f142422

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x7

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v2, 0x7f0a0068

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled()V

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$SettingPage;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_a
    const v3, 0x7f0a1040

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mTipsViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mTipsViewPager:Landroidx/viewpager/widget/ViewPager;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setScaleX(F)V

    :cond_b
    const v3, 0x7f0a0b0d

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mPageText:Landroid/widget/TextView;

    const v3, 0x7f0a0b9e

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mPreviousButtonLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0a56

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mNextButtonLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mPageText:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mTipsViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%d/%d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mTipsViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$TouchPadTipsPagerAdapter;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mItemList:Landroid/util/SparseArray;

    invoke-direct {v4, v5, p0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$TouchPadTipsPagerAdapter;-><init>(Landroid/util/SparseArray;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mTipsViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$1;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$1;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;Landroidx/appcompat/app/ActionBar;)V

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const v2, 0x7f0a0b9d

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mPreviousButtonLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0a55

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mNextButtonLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/flexmodepanel/TapActivity;->mTipsViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 2

    const v0, 0x10bb0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

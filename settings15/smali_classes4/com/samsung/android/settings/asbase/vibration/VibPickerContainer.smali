.class public Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIsFromContact:Z

.field public mPagerAdapter:Lcom/samsung/android/settings/asbase/vibration/PagerAdapter;

.field public final mPickerList:Ljava/util/ArrayList;

.field public final mSelectedItemList:Ljava/util/ArrayList;

.field public final mSelectedListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer$2;

.field public mSelectedTab:I

.field public mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field public mType:I

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mPickerList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer$2;-><init>(Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer$2;

    return-void
.end method

.method public static getVibPickerActivity(I)Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;

    invoke-direct {v0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "sim_slot"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final isMultiSimEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isMultiSimEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mIsFromContact:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d09e2

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "vibration_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mType:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.pattern.FROM_CONTACT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mIsFromContact:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "call_setting_ringtones"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SELECTED_TAB"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedTab:I

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->isMultiSimEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;

    iget v6, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mType:I

    const-string v9, "Custom"

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Custom"

    const/4 v7, 0x1

    const-string v8, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/settings/asbase/vibration/VibPickerItem;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->isMultiSimEnabled()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mPickerList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->getVibPickerActivity(I)Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mPickerList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->getVibPickerActivity(I)Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isEnabledSIM2Only()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mIsFromContact:Z

    if-nez p1, :cond_4

    iget p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mType:I

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mPickerList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->getVibPickerActivity(I)Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mPickerList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->getVibPickerActivity(I)Lcom/samsung/android/settings/asbase/vibration/VibPickerActivity;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mType:I

    if-nez p1, :cond_5

    const p1, 0x7f142845

    goto :goto_2

    :cond_5
    const p1, 0x7f14284b

    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setTitle(I)V

    const v2, 0x7f0a0068

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled()V

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_6
    const v0, 0x7f0a038f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_7
    const p1, 0x7f0a10f5

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    const p1, 0x7f0a10f4

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mContext:Landroid/content/Context;

    const v3, 0x7f060738

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    new-instance p1, Lcom/samsung/android/settings/asbase/vibration/PagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/asbase/vibration/PagerAdapter;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mPagerAdapter:Lcom/samsung/android/settings/asbase/vibration/PagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->isMultiSimEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    :goto_3
    const/4 p1, 0x2

    if-ge v1, p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mPagerAdapter:Lcom/samsung/android/settings/asbase/vibration/PagerAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/vibration/PagerAdapter;->mFragmentList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedListener:Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer$2;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener$1(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    iget p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mSelectedTab:I

    if-eqz p1, :cond_a

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer$1;-><init>(Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;)V

    const-wide/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mPagerAdapter:Lcom/samsung/android/settings/asbase/vibration/PagerAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mPickerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Lcom/samsung/android/settings/asbase/vibration/PagerAdapter;->mFragmentList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/vibration/VibPickerContainer;->mPagerAdapter:Lcom/samsung/android/settings/asbase/vibration/PagerAdapter;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bixby"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.class final Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WifiCallingViewPagerAdapter"
.end annotation


# instance fields
.field public final mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

.field public final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettings;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/widget/RtlCompatibleViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object p3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 3

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    const-string v1, "WifiCallingSettings"

    if-nez v0, :cond_0

    const-string p0, "Adapter getCount null mSil "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Adapter getCount "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    const-string v0, "Adapter instantiateItem "

    const-string v1, "WifiCallingSettings"

    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->mViewPager:Lcom/android/settings/widget/RtlCompatibleViewPager;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/RtlCompatibleViewPager;->getRtlAwareIndex(I)I

    move-result p2

    iget-object v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    iget-object v1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_0

    invoke-static {v1, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    :cond_0
    int-to-long v2, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "android:switcher:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/BackStackRecord;->attach(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$WifiCallingViewPagerAdapter;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    iget-object v1, v1, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Adapter getItem "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for subId="

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v6, "WifiCallingSettings"

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v6, "need_search_icon_in_action_bar"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "subId"

    invoke-virtual {p2, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;-><init>()V

    invoke-virtual {v1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v6, v1, p1, v4}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq v1, p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget p2, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mBehavior:I

    if-ne p2, v4, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/FragmentPagerAdapter;->mCurTransaction:Landroidx/fragment/app/BackStackRecord;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/BackStackRecord;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_3
    :goto_1
    return-object v1
.end method

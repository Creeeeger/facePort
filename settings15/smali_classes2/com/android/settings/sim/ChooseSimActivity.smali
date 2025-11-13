.class public Lcom/android/settings/sim/ChooseSimActivity;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;
.implements Lcom/android/settings/SidecarFragment$Listener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mEmbeddedSubscriptions:Ljava/util/ArrayList;

.field public mHasPsim:Z

.field public mIsSwitching:Z

.field public mNoPsimContinueToSettings:Z

.field public mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

.field public mSelectedItemIndex:I

.field public mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

.field public mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0d0171

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "has_psim"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/sim/ChooseSimActivity;->mHasPsim:Z

    const-string v2, "no_psim_continue_to_settings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mNoPsimContinueToSettings:Z

    sget-object v1, Lcom/android/settings/network/SubscriptionUtil;->REGEX_DISPLAY_NAME_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lcom/android/settings/network/telephony/SubscriptionRepositoryKt;->getSelectableSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/android/settings/sim/ChooseSimActivity;->mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "ChooseSimActivity"

    const-string v0, "Unable to find available eSIM subscriptions."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    const-string v1, "selected_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    const-string v1, "is_switching"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    :cond_4
    const p1, 0x7f0a06d7

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/GlifLayout;

    iget-object v2, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-boolean v4, p0, Lcom/android/settings/sim/ChooseSimActivity;->mHasPsim:Z

    if-eqz v4, :cond_5

    add-int/2addr v2, v0

    :cond_5
    const v4, 0x7f140943

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/icu/text/MessageFormat;

    const v5, 0x7f140942

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "count"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifRecyclerLayout;

    iget-object p1, p1, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    iget-object p1, p1, Lcom/google/android/setupdesign/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    if-eqz v1, :cond_6

    check-cast p1, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    iget-object p1, p1, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    :cond_6
    check-cast p1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    iput-object p0, p1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->listener:Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;

    iget-object p1, p1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->itemHierarchy:Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mHasPsim:Z

    const-string v1, ""

    const v2, 0x7f140940

    const/4 v4, 0x0

    if-eqz p1, :cond_d

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/settings/sim/ChooseSimActivity;->mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_7
    move-object v1, v4

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f142c01

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    invoke-virtual {v5, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_2

    :cond_9
    iget-boolean v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_3

    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mRemovableSubscription:Landroid/telephony/SubscriptionInfo;

    invoke-static {p0, v1}, Lcom/android/settings/network/SubscriptionUtil;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_5

    :cond_c
    throw v4

    :cond_d
    iget-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mEmbeddedSubscriptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    invoke-virtual {v6, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_6

    :cond_f
    iget-boolean v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    if-eqz v1, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_7

    :cond_11
    :goto_8
    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;

    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_9

    :cond_12
    throw v4

    :cond_13
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    sget v0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;->$r8$clinit:I

    const-class v0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    const-string v1, "SwitchRemovableSidecar"

    invoke-static {p1, v1, v0}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;)Lcom/android/settings/SidecarFragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    iput-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)V

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "selected_index"

    iget v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSelectedItemIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "is_switching"

    iget-boolean v1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mIsSwitching:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToRemovableSlotSidecar:Lcom/android/settings/network/SwitchToRemovableSlotSidecar;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "ChooseSimActivity"

    if-ne p1, v0, :cond_3

    iget p1, v0, Lcom/android/settings/SidecarFragment;->mState:I

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4, v4}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p0, "Failed to switch slot in ChooseSubscriptionsActivity."

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :cond_1
    invoke-virtual {v0, v4, v4}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p1, "Switch slot successfully."

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->canDisablePhysicalSubscription()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getFirstRemovableSubscription(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/telephony/SubscriptionManager;->setUiccApplicationsEnabled(IZ)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/sim/ChooseSimActivity;->mSwitchToEuiccSubscriptionSidecar:Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    if-ne p1, v0, :cond_7

    iget p1, v0, Lcom/android/settings/SidecarFragment;->mState:I

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v4, v4}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p0, "Failed to switch subscription in ChooseSubscriptionsActivity."

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :cond_5
    invoke-virtual {v0, v4, v4}, Lcom/android/settings/SidecarFragment;->setState(II)V

    iget-boolean p1, p0, Lcom/android/settings/sim/ChooseSimActivity;->mNoPsimContinueToSettings:Z

    if-eqz p1, :cond_6

    const-string p0, "mNoPsimContinueToSettings is true which is not supported for now."

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string p1, "User finished selecting eSIM profile."

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_7
    :goto_0
    return-void
.end method

.class public Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockAfterTimeoutFragment"
.end annotation


# instance fields
.field public mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mListView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1150

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p3, 0x7f0d08f3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a08ee

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    const p3, 0x7f060738

    const/16 v1, 0xf

    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-direct {p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    new-instance v3, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$VerticalLineItemDecoration;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$VerticalLineItemDecoration;-><init>(Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;Landroidx/fragment/app/FragmentActivity;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p2}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p2

    const v2, 0x7f0a0a3c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2, p2, v0, p2, v0}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v2, v1, p0}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->semSetRoundedCornerOffset(I)V

    return-object p1
.end method

.method public final onResume()V
    .locals 17

    move-object/from16 v7, p0

    invoke-super/range {p0 .. p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    iget-object v0, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v8

    goto :goto_0

    :cond_0
    move-wide v8, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "screen_off_timeout"

    const/4 v10, 0x0

    invoke-static {v0, v4, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v11, v0

    sub-long v13, v8, v11

    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    const-string v0, "maxTimeout before Knox is = "

    const-string v4, ", adminTimeout : "

    invoke-static {v13, v14, v0, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", displayTimeout : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "LockAfterTimeoutActivity"

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v11, "getPasswordLockDelay"

    invoke-static {v0, v11, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "getPasswordLockDelay - "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", adminTimeout - "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_2

    cmp-long v1, v8, v2

    if-nez v1, :cond_1

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v13, v1

    goto :goto_1

    :cond_1
    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v11, v1

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "maxTimeout after Knox is = "

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v11, 0x7f0300ff

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    iget-object v1, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v12, 0x7f030100

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    cmp-long v1, v8, v2

    const/4 v8, 0x1

    if-gtz v1, :cond_4

    if-ltz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v9, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    iget-object v2, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v3, v11

    move-object v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;-><init>(Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;Landroidx/fragment/app/FragmentActivity;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;J)V

    iput-object v9, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    goto/16 :goto_6

    :cond_4
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    array-length v9, v12

    if-ge v10, v9, :cond_6

    aget-object v9, v12, v10

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v9, v15, v13

    if-gtz v9, :cond_5

    aget-object v9, v11, v10

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v9, v12, v10

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "revisedValues.size() : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v13, v9

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v15, "last_timeout : "

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v9, v9, v2

    if-lez v9, :cond_a

    array-length v9, v12

    sub-int/2addr v9, v8

    aget-object v9, v12, v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v13, v9

    if-gez v9, :cond_a

    const-wide/16 v9, 0x3e8

    div-long v9, v13, v9

    const-wide/16 v11, 0x3c

    move-wide v15, v5

    div-long v5, v9, v11

    rem-long/2addr v9, v11

    cmp-long v11, v5, v2

    if-lez v11, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    long-to-int v5, v5

    const v6, 0x7f12001f

    invoke-virtual {v12, v6, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    const-string v5, ""

    :goto_4
    if-lez v11, :cond_8

    cmp-long v6, v9, v2

    if-lez v6, :cond_8

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_8
    cmp-long v2, v9, v2

    if-lez v2, :cond_9

    invoke-static {v5}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    long-to-int v5, v9

    const v6, 0x7f120020

    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTimeoutNewEntry : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f141597

    invoke-virtual {v7, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    move-wide v15, v5

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/CharSequence;

    new-instance v9, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    iget-object v2, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;-><init>(Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;Landroidx/fragment/app/FragmentActivity;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;J)V

    iput-object v9, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    :goto_6
    iget-object v0, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mAdapter:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment$RadioAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setSelected(Z)V

    iget-object v0, v7, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$LockAfterTimeoutFragment;->mListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

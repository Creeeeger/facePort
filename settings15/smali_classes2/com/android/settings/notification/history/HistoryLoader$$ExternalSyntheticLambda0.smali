.class public final synthetic Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/history/HistoryLoader;Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;

    iput-object p2, p0, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget v2, v0, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, v0, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;

    iget-object v0, v0, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/settings/notification/history/NotificationHistoryActivity;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    iget-object v2, v2, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    const v3, 0x7f0a1062

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/16 v11, 0x8

    if-eqz v4, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v3, v2, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    const v4, 0x7f0a012a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayAppCount:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mTodayAppCount : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayAppCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotifHistory"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v3, :cond_4

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d04cc

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    const v10, 0x7f0a0aa3

    invoke-virtual {v15, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0a010d

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v4, 0x7f0a05ee

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    const v4, 0x7f1409e6

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    const v4, 0x7f1409e7

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v8, v4}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    new-instance v7, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda6;

    move-object v4, v7

    move-object v5, v2

    move-object v12, v7

    move-object v7, v9

    move-object v11, v9

    move-object v9, v14

    move v10, v13

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Lcom/android/settings/notification/history/NotificationHistoryPackage;I)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a0766

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    add-int/lit8 v5, v3, -0x1

    if-ne v13, v5, :cond_2

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_2
    const/16 v5, 0x8

    :goto_3
    const v4, 0x7f0a085e

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;->label:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    iget-object v6, v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;

    :goto_4
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v2, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    iget v8, v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a0797

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v6, v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x7f0a0446

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->size()I

    move-result v7

    iget-object v8, v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const v9, 0x7f12002a

    invoke-virtual {v6, v9, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0a0aa3

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    new-instance v7, Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    iget-object v8, v2, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mNm:Landroid/app/INotificationManager;

    new-instance v9, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda7;

    invoke-direct {v9, v2, v4, v15}, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;Landroid/widget/TextView;Landroid/view/View;)V

    iget-object v4, v2, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-direct {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v7, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;->setOnItemSwipeDeleteListener(Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$OnItemSwipeDeleteListener;)V

    iput-object v8, v7, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mNm:Landroid/app/INotificationManager;

    iput-object v9, v7, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mListener:Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda7;

    iput-object v4, v7, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v14, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v4, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    new-instance v8, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v6, v2, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/2addr v13, v1

    move v11, v5

    goto/16 :goto_1

    :cond_4
    iget-object v0, v2, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/samsung/android/settings/widget/SecMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    :cond_5
    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/notification/history/HistoryLoader;

    iget-object v2, v0, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v1, Lcom/android/settings/notification/history/HistoryLoader;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, v1, Lcom/android/settings/notification/history/HistoryLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settings/notification/history/HistoryLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, v4, v5}, Landroid/app/INotificationManager;->getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "NotificationBackend"

    const-string v5, "Error calling NoMan"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/app/NotificationHistory;

    invoke-direct {v0}, Landroid/app/NotificationHistory;-><init>()V

    :goto_5
    invoke-virtual {v0}, Landroid/app/NotificationHistory;->hasNextNotification()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Landroid/app/NotificationHistory;->getNextNotification()Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v5, "com.android.systemui"

    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/settings/notification/history/HistoryLoader;->channelList:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settings/notification/history/NotificationHistoryPackage;

    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v8

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v7, v6, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;

    iput v8, v6, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    new-instance v7, Ljava/util/TreeSet;

    new-instance v8, Lcom/android/settings/notification/history/NotificationHistoryPackage$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-direct {v7, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v7, v6, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/history/NotificationHistoryPackage;

    iget-object v7, v6, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-virtual {v7, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/history/NotificationHistoryPackage;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v5, v1, Lcom/android/settings/notification/history/HistoryLoader;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v4, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    iget v7, v4, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    :try_start_4
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const v9, 0xc2200

    invoke-virtual {v5, v6, v9, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v6, v1, Lcom/android/settings/notification/history/HistoryLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/settings/notification/history/NotificationHistoryPackage;->label:Ljava/lang/CharSequence;

    iget-object v6, v1, Lcom/android/settings/notification/history/HistoryLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/notification/history/NotificationHistoryPackage;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_2
    :try_start_5
    iget-object v5, v1, Lcom/android/settings/notification/history/HistoryLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/notification/history/NotificationHistoryPackage;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    :cond_9
    new-instance v1, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    :goto_7
    const-string v1, "HistoryLoader"

    const-string v2, "Error loading history"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

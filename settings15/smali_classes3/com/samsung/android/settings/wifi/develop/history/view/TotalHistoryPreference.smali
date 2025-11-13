.class public Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mHistoryLogDataAdapter:Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

.field public mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d0a5e

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    sget-object p1, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getDeviceLog(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mOnOffLog:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mConnectionLog:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->type:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    sget-object v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->DISCONNECTED:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v4, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->CONNECTED:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->type:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    const/4 v6, 0x1

    const-string v7, ""

    if-nez v3, :cond_8

    invoke-virtual {v4, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->ASSOC_REJECT:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v3, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->L2_CONNECT_FAIL:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v3, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->ROAM:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v3, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->WIFI_ON_OFF:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mOnOffLog:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser;->parseOnOffLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser$OnOffLog;

    move-result-object v3

    iget-object v4, v3, Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser$OnOffLog;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, v3, Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser$OnOffLog;->packageName:Ljava/lang/String;

    :cond_3
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser;->parseOnOffLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser$OnOffLog;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser$OnOffLog;->wifiState:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v6, v0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->wifiState:Z

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->wifiState:Z

    :cond_5
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser;->parseOnOffLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser$OnOffLog;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/history/model/OnOffLogParser$OnOffLog;->packageName:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string v2, "Unknown"

    :goto_3
    iput-object v2, v0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->appName:Ljava/lang/String;

    :cond_6
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mConnectionLog:Ljava/util/HashMap;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v2, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->data:Ljava/lang/String;

    const-string/jumbo v4, "ssid=\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "\""

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_a
    iput-object v7, v0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->targetSsid:Ljava/lang/String;

    :cond_b
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mOnOffLog:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mConnectionLog:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/16 v2, 0x8

    const v3, 0x7f0a1079

    if-eqz v1, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const v1, 0x7f0a107a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference;->mHistoryLogDataAdapter:Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mOnOffLog:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mConnectionLog:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mLogSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mLogSet:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mLogSet:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference;->mHistoryLogDataAdapter:Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f060669

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference;->mHistoryLogDataAdapter:Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference$1;-><init>(Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference;)V

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mItemClickListener:Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference$1;

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mTargetLog:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mLogSet:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mTargetLog:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mTargetLog:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

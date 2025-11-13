.class public Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public lastConnectedTime:Landroid/widget/TextView;

.field public mHistoryLogDataAdapter:Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

.field public mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mSelectedSsid:Ljava/lang/String;

.field public mSpinner:Landroid/widget/Spinner;

.field public securityAkm:Landroid/widget/TextView;

.field public securityGroup:Landroid/widget/TextView;

.field public securityPairwise:Landroid/widget/TextView;

.field public securitySummary:Landroid/widget/LinearLayout;

.field public status:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0d0a5d

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    sget-object p1, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->updateRouterHistoryLog(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 9

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const v2, 0x7f0a08fc

    const v3, 0x7f0a076c

    const v4, 0x7f0a076b

    const v5, 0x7f0a076d

    const v6, 0x7f0a0cd1

    const/16 v7, 0x8

    if-eqz v1, :cond_0

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const v1, 0x7f0a0aa7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const v8, 0x1090008

    invoke-direct {v6, v1, v8, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v7, 0x7f0d09b1

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v7, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference$1;-><init>(Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->semSetRoundedCorners(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    const v8, 0x7f060669

    invoke-virtual {v1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v6, v7, v1}, Landroid/widget/Spinner;->semSetRoundedCornerColor(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securitySummary:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->status:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->lastConnectedTime:Landroid/widget/TextView;

    const v1, 0x7f0a0cd0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securityPairwise:Landroid/widget/TextView;

    const v1, 0x7f0a0ccf

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securityGroup:Landroid/widget/TextView;

    const v1, 0x7f0a0cce

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securityAkm:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataAdapter:Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->mLogBySsid:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mLogSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mLogSet:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mLogSet:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataAdapter:Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v7, v0}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSelectedSsid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.class public Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;
.super Landroidx/preference/Preference;
.source "RouterHistoryPreference.java"


# instance fields
.field lastConnectedTime:Landroid/widget/TextView;

.field private mHistoryLogDataAdapter:Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

.field private mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSpinner:Landroid/widget/Spinner;

.field securityAkm:Landroid/widget/TextView;

.field securityGroup:Landroid/widget/TextView;

.field securityPairwise:Landroid/widget/TextView;

.field securitySummary:Landroid/widget/LinearLayout;

.field status:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHistoryLogDataAdapter(Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;)Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataAdapter:Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSpinner(Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateLastConnectedTime(Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->updateLastConnectedTime(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSecurity(Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->updateSecurity(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStatus(Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->updateStatus(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_development_history_router_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 41
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getInstance()Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->updateLog(Landroid/content/Context;)V

    return-void
.end method

.method private setupRecyclerView(Landroid/view/View;)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    sget v1, Lcom/android/settings/R$id;->log_data_recycler_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 106
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataAdapter:Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

    .line 107
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getInstance()Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getLogData()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->onUpdateLogSet(Ljava/util/HashMap;)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataAdapter:Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 110
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mHistoryLogDataRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget p1, Lcom/android/settings/R$color;->sec_round_and_bgcolor:I

    .line 112
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 111
    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method private setupSpinner(Landroid/view/View;)V
    .locals 3

    .line 71
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    sget v1, Lcom/android/settings/R$id;->router_spinner:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    .line 73
    new-instance p1, Landroid/widget/ArrayAdapter;

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->getSpinnerArray()[Ljava/lang/String;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {p1, v0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 77
    sget v1, Lcom/android/settings/R$layout;->sec_simple_spinner_dropdown_item:I

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 78
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference$1;-><init>(Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 94
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->semSetRoundedCorners(I)V

    .line 95
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->mSpinner:Landroid/widget/Spinner;

    sget p1, Lcom/android/settings/R$color;->sec_round_and_bgcolor:I

    .line 96
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 95
    invoke-virtual {p0, v1, p1}, Landroid/widget/Spinner;->semSetRoundedCornerColor(II)V

    return-void
.end method

.method private updateLastConnectedTime(Ljava/lang/String;)V
    .locals 2

    .line 128
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getInstance()Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getLogDataBySsid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last connected time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getTime()Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/Util;->convertTimeToString(Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->lastConnectedTime:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateSecurity(Ljava/lang/String;)V
    .locals 2

    .line 137
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getInstance()Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getSecurityBy(Ljava/lang/String;)Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->getPairwiseCipher()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->getGroupCipher()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->getAkmSuite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securitySummary:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pairwise cipher: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->getPairwiseCipher()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securityPairwise:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group cipher: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->getGroupCipher()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securityGroup:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "akm suite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$SecurityInfo;->getAkmSuite()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securityAkm:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 140
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securitySummary:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateStatus(Ljava/lang/String;)V
    .locals 2

    .line 116
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getInstance()Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getLastConnectedSsid()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Connected"

    goto :goto_0

    :cond_0
    const-string p1, "Disconnected"

    .line 123
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->status:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getSpinnerArray()[Ljava/lang/String;
    .locals 0

    .line 100
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getInstance()Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getSsidList()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 47
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 48
    invoke-static {}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getInstance()Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;->getLogData()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 49
    sget p0, Lcom/android/settings/R$id;->router_spinner:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    sget p0, Lcom/android/settings/R$id;->history_log_summary_status:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    sget p0, Lcom/android/settings/R$id;->history_log_summary_last_connected_time:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    sget p0, Lcom/android/settings/R$id;->history_log_summary_security:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    sget p0, Lcom/android/settings/R$id;->log_data_recycler_view:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 56
    :cond_0
    sget v0, Lcom/android/settings/R$id;->notification_no_available_log:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->setupSpinner(Landroid/view/View;)V

    .line 60
    sget v0, Lcom/android/settings/R$id;->history_log_summary_security:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securitySummary:Landroid/widget/LinearLayout;

    .line 61
    sget v0, Lcom/android/settings/R$id;->history_log_summary_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->status:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/android/settings/R$id;->history_log_summary_last_connected_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->lastConnectedTime:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/android/settings/R$id;->router_security_pairwise:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securityPairwise:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/android/settings/R$id;->router_security_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securityGroup:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/android/settings/R$id;->router_security_akm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->securityAkm:Landroid/widget/TextView;

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/RouterHistoryPreference;->setupRecyclerView(Landroid/view/View;)V

    return-void
.end method

.class public final Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final data:Landroid/widget/TextView;

.field public final time:Landroid/widget/TextView;

.field public final type:Landroid/widget/TextView;


# direct methods
.method public static -$$Nest$mhandleClickEvent(Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference$1;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference;->mHistoryLogDataAdapter:Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mTargetLog:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->type:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    sget-object v1, Lcom/samsung/android/settings/wifi/develop/history/model/LogType;->WIFI_ON_OFF:Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    if-eq v0, v1, :cond_2

    sget-object v2, Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/wifi/develop/history/model/LogRepository;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser;->parseTryToConnectLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;

    move-result-object p0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;->ssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/model/IssueDetectorLogParser$TryToConnectLog;->ssid:Ljava/lang/String;

    :cond_1
    :goto_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.Settings$RouterHistoryActivity"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, ":settings:fragment_args_key"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference$1;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0769

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a076e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;->time:Landroid/widget/TextView;

    const v1, 0x7f0a076f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;->type:Landroid/widget/TextView;

    const v1, 0x7f0a076a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;->data:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder$1;-><init>(Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference$1;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder$1;-><init>(Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;Lcom/samsung/android/settings/wifi/develop/history/view/TotalHistoryPreference$1;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

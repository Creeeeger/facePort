.class public Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HistoryLogDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mLogSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTargetLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mLogSet:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mTargetLog:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mTargetLog:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->onBindViewHolder(Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;I)V
    .locals 1

    .line 44
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mTargetLog:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    .line 46
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;->-$$Nest$fgettime(Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getTime()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/history/Util;->convertTimeToString(Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;->-$$Nest$fgettype(Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getType()Lcom/samsung/android/settings/wifi/develop/history/model/LogType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;->-$$Nest$fgetdata(Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onChangeTargetSsid(Ljava/lang/String;)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeTargetSsid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HistoryLogDataAdapter"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/develop/history/Util;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mLogSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mTargetLog:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;
    .locals 2

    .line 38
    new-instance p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->sec_wifi_development_history_log_data_item:I

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public onUpdateLogSet(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;",
            ">;>;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mLogSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mLogSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUpdateLogSet "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;->mLogSet:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HistoryLogDataAdapter"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/wifi/develop/history/Util;->verboseLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HistoryLogDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryLogViewHolder"
.end annotation


# instance fields
.field private final data:Landroid/widget/TextView;

.field private final time:Landroid/widget/TextView;

.field private final type:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetdata(Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;->data:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettime(Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;->time:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;->type:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 29
    sget v0, Lcom/android/settings/R$id;->history_log_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;->time:Landroid/widget/TextView;

    .line 30
    sget v0, Lcom/android/settings/R$id;->history_log_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;->type:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/android/settings/R$id;->history_log_data:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/HistoryLogDataAdapter$HistoryLogViewHolder;->data:Landroid/widget/TextView;

    return-void
.end method

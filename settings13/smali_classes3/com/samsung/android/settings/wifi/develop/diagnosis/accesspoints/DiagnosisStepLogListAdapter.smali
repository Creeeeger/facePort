.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DiagnosisStepLogListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter$DiagnosisStepHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter$DiagnosisStepHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;->mLogs:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 34
    check-cast p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter$DiagnosisStepHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;->onBindViewHolder(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter$DiagnosisStepHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter$DiagnosisStepHolder;I)V
    .locals 0

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter$DiagnosisStepHolder;->getItem()Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;->mLogs:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;->setLog(Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter$DiagnosisStepHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter$DiagnosisStepHolder;
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->sec_diagnosis_step_layout:I

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;

    .line 49
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter$DiagnosisStepHolder;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter$DiagnosisStepHolder;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;)V

    return-object p1
.end method

.method public updateLogData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/wifi/develop/history/model/HistoryLog;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;->mLogs:Ljava/util/List;

    .line 65
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

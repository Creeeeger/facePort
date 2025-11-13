.class public final Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final infoInitialList:[[Ljava/lang/String;

.field public final infoList:[Ljava/lang/String;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "Current connection state"

    const-string v1, ""

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "Target domain for DNS query"

    const-string v3, "Click to enter target domain to test DNS request"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "Validation check HTTP url"

    const-string v5, "Click to enter URL"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "Validation check HTTPS url"

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0, v2, v4, v6}, [[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoInitialList:[[Ljava/lang/String;

    filled-new-array {v1, v3, v5, v5}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final isNotSet(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoInitialList:[[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    check-cast p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;->mCell:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mContext:Landroid/content/Context;

    const v1, 0x7f060b83

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    aget-object v1, v0, p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoInitialList:[[Ljava/lang/String;

    if-eqz v1, :cond_0

    aget-object v1, v2, p2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    aput-object v1, v0, p2

    :cond_0
    aget-object v1, v2, p2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-object v0, v0, p2

    iget-object v3, p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->mSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-lez p2, :cond_2

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d0a55

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;->mCell:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;

    return-object p1
.end method

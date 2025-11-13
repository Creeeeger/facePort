.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NetworkDiagnosisInformationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final infoInitialList:[[Ljava/lang/String;

.field private infoList:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$JBWp3kBDTFnUedU9AHh-yULzoQg(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;ILandroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->lambda$onBindViewHolder$0(ILandroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JMPOheO7TAk3sWaEpzzXSqmqLmo(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->lambda$onBindViewHolder$2(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_j4pGeFOp-mUYn84fJ7LkRl31ao(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->lambda$onBindViewHolder$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "Current connection state"

    const-string v2, ""

    .line 33
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "Target domain for DNS query"

    const-string v3, "Click to enter target domain to test DNS request"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const-string v1, "Validation check HTTP url"

    const-string v4, "Click to enter URL"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v0, v5

    const-string v1, "Validation check HTTPS url"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoInitialList:[[Ljava/lang/String;

    .line 40
    filled-new-array {v2, v3, v4, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 77
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 78
    iget-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, p1

    .line 79
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    aget-object p2, p2, p1

    const-string p3, "example.com"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 80
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoInitialList:[[Ljava/lang/String;

    aget-object p3, p3, p1

    const/4 p4, 0x1

    aget-object p3, p3, p4

    aput-object p3, p2, p1

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 84
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(ILandroid/view/View;)V
    .locals 5

    .line 66
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$layout;->sec_wifi_developer_network_diagnosis_dialog:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 70
    sget v2, Lcom/android/settings/R$id;->input_box:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "example.com"

    .line 71
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    const/4 p2, 0x5

    .line 73
    :goto_1
    invoke-direct {v3, v4, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 74
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoInitialList:[[Ljava/lang/String;

    aget-object p2, p2, p1

    aget-object p2, p2, v0

    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const p2, 0x104000a

    .line 76
    new-instance v1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;ILandroid/widget/EditText;)V

    invoke-virtual {v3, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    .line 84
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v3, p0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 86
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getSummary(I)Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public isNotSet(I)Z
    .locals 2

    .line 101
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

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->onBindViewHolder(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;I)V
    .locals 3

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;->getCell()Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->setTextColor()V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoInitialList:[[Ljava/lang/String;

    aget-object v1, v1, p2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aput-object v1, v0, p2

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoInitialList:[[Ljava/lang/String;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;->setSummary(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_1

    .line 65
    new-instance v0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;
    .locals 1

    .line 51
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->sec_wifi_developer_network_diagnosis_cell:I

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;

    .line 53
    new-instance p1, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;-><init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;)V

    return-object p1
.end method

.method public setCurrentState(Ljava/lang/String;)V
    .locals 1

    .line 93
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInformationAdapter;->infoList:[Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-void
.end method

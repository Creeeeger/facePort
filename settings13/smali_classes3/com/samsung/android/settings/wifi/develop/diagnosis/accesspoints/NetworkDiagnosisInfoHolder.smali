.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NetworkDiagnosisInfoHolder.java"


# instance fields
.field private mCell:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 12
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;->mCell:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;

    return-void
.end method


# virtual methods
.method public getCell()Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisInfoHolder;->mCell:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/NetworkDiagnosisItem;

    return-object p0
.end method

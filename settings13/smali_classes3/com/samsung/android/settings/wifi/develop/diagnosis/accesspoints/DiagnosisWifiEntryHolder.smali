.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DiagnosisWifiEntryHolder.java"


# instance fields
.field private mCell:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;->mCell:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;

    return-void
.end method


# virtual methods
.method public getCell()Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryHolder;->mCell:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisWifiEntryItem;

    return-object p0
.end method

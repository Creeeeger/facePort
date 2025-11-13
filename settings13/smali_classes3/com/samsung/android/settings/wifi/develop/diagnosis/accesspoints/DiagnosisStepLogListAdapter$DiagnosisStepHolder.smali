.class public Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter$DiagnosisStepHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DiagnosisStepLogListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiagnosisStepHolder"
.end annotation


# instance fields
.field private final mItem:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 81
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter$DiagnosisStepHolder;->mItem:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;

    return-void
.end method


# virtual methods
.method public getItem()Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepLogListAdapter$DiagnosisStepHolder;->mItem:Lcom/samsung/android/settings/wifi/develop/diagnosis/accesspoints/DiagnosisStepItem;

    return-object p0
.end method

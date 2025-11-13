.class Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment$1;
.super Ljava/lang/Object;
.source "WifiDeveloperDiagnosisFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->-$$Nest$fputmCurrentTab(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;I)V

    .line 76
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->-$$Nest$fgetmCurrentTab(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;->-$$Nest$mchangeTab(Lcom/samsung/android/settings/wifi/develop/diagnosis/WifiDeveloperDiagnosisFragment;I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

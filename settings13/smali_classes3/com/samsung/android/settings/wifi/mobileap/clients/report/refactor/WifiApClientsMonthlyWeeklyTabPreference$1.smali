.class Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference$1;
.super Ljava/lang/Object;
.source "WifiApClientsMonthlyWeeklyTabPreference.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 50
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 51
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabSelected() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is selected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->-$$Nest$fputmTabIndexSelected(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;I)V

    .line 53
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;->-$$Nest$fgetmWifiApClientsReportActivity(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsMonthlyWeeklyTabPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->updatePreference()V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

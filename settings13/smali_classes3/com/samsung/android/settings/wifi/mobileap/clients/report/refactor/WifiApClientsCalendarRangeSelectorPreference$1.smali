.class Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference$1;
.super Ljava/lang/Object;
.source "WifiApClientsCalendarRangeSelectorPreference.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Long;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->-$$Nest$fputmDayInMillis(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;Ljava/lang/Long;)V

    .line 88
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->access$000(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;)V

    .line 89
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;->-$$Nest$fgetmWifiApClientsReportActivity(Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference;)Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsReportActivity;->updateBarChartPreference()V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/refactor/WifiApClientsCalendarRangeSelectorPreference$1;->onChanged(Ljava/lang/Long;)V

    return-void
.end method

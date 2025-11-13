.class Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$3;
.super Ljava/lang/Object;
.source "WifiApConfigureSetDataLimitPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string v0, "8028"

    const-string v1, "TETH_010"

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const-wide/16 v2, 0x1

    .line 115
    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 116
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetmApMobileData(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    move-result-object p2

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->getInputLimitData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->setMobileDataLimited(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    const-wide/16 p1, 0x2

    .line 118
    invoke-static {v1, v0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 119
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetmApMobileData(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$ApMobileData;->setMobileDataUnLimited()V

    goto :goto_0

    :cond_1
    const/4 p1, -0x3

    if-ne p2, p1, :cond_2

    const-wide/16 p1, 0x0

    .line 121
    invoke-static {v1, v0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 124
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->-$$Nest$fgetmThisPreference(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;)Landroidx/preference/SecPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

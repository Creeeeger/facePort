.class Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController$1;
.super Landroid/text/style/ClickableSpan;
.source "SecTetherDataSaverFooterPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 105
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->access$100(Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;

    .line 106
    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->access$000(Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataSaverSummaryCHN;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->data_saver_title_chn:I

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

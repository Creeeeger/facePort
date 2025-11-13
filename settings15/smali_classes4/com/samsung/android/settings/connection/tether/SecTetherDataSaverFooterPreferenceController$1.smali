.class public final Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->access$100(Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController$1;->this$0:Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;->access$000(Lcom/samsung/android/settings/connection/tether/SecTetherDataSaverFooterPreferenceController;)I

    move-result p0

    iget-object v0, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DataSaverSummaryCHN;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    const v0, 0x7f140b7d

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

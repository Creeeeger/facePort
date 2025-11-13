.class public Lcom/android/settings/notification/zen/ZenOnboardingActivity;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I = 0x0

.field static final ALWAYS_SHOW_THRESHOLD:J = 0x48190800L

.field static final PREF_KEY_SUGGESTION_FIRST_DISPLAY_TIME:Ljava/lang/String; = "pref_zen_suggestion_first_display_time_ms"


# instance fields
.field public mKeepCurrentSetting:Landroid/view/View;

.field public mKeepCurrentSettingButton:Landroid/widget/RadioButton;

.field public mMetrics:Lcom/android/internal/logging/MetricsLogger;

.field public mNewSetting:Landroid/view/View;

.field public mNewSettingButton:Landroid/widget/RadioButton;

.field public mNm:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public launchSettings(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x563

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->setNotificationManager(Landroid/app/NotificationManager;)V

    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->setMetricsLogger(Lcom/android/internal/logging/MetricsLogger;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "zen_settings_suggestion_viewed"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->setupUI()V

    return-void
.end method

.method public save(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNewSettingButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/NotificationManager$Policy;

    iget v2, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    or-int/lit8 v2, v2, 0x10

    iget p1, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-static {}, Landroid/app/NotificationManager$Policy;->getAllSuppressedVisualEffects()I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {v0, v2, v4, p1, v3}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    :goto_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x562

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x57e

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "zen_settings_updated"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public setMetricsLogger(Lcom/android/internal/logging/MetricsLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method public setNotificationManager(Landroid/app/NotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNm:Landroid/app/NotificationManager;

    return-void
.end method

.method public setupUI()V
    .locals 3

    const v0, 0x7f0d0c34

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0a11e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNewSetting:Landroid/view/View;

    const v0, 0x7f0a11e5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mKeepCurrentSetting:Landroid/view/View;

    const v0, 0x7f0a11ea

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNewSettingButton:Landroid/widget/RadioButton;

    const v0, 0x7f0a11e6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mKeepCurrentSettingButton:Landroid/widget/RadioButton;

    new-instance v0, Lcom/android/settings/notification/zen/ZenOnboardingActivity$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/zen/ZenOnboardingActivity$1;-><init>(Lcom/android/settings/notification/zen/ZenOnboardingActivity;I)V

    new-instance v1, Lcom/android/settings/notification/zen/ZenOnboardingActivity$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/notification/zen/ZenOnboardingActivity$1;-><init>(Lcom/android/settings/notification/zen/ZenOnboardingActivity;I)V

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNewSetting:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mNewSettingButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mKeepCurrentSetting:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mKeepCurrentSettingButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mKeepCurrentSettingButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenOnboardingActivity;->mMetrics:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x564

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    return-void
.end method

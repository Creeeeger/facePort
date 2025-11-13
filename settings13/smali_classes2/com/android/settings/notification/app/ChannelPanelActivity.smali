.class public Lcom/android/settings/notification/app/ChannelPanelActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ChannelPanelActivity.java"


# instance fields
.field final mBundle:Landroid/os/Bundle;

.field mPanelFragment:Lcom/android/settings/notification/app/NotificationSettings;


# direct methods
.method public static synthetic $r8$lambda$difyOLhR3622_HlpJ1e_x_dqdjI(Lcom/android/settings/notification/app/ChannelPanelActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ChannelPanelActivity;->lambda$createOrUpdatePanel$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ur5xagfcgvrD-go-Y_gZwo4IFXw(Lcom/android/settings/notification/app/ChannelPanelActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/ChannelPanelActivity;->lambda$createOrUpdatePanel$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/ChannelPanelActivity;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method private createOrUpdatePanel()V
    .locals 5

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ChannelPanelActivity"

    const-string v1, "Null intent, closing Panel Activity"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 92
    sget v2, Lcom/android/settings/R$layout;->notification_channel_panel:I

    invoke-virtual {p0, v2}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    .line 96
    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 97
    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 100
    sget v2, Lcom/android/settings/R$id;->done:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/notification/app/ChannelPanelActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/app/ChannelPanelActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/ChannelPanelActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget v2, Lcom/android/settings/R$id;->see_more:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/notification/app/ChannelPanelActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/app/ChannelPanelActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/app/ChannelPanelActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "android.provider.extra.CONVERSATION_ID"

    .line 103
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Lcom/android/settings/notification/app/ConversationNotificationSettings;

    invoke-direct {v0}, Lcom/android/settings/notification/app/ConversationNotificationSettings;-><init>()V

    goto :goto_0

    .line 105
    :cond_1
    new-instance v0, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    invoke-direct {v0}, Lcom/android/settings/notification/app/ChannelNotificationSettings;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/settings/notification/app/ChannelPanelActivity;->mPanelFragment:Lcom/android/settings/notification/app/NotificationSettings;

    .line 106
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/settings/notification/app/ChannelPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x102003f

    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelPanelActivity;->mPanelFragment:Lcom/android/settings/notification/app/NotificationSettings;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private synthetic lambda$createOrUpdatePanel$0(Landroid/view/View;)V
    .locals 0

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createOrUpdatePanel$1(Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/android/settings/notification/app/ChannelPanelActivity;->launchFullSettings()V

    return-void
.end method

.method private launchFullSettings()V
    .locals 3

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.provider.extra.CHANNEL_FILTER_LIST"

    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 75
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    .line 76
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/16 v1, 0x109

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.provider.extra.CHANNEL_FILTER_LIST"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/notification/app/ChannelPanelActivity;->launchFullSettings()V

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 56
    invoke-direct {p0}, Lcom/android/settings/notification/app/ChannelPanelActivity;->createOrUpdatePanel()V

    .line 57
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/notification/app/ChannelPanelActivity;->createOrUpdatePanel()V

    return-void
.end method

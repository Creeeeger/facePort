.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiOnOffButtonUpdater"
.end annotation


# instance fields
.field private final RES_WIFI_OFF:I

.field private final RES_WIFI_ON:I

.field private final mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;


# direct methods
.method public static synthetic $r8$lambda$UkmYhNDyogiZ74Bfj0-NR0EsK5Y(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateGravityParam(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->updateGravityParam()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    sget p1, Lcom/android/settings/R$string;->wifi_suw_turn_on_wifi:I

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->RES_WIFI_ON:I

    .line 457
    sget p1, Lcom/android/settings/R$string;->wifi_suw_turn_off_wifi:I

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->RES_WIFI_OFF:I

    .line 460
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->mTextView:Landroid/widget/TextView;

    .line 461
    new-instance p1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 461
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->turnOnOrOffWifiState()V

    return-void
.end method

.method private setEnabled(Z)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 471
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private setText(I)V
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private turnOnOrOffWifiState()V
    .locals 2

    const/4 v0, 0x0

    .line 479
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 481
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    if-eqz v0, :cond_0

    const-string p0, "0"

    goto :goto_0

    :cond_0
    const-string p0, "1"

    :goto_0
    const-string v0, "WIFI_230"

    const-string v1, "0102"

    .line 482
    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateGravityParam()V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 503
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$misLandScape(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x800005

    .line 504
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const v1, 0x800003

    .line 506
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 508
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public initButtonState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 465
    iget p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->RES_WIFI_OFF:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->RES_WIFI_ON:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->setText(I)V

    return-void
.end method

.method public updateButton(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    .line 497
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->setEnabled(Z)V

    goto :goto_0

    .line 489
    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->RES_WIFI_OFF:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->setText(I)V

    .line 490
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->setEnabled(Z)V

    goto :goto_0

    .line 493
    :cond_1
    iget p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->RES_WIFI_ON:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->setText(I)V

    .line 494
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiOnOffButtonUpdater;->setEnabled(Z)V

    :goto_0
    return-void
.end method

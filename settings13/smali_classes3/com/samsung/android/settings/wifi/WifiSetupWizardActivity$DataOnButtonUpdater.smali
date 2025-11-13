.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataOnButtonUpdater"
.end annotation


# instance fields
.field private final mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;


# direct methods
.method public static synthetic $r8$lambda$LeJyjiixHBaW74sejlRqvFAjJuY(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->lambda$initButtonState$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateGravityParam(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->updateGravityParam()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method private synthetic lambda$initButtonState$0(Landroid/view/View;)V
    .locals 0

    .line 434
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->turnOnMobileDataState()V

    return-void
.end method

.method private turnOnMobileDataState()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioning_mobile_data"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 440
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateGravityParam()V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 445
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$misLandScape(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x800005

    .line 446
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const v1, 0x800003

    .line 448
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 450
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public initButtonState()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

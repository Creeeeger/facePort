.class public Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public device_jpn_model:Landroid/widget/ImageView;

.field public jpnAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field public nfcDialogImage:Lcom/airbnb/lottie/LottieAnimationView;

.field public nfcJpnAntennaAnimationHelper:Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7f1502b8

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Show NFC antenna position guide dialog from Tile"

    const-string v0, "NfcAntennaGuideDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x50

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v1, v2}, Landroid/view/Window;->setLayout(II)V

    const p1, 0x7f0d04be

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    new-instance v1, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->nfcJpnAntennaAnimationHelper:Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;

    const v1, 0x7f0a0834

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->nfcDialogImage:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0a04f7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->device_jpn_model:Landroid/widget/ImageView;

    const v1, 0x7f0a0628

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->jpnAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0a109b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f141983

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;->values()[Lcom/samsung/android/settings/nfc/NfcAntennaInfo;

    move-result-object v1

    const-string/jumbo v2, "ro.vendor.nfc.info.antpos"

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Antenna Position : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->nfcJpnAntennaAnimationHelper:Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->isJpnModel()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->jpnAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->nfcDialogImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->device_jpn_model:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->jpnAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog$2;-><init>(Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->jpnAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->device_jpn_model:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->nfcDialogImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->nfcDialogImage:Lcom/airbnb/lottie/LottieAnimationView;

    iget v0, v1, Lcom/samsung/android/settings/nfc/NfcAntennaInfo;->animationJSONValue:I

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->nfcDialogImage:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    :goto_0
    const p1, 0x7f0a027b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f141980

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog$1;-><init>(Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

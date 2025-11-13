.class public final Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog$2;->this$0:Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog$2;->this$0:Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->nfcJpnAntennaAnimationHelper:Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->device_jpn_model:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->jpnAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->setFelicaAnimation(Landroid/widget/ImageView;Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

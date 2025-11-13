.class public final Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;

.field public final synthetic val$deviceImg:Landroid/widget/ImageView;

.field public final synthetic val$jpnAnimation:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;Landroid/widget/ImageView;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper$1;->this$0:Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper$1;->val$deviceImg:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper$1;->val$jpnAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper$1;->val$deviceImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper$1;->val$deviceImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper$1;->this$0:Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;

    iget v3, v2, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->deviceImgWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget v3, v2, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->felicaAntennaX:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    int-to-float v1, v1

    iget v3, v2, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->deviceImgHeight:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, v2, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->felicaAntennaY:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper$1;->val$jpnAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    iget v2, v2, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->jpnAnimationDimension:F

    sub-float/2addr v0, v2

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper$1;->val$jpnAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper$1;->this$0:Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;

    iget v2, v2, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->jpnAnimationDimension:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper$1;->val$jpnAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f13001f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper$1;->val$jpnAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    return-void
.end method

.class public final Lcom/samsung/android/settings/nfc/NfcAntennaAnimation$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation$1;->this$0:Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation$1;->this$0:Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->nfcJpnAntennaAnimationHelper:Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->device_jpn_model_vert:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->jpnVertAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->setFelicaAnimation(Landroid/widget/ImageView;Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation$1;->this$0:Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->nfcJpnAntennaAnimationHelper:Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->device_jpn_model_land:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->jpnLandAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;->setFelicaAnimation(Landroid/widget/ImageView;Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

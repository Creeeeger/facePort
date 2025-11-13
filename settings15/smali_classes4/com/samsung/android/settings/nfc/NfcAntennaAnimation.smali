.class public final Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public animation:Lcom/airbnb/lottie/LottieAnimationView;

.field public device_jpn_model_land:Landroid/widget/ImageView;

.field public device_jpn_model_vert:Landroid/widget/ImageView;

.field public iv:Lcom/airbnb/lottie/LottieAnimationView;

.field public jpnLandAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field public jpnVertAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field public final mContext:Landroid/content/Context;

.field public mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

.field public final nfcJpnAntennaAnimationHelper:Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;

.field public tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->iv:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->tv:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaAnimation;->nfcJpnAntennaAnimationHelper:Lcom/samsung/android/settings/nfc/NfcJpnAntennaAnimationHelper;

    return-void
.end method

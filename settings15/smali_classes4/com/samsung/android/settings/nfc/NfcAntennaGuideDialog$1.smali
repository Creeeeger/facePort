.class public final Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog$1;->this$0:Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog$1;->this$0:Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;->jpnAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog$1;->this$0:Lcom/samsung/android/settings/nfc/NfcAntennaGuideDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

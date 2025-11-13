.class public final synthetic Lcom/samsung/android/settings/nearbyscan/NearbyScanning$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/nearbyscan/NearbyScanning;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->isRemoveAnimationEnabled$2()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyHelpImg:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_0
    return-void
.end method

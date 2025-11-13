.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

.field public final synthetic f$1:Lcom/airbnb/lottie/LottieTask;

.field public final synthetic f$2:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;->f$1:Lcom/airbnb/lottie/LottieTask;

    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;->f$2:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda3;

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;->f$1:Lcom/airbnb/lottie/LottieTask;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda1;->f$2:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v2, v0, v3, p0, p1}, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

.field public final synthetic f$1:Lcom/airbnb/lottie/LottieTask;

.field public final synthetic f$2:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic f$3:Lcom/airbnb/lottie/LottieComposition;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;Lcom/airbnb/lottie/LottieTask;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda3;->f$1:Lcom/airbnb/lottie/LottieTask;

    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda3;->f$2:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p4, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda3;->f$3:Lcom/airbnb/lottie/LottieComposition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda3;->f$1:Lcom/airbnb/lottie/LottieTask;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda3;->f$2:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup$$ExternalSyntheticLambda3;->f$3:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-class v0, Lcom/airbnb/lottie/LottieTask;

    const-string v3, "handler"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {v2, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

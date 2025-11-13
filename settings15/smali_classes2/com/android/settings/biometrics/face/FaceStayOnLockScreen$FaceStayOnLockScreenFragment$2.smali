.class Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "FaceStayOnLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->createStayOnLockScreenView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 2

    const v0, 0x8000

    if-ne p2, v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment$2;->this$0:Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->access$300(Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;->access$200(Lcom/samsung/android/settings/biometrics/face/FaceStayOnLockScreen$FaceStayOnLockScreenFragment;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.class public final Lcom/android/keyguard/StrongAuthPopup$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/StrongAuthPopup;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/StrongAuthPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/StrongAuthPopup$3;->this$0:Lcom/android/keyguard/StrongAuthPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/StrongAuthPopup$3;->this$0:Lcom/android/keyguard/StrongAuthPopup;

    iget v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mCurrentOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/keyguard/StrongAuthPopup;->mCurrentOrientation:I

    iget-object p1, p0, Lcom/android/keyguard/StrongAuthPopup;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/StrongAuthPopup;->mRunnable:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

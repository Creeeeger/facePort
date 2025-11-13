.class public final Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgress:F

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgress:F

    return-void
.end method

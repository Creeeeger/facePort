.class Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AbsProgressbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mProgress:F

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/AbsProgressbar;->mProgress:F

    return-void
.end method

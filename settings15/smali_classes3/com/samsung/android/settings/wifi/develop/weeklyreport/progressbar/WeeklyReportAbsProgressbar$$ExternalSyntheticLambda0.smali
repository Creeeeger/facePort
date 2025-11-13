.class public final synthetic Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportAbsProgressbar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportAbsProgressbar$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportAbsProgressbar$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;

    sget v0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/weeklyreport/progressbar/WeeklyReportProgressbar;->mProgress:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

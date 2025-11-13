.class public Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/GoalProgressbar;
.super Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/SingleProgressbar;
.source "GoalProgressbar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/SingleProgressbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onProgress()I
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/SingleProgressbar;->getPercentage()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgress:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    return p0
.end method

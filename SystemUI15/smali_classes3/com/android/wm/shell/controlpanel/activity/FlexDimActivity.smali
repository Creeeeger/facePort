.class public Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mIsScreenOffMode:Z

.field public final mScreenOffRunnable:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->mIsScreenOffMode:Z

    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->mScreenOffRunnable:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finish: Caller="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    const-string v2, "FlexDimActivity"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    const p1, 0x7f0d00fe

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {p0, v0, v0, v0}, Landroid/app/Activity;->overrideActivityTransition(III)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v1

    const-string/jumbo v2, "screen_off_timeout"

    const/16 v3, 0x7530

    invoke-static {p1, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    add-int/lit16 p1, p1, -0x1388

    if-lez p1, :cond_0

    move v0, p1

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->mScreenOffRunnable:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity$$ExternalSyntheticLambda0;

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const p1, 0x7f0a045a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->sFlexDimActivity:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->mIsScreenOffMode:Z

    const/4 v0, 0x0

    if-nez p1, :cond_3

    sget-object p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string v1, " y="

    const-string v2, " x="

    const-string v3, "FlexDimActivity"

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v4, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Touch Up mIsScreenOffMode="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->mIsScreenOffMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->finish()V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "Touch Down mIsScreenOffMode="

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->mIsScreenOffMode:Z

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0a045a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity;->mScreenOffRunnable:Lcom/android/wm/shell/controlpanel/activity/FlexDimActivity$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput-boolean v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDimTouched:Z

    :goto_0
    sget-object p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v4

    :cond_3
    :goto_1
    return v0
.end method

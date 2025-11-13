.class public final Lcom/android/systemui/navigationbar/NavigationBar$13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public mDeadZoneConsuming:Z

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$13;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar$13;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    iget v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mImeVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0x130

    invoke-static {v2, v0, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(III)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar$13;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBar$13;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar$13;->mDeadZoneConsuming:Z

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar$13;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object v3, v2, Lcom/android/systemui/navigationbar/NavigationBar;->mDeadZone:Lcom/android/systemui/navigationbar/buttons/DeadZone;

    invoke-virtual {v3, p1}, Lcom/android/systemui/navigationbar/buttons/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$13;->mDeadZoneConsuming:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/android/systemui/navigationbar/NavigationBar;->access$2200(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBar$13;->mDeadZoneConsuming:Z

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lcom/android/systemui/navigationbar/NavigationBar;->access$2100(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->setSlippery(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$13;->mDeadZoneConsuming:Z

    :goto_1
    return p1
.end method

.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public mInitX:F

.field public mInitY:F

.field public mIsClicked:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mIsClicked:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mInitX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    iget v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_3

    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mInitY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    iget v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    :cond_3
    const-string p1, "S.S.N."

    const-string v2, "OUT OF TOUCH SLOP "

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mInitY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    iget v2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_4

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dimissTopPopupNotification()V

    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mIsClicked:Z

    goto :goto_0

    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mIsClicked:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v0}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->performClick()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mIsClicked:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mInitY:F

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mInitX:F

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mInitX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mInitY:F

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;->mIsClicked:Z

    :cond_7
    :goto_0
    return v0
.end method

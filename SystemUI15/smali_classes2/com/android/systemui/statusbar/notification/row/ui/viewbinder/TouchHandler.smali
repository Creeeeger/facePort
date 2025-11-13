.class public final Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/TouchHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public isTouchEnabled:Z

.field public final view:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/TouchHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/TouchHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/TouchHandler;->view:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/TouchHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/TouchHandler;->view:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->mLastActionUpTime:J

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/TouchHandler;->isTouchEnabled:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/TouchHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "ActivatableNotificationViewBinder"

    :cond_2
    const-string p2, "capturing false tap"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return p0

    :cond_4
    return v2
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

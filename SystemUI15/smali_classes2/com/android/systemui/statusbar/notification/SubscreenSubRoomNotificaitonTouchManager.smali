.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final effect:Landroid/os/VibrationEffect;

.field public mContext:Landroid/content/Context;

.field public mItemTouchDownX:F

.field public final mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public mItemViewSwipeEnabled:Z

.field public mLayoutDirection:I

.field public final mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

.field public final mOnItemTouchListener:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;

.field public final mSimpleItemTouchCallBack:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;

.field public final mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

.field public mSwipeEscapeVelocity:F

.field public mSwipeThreshold:F

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;Landroid/os/Vibrator;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeThreshold:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeEscapeVelocity:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSimpleItemTouchCallBack:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mOnItemTouchListener:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mVibrator:Landroid/os/Vibrator;

    const/16 p1, 0x29

    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p1

    const/4 p2, -0x1

    sget-object p3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {p1, p2, p3}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->effect:Landroid/os/VibrationEffect;

    const-class p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p2, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSubscreenNotificationController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    return-void
.end method

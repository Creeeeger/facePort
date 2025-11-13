.class public abstract Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

.field public final mLayout:Landroid/widget/FrameLayout;

.field public mMarqueeText:Landroid/widget/TextView;

.field public final mOnTouchListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;

.field public final mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mOnTouchListener:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$1;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setFullPopupWindowKeyEventListener(Landroid/widget/FrameLayout;)V

    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mTouchSlop:I

    const p0, 0x7f0609bb

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    return-void
.end method


# virtual methods
.method public abstract makeView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
.end method

.method public abstract performClick()V
.end method

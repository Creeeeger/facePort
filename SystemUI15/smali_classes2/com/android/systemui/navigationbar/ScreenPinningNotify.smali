.class public final Lcom/android/systemui/navigationbar/ScreenPinningNotify;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastShowToastTime:J

.field public mLastToast:Landroid/widget/Toast;

.field public mTouchExplorationEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final showEscapeToast(ZZ)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastShowToastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-string p0, "ScreenPinningNotify"

    const-string p1, "Ignore toast since it is requested in very short interval."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mTouchExplorationEnabled:Z

    sget-boolean v2, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FLIP:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v2, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v2, v2, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v2, :cond_3

    move v4, v3

    :cond_3
    if-eqz p1, :cond_5

    if-eqz v4, :cond_4

    const p1, 0x7f1310ea

    goto :goto_1

    :cond_4
    const p1, 0x7f1310e9

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_8

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mTouchExplorationEnabled:Z

    if-eqz p1, :cond_6

    const p1, 0x7f1310e8

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    const p1, 0x7f1310eb

    goto :goto_1

    :cond_7
    const p1, 0x7f1310e7

    goto :goto_1

    :cond_8
    const p1, 0x7f130fd0

    :goto_1
    iget-object p2, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v3}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    iput-wide v0, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastShowToastTime:J

    return-void
.end method

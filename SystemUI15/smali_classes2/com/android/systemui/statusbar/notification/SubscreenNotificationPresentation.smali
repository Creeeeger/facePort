.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;
.super Landroid/app/Dialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final contents:Landroid/view/ViewGroup;

.field public final mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

.field public final mPresentationWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;)V
    .locals 3

    const p2, 0x7f14035d

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "SubScreenNotification"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getLayoutInDisplayCutoutMode()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->useTopPresentation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->useTopPresentation()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p4

    const/4 v0, -0x2

    iput v0, p4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p4

    const/16 v0, 0x30

    iput v0, p4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance p4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p4, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p4, 0x20

    invoke-virtual {p2, p4, p4}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    new-instance p2, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 p3, 0x1

    const-string p4, "SystemUI:SubscreenNotification"

    invoke-virtual {p1, p3, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const/4 p3, 0x0

    const-wide/32 v0, 0x493e0

    invoke-static {p1, p3, v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;Lcom/android/systemui/util/wakelock/WakeLockLogger;J)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p1

    const-string p3, "S.S.N.:Partial"

    invoke-direct {p2, p1, p3}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mPresentationWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    return-void
.end method

.method public static final synthetic access$dismiss$s2046749032(Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static final synthetic access$show$s2046749032(Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 8

    const-string v0, "S.S.N."

    const-string v1, " PRESENTATION dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->useTopPresentation()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    move-result-object v2

    const-string v1, " PRESENTATION remove tsp rect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-string v7, "cover_detailed_popup"

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIIILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->unregisterAODTspReceiver()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getTopPresentationDismissAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$dismiss$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$dismiss$$inlined$doOnEnd$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v1, " PRESENTATION ON - "

    const-string v2, "S.S.N."

    invoke-static {v1, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getFullPopupWindowType()I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setType(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v1, 0x500

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_CLEAR_COVER:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ne p1, v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    :cond_7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mPresentationWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    if-eqz p0, :cond_9

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_9
    return-void
.end method

.method public final onStop()V
    .locals 5

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, " PRESENTATION OFF Parent- "

    const-string v4, "S.S.N."

    invoke-static {v3, v1, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateWakeLock(ZZ)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_1
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationShowing:Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mCallFullPopupBacgroundView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->clearAnimation()V

    :cond_2
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mCallFullPopupBacgroundView:Landroid/widget/FrameLayout;

    iput v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFullscreenFullPopupWindowClosing:Z

    const-string v2, " RELEASE DOZE STATE - onStop"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    const/16 v3, 0x40

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->requestDozeState(IZ)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->drawWalkLockReleaseRunnable:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$drawWalkLockReleaseRunnable$1;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mPresentationWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    :cond_3
    return-void
.end method

.method public final show()V
    .locals 13

    const-string v0, "S.S.N."

    const-string v1, " PRESENTATION show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->useTopPresentation()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFlexMode:Z

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    filled-new-array {v1, v4, v2, v3}, [I

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    move-result-object v4

    aget v3, v1, v2

    const/4 v5, 0x1

    aget v6, v1, v5

    const/4 v7, 0x2

    aget v8, v1, v7

    const/4 v9, 0x3

    aget v10, v1, v9

    const-string v11, " PRESENTATION updateAODTspRect("

    const-string v12, ", "

    invoke-static {v3, v6, v11, v12, v12}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v0, v1, v2

    aget v6, v1, v5

    aget v7, v1, v7

    aget v8, v1, v9

    const-string v9, "cover_detailed_popup"

    move v5, v0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/aod/AODManager;->updateAODTspRect(IIIILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->registerAODTspReceiver()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;->contents:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getPopUpViewShowAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    :goto_1
    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$show$$inlined$doOnStart$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation$show$$inlined$doOnStart$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_3
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    :cond_4
    :goto_2
    return-void
.end method

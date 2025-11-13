.class public final Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;
.super Landroid/app/Dialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

.field public mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

.field public mDialogMain:Landroid/widget/RelativeLayout;

.field public mDozeDraw:Z

.field public final mEdgeAnimationListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

.field public final mHandler:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

.field public mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

.field public mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

.field public mTransparent:Z

.field public mUsingBlackBG:Z

.field public mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

.field public final mWindowType:I


# direct methods
.method public static -$$Nest$mdismissInternal(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "EdgeLightingDialog"

    const-string v2, "dismissInternal "

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mApplicationEffect:Lcom/android/systemui/edgelighting/effect/container/ApplicationEffect;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Ljava/lang/System;->gc()V

    :goto_0
    return-void
.end method

.method public static -$$Nest$mselfDismissWindow(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onDismissEdgeWindow()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    if-eqz v2, :cond_1

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mHandler:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mHandler:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mTransparent:Z

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDozeDraw:Z

    const/16 p1, 0x8b4

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowType:I

    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;-><init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mHandler:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;-><init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mTransparent:Z

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDozeDraw:Z

    const/16 p1, 0x8b4

    iput p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowType:I

    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;-><init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mHandler:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    new-instance p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;-><init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    iput p2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowType:I

    return-void
.end method


# virtual methods
.method public final makeEffectType(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;
    .locals 5

    iget v0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;->mLightEffectView:Lcom/android/systemui/edgelighting/effect/view/EdgeLightNotiEffectView;

    iput-boolean v1, v2, Lcom/android/systemui/edgelighting/effect/view/DrawEdgeLayout;->mIsNoFrame:Z

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationSpotlightEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEchoEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEclipseEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationFireworksEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationHeartEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationReflectEffect;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effect/container/NotificationNormalEffect;-><init>(Landroid/content/Context;)V

    :goto_0
    iget-object v1, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPlusEffectBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    iget v2, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mEffectType:I

    const/16 v3, 0x64

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    const-string p0, "isUsedAppIcon"

    invoke-virtual {v1, p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mIsUsedAppIconForEdgeLightingPlus:Z

    :cond_2
    const-string p0, "isHideBriefPopup"

    invoke-virtual {v1, p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsHideBriefPopupForEdgeLightingPlus:Z

    const-string p0, "isDisableSingleTap"

    invoke-virtual {v1, p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSingleTapDisabledForEdgeLightingPlus:Z

    const-string p0, "isDisableSwipeDown"

    invoke-virtual {v1, p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsSwipeDownDisabledForEdgeLightingPlus:Z

    :cond_3
    iget-boolean p0, p1, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mIsMultiResolutionSupoorted:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setIsMultiResolutionSupoorted(Z)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EdgeLightingDialog"

    const-string v1, " onAttached Window clear FLAG NOT TOUCHABLE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00f7

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowType:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x1000500

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0x10000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/high16 v1, 0x20000

    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const/4 v1, 0x3

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string v1, "EdgeLightingWindow"

    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0380

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    sget p1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x186a0

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$2;-><init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public final registerEdgeWindowCallback(Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;-><init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "aod_show_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mAODShowState:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->updateBackground(Landroid/view/Window;)V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->onShowEdgeWindow()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mHandler:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final showPreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->show()V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    const v1, 0x7f0a0380

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->makeEffectType(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;Z)Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDialogMain:Landroid/widget/RelativeLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mEdgeAnimationListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    iput-object v2, v1, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {v1, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iput-boolean v0, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mIsShowMorphView:Z

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->show()V

    return-void
.end method

.method public final stopEdgeEffect()V
    .locals 3

    const-string/jumbo v0, "stopEdgeEffect"

    const-string v1, "EdgeLightingDialog"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.systemui.edgelighting.stop"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo p0, "send broadcast : com.android.systemui.edgelighting.stop"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final stopPreview()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->dismiss()V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$3;-><init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final unRegisterEdgeWindowCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    return-void
.end method

.method public final updateBackground(Landroid/view/Window;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    const/4 v1, 0x0

    const/4 v2, -0x3

    const-string v3, "EdgeLightingDialog"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateBackground : OPAQUE(usingBlack)"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroid/view/Window;->setFormat(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mTransparent:Z

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "updateBackground : TRANSPARENT"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroid/view/Window;->setFormat(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mTransparent:Z

    :goto_0
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mUsingBlackBG:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mDozeDraw:Z

    const/high16 v0, 0x40000

    if-eqz p0, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    :goto_2
    const/16 p0, 0x10

    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    return-void
.end method

.method public final updatePreview(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->setEdgeEffectInfo(Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mLightingPreview:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->update()V

    :cond_0
    return-void
.end method

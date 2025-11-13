.class public final Lcom/android/systemui/mdm/MdmOverlayContainer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

.field public mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

.field public mPreviousState:I

.field public mStatusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final mStatusBarStateControllerLazy:Ldagger/Lazy;

.field public mView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mStatusBarStateControllerLazy:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final updateMdmPolicy()V
    .locals 6

    const-string v0, "MdmOverlayContainer"

    iget-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v2, v3, :cond_5

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v3, :cond_5

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    if-nez v1, :cond_5

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v1, :cond_5

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    invoke-virtual {v1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->isConfigured()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    iget-object v3, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    iget-object v3, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_1
    const-string v1, "mMdmOverlayView is not null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    :cond_2
    const-string p0, "mMDMOverlayContainer is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v1, "Lockscren Overlay creation fails: "

    invoke-static {v1, p0, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    :goto_3
    return-void
.end method

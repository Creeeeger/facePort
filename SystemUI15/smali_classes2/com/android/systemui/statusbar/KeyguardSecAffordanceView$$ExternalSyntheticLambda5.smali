.class public final synthetic Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    aget v1, v3, v1

    iput v1, v2, Landroid/graphics/Rect;->left:I

    aget v4, v3, v0

    iput v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iput v4, v2, Landroid/graphics/Rect;->right:I

    aget v0, v3, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->sendBlockingTouchAreaToWallpaper(Landroid/graphics/Rect;)V

    return-void

    :pswitch_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcut:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskTypeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsTaskTypeShortcutEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsNowBarExpanded:Z

    if-nez v0, :cond_2

    const-class v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateBgBlur(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setBackgroundCircleColor()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setForegroundCircleColor()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

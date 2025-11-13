.class public final synthetic Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardStatusViewController;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardStatusViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardStatusViewController;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardStatusViewController;->mSplitShadeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardClockSwitchController;->getView()Lcom/android/keyguard/KeyguardClockSwitch;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/keyguard/KeyguardClockSwitch;->mSplitShadeCentered:Z

    if-nez v2, :cond_7

    iget-object v1, v1, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sub-int v1, p9, p7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    sget-object v2, Lcom/android/app/animation/Interpolators;->STANDARD:Landroid/view/animation/Interpolator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x10

    const/4 v4, 0x0

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_3

    sget-object v2, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :cond_3
    const-wide/16 v5, 0x1f4

    and-int/lit8 v7, v3, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_4

    move v9, v8

    :cond_4
    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    sget-object v4, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-static {v1, v3, v7, v10, v11}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->occupiesSpace(IIIII)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    new-instance v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object p0, v1

    move-object p1, v3

    move p2, v10

    move-object p3, v2

    move-wide/from16 p4, v5

    move/from16 p6, v7

    move-object/from16 p7, v11

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;ZLandroid/view/animation/Interpolator;JZLjava/lang/Runnable;)V

    invoke-static {v0, v1, v8, v9, v4}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;ZZLjava/util/Set;)V

    :cond_7
    :goto_0
    return-void
.end method

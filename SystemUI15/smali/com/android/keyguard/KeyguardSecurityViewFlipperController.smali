.class public final Lcom/android/keyguard/KeyguardSecurityViewFlipperController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mChildren:Ljava/util/List;

.field public final mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

.field public final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper;Landroid/view/LayoutInflater;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final asynchronouslyInflateView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getLayoutIdFor securityMode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecurityView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$1;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const v2, 0x7f0d0183

    const v3, 0x7f0d0184

    const v4, 0x7f0d0181

    const v5, 0x7f0d0182

    const v6, 0x7f0d0185

    const v7, 0x7f0d0186

    packed-switch v0, :pswitch_data_0

    :goto_0
    move v6, v1

    goto/16 :goto_5

    :pswitch_0
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v8, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getPrevCredentialType()I

    move-result v0

    const/4 v8, 0x1

    if-eq v0, v8, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_1
    move v6, v7

    goto/16 :goto_5

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    move v4, v5

    :cond_2
    move v6, v4

    goto/16 :goto_5

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    move v2, v3

    :cond_4
    move v6, v2

    goto/16 :goto_5

    :pswitch_1
    const v6, 0x7f0d0199

    goto/16 :goto_5

    :pswitch_2
    const v6, 0x7f0d014a

    goto/16 :goto_5

    :pswitch_3
    const v6, 0x7f0d014c

    goto/16 :goto_5

    :pswitch_4
    const v6, 0x7f0d0161

    goto :goto_5

    :pswitch_5
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0d0158

    :goto_4
    move v6, v0

    goto :goto_5

    :cond_5
    const v0, 0x7f0d0157

    goto :goto_4

    :pswitch_6
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v0, :cond_6

    const v6, 0x7f0d0198

    goto :goto_5

    :cond_6
    :pswitch_7
    const v6, 0x7f0d0140

    goto :goto_5

    :pswitch_8
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERSO_LOCK:Z

    if-eqz v0, :cond_7

    const v6, 0x7f0d0189

    goto :goto_5

    :cond_7
    :pswitch_9
    const v6, 0x7f0d0169

    goto :goto_5

    :pswitch_a
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f0d018d

    goto :goto_4

    :cond_8
    const v0, 0x7f0d018c

    goto :goto_4

    :pswitch_b
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f0d018b

    goto :goto_4

    :cond_9
    const v0, 0x7f0d018a

    goto :goto_4

    :pswitch_c
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :pswitch_d
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    :pswitch_e
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_a
    :goto_5
    if-eqz v6, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardInputView;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/keyguard/KeyguardInputViewController$Factory;->create(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_b

    invoke-interface {p3, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;->onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final clearViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardInputViewController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, p1, :cond_0

    invoke-interface {p3, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;->onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->asynchronouslyInflateView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 0

    return-void
.end method

.method public final onViewDetached()V
    .locals 0

    return-void
.end method

.method public final reset$1()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->mChildren:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardInputViewController;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardInputViewController;->getIndexIn(Lcom/android/keyguard/KeyguardSecurityViewFlipper;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardInputViewController;->reset$1()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final show(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardInputViewController;->getIndexIn(Lcom/android/keyguard/KeyguardSecurityViewFlipper;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    :cond_0
    return-void
.end method

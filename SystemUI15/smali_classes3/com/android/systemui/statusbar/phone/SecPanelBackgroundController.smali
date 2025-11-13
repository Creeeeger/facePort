.class public final Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# instance fields
.field public mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

.field public mMaxAlpha:F

.field public mStatusBarState:I

.field public final mView:Lcom/android/systemui/statusbar/phone/SecPanelBackground;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecPanelBackground;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mView:Lcom/android/systemui/statusbar/phone/SecPanelBackground;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updatePanel()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updateBackgroundColor()V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    sget-object p1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    const-string v0, "SecPanelBackground"

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    return-void
.end method


# virtual methods
.method public final gatherState()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mView:Lcom/android/systemui/statusbar/phone/SecPanelBackground;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/SecPanelBackground;->mContext:Landroid/content/Context;

    const v3, 0x7f060541

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    const-string v3, "SecPanelBackgroundController ============================================= "

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  mMaxAlpha = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "  currentAlpha = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "  visibility = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "  DIM color = 0x"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", BOX color = 0x"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/SecPanelBackground;->mContext:Landroid/content/Context;

    const v2, 0x7f0605d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "============================================================== "

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final onViewAttached()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updateBackgroundVisibility()V

    return-void
.end method

.method public final onViewDetached()V
    .locals 0

    return-void
.end method

.method public final updateBackgroundColor()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mView:Lcom/android/systemui/statusbar/phone/SecPanelBackground;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackground;->mContext:Landroid/content/Context;

    const v1, 0x7f060541

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v0, v0, 0xff

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "DIM color = "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-static {p0, v1, v3, v2, v3}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "SecPanelBackground"

    invoke-static {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final updateBackgroundVisibility()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    const-string v1, "SecPanelBackground"

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateBackgroundVisibility: mBlurUtils is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/android/systemui/blur/SecQpBlurController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-nez v2, :cond_2

    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    invoke-static {v0}, Lcom/android/systemui/blur/SecQpBlurController;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/blur/SecQpBlurController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    invoke-static {v0}, Lcom/android/systemui/blur/SecQpBlurController;->-$$Nest$mhasCustomColorForBackground(Lcom/android/systemui/blur/SecQpBlurController;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_3
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    if-nez v2, :cond_5

    invoke-static {v0}, Lcom/android/systemui/blur/SecQpBlurController;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/blur/SecQpBlurController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    invoke-static {v0}, Lcom/android/systemui/blur/SecQpBlurController;->-$$Nest$mhasCustomColorForBackground(Lcom/android/systemui/blur/SecQpBlurController;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v4, v3

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    const/16 v3, 0x8

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mView:Lcom/android/systemui/statusbar/phone/SecPanelBackground;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_7

    const-string p0, "VISIBLE"

    goto :goto_3

    :cond_7
    const-string p0, "GONE"

    :goto_3
    const-string v0, "DIM visibility = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updatePanel()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updateBackgroundVisibility()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    iget-boolean v1, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    if-eqz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/android/systemui/blur/SecQpBlurController;->-$$Nest$mhasCustomColorForBackground(Lcom/android/systemui/blur/SecQpBlurController;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mView:Lcom/android/systemui/statusbar/phone/SecPanelBackground;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SecPanelBackground;->mContext:Landroid/content/Context;

    const v1, 0x7f060541

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    goto :goto_0

    :cond_2
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DIM mMaxAlpha = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    const-string v2, "SecPanelBackground"

    invoke-static {v0, v1, v2}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updateBackgroundColor()V

    return-void
.end method

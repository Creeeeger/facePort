.class public final synthetic Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsFoldOpened:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_4

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/KeyguardFoldController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isBouncerOnFoldOpened()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsFoldOpened:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->getWhiteWallpaperState$1(Ljava/lang/Boolean;)Z

    move-result p1

    if-eqz p1, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    :goto_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_COLOR_CURVE_BLUR:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mResources:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    const v2, 0x7f060609

    goto :goto_1

    :cond_2
    const v2, 0x7f060608

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFolderStateChanged isWhiteWallpaper() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " bouncerScrimAlpha = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mScrimBouncerColor = #"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerAlpha:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerAlpha:F

    const-string v1, "ScrimController"

    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mBouncerColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mBouncerColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mBouncerColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/scrim/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    invoke-virtual {p1, v1}, Lcom/android/systemui/scrim/ScrimView;->setTint(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    :cond_4
    return-void
.end method

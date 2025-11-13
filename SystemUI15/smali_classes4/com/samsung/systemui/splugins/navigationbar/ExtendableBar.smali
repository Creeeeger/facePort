.class public interface abstract Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static synthetic updateBackPanelColor$default(Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;IIIIILjava/lang/Object;)V
    .locals 1

    if-nez p6, :cond_4

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    :cond_3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/systemui/splugins/navigationbar/ExtendableBar;->updateBackPanelColor(IIII)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateBackPanelColor"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract forceSetBackGesture(Z)V
.end method

.method public abstract getBarDisplayId()I
.end method

.method public abstract getBarLayoutParamsProvider()Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;
.end method

.method public abstract getButtonDispatcherProxy()Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;
.end method

.method public abstract getDefaultColorProvider()Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;
.end method

.method public abstract getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
.end method

.method public abstract getDefaultLayoutProviderContainer()Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;
.end method

.method public abstract getDisabledFlags()I
.end method

.method public abstract getFeatureChecker()Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;
.end method

.method public abstract getNavBarStoreAdapter()Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;
.end method

.method public abstract getNavigationBarContext()Landroid/content/Context;
.end method

.method public abstract getTaskStackAdapter()Lcom/samsung/systemui/splugins/navigationbar/TaskStackAdapterBase;
.end method

.method public isCoverDisplayNavBarEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCoverLargeScreenTaskEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isKeyguardShowing()Z
.end method

.method public isTaskbarEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyForceImmersiveStateChanged()V
    .locals 0

    return-void
.end method

.method public abstract registerKeyguardStateCallback()V
.end method

.method public abstract resetScheduleAutoHide()V
.end method

.method public abstract setBarLayoutParamsProvider(Lcom/samsung/systemui/splugins/navigationbar/BarLayoutParams;)V
.end method

.method public abstract setColorProvider(Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;Z)V
.end method

.method public abstract setDefaultBarLayoutParamsProvider()V
.end method

.method public abstract setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
.end method

.method public abstract setForceShowNavigationBarFlag(Landroid/content/Context;Z)V
.end method

.method public abstract setIconThemeAlpha(F)V
.end method

.method public abstract setLayoutProviderContainer(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;)V
.end method

.method public abstract setRotationLockAtAngle(ZI)V
.end method

.method public abstract setRotationLocked(Z)V
.end method

.method public abstract unregisterKeyguardStateCallback()V
.end method

.method public updateActiveIndicatorSpringParams(FF)V
    .locals 0

    return-void
.end method

.method public updateBackGestureIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public updateBackPanelColor(IIII)V
    .locals 0

    return-void
.end method

.method public updateIconsAndHints(Z)V
    .locals 0

    return-void
.end method

.method public abstract updateOpaqueColor(I)V
.end method

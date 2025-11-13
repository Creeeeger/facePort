.class public Lcom/android/systemui/statusbar/phone/ui/IconManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/demomode/DemoModeCommandReceiver;


# instance fields
.field public final excludeSlotsForPadding:Ljava/util/ArrayList;

.field public mAdditionalScaleFactor:F

.field public final mBindableIcons:Ljava/util/Map;

.field public final mBlockList:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

.field public mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field public final mDemoable:Z

.field public final mGroup:Landroid/view/ViewGroup;

.field public mIconSize:I

.field public mIsInDemoMode:Z

.field public final mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

.field public final mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

.field public final mMobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

.field public mRatio:F

.field public mShouldLog:Z

.field public final mWifiViewModel:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mBindableIcons:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mShouldLog:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mBlockList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->excludeSlotsForPadding:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mAdditionalScaleFactor:F

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    iget-object p4, p4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;->mobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mMobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

    invoke-static {p1, p4}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/binder/MobileIconsBinder;->bind(Landroid/view/View;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;)V

    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;->bindGroup(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mWifiViewModel:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;

    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;->bindGroup(Landroid/view/ViewGroup;)V

    const p0, 0x1040ed6

    invoke-virtual {p5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p0, 0x1040ed7

    invoke-virtual {p5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p0, 0x1040ec1

    invoke-virtual {p5, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getType()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 p3, 0x3

    if-eq v0, p3, :cond_4

    const/4 p3, 0x4

    if-eq v0, p3, :cond_3

    const/4 p2, 0x5

    if-eq v0, p2, :cond_1

    const/4 p0, 0x0

    goto/16 :goto_1

    :cond_1
    check-cast p4, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mBindableIcons:Ljava/util/Map;

    iget-object p3, p4, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;->slot:Ljava/lang/String;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    iget-object p3, p4, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;->initializer:Lcom/android/systemui/statusbar/pipeline/icons/shared/model/ModernStatusBarViewCreator;

    check-cast p3, Lcom/android/systemui/statusbar/pipeline/satellite/ui/DeviceBasedSatelliteBindableIcon$initializer$1;

    invoke-virtual {p3, p2}, Lcom/android/systemui/statusbar/pipeline/satellite/ui/DeviceBasedSatelliteBindableIcon$initializer$1;->createAndBind(Landroid/content/Context;)Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p3, p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIsInDemoMode:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addBindableIcon(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;)V

    :cond_2
    :goto_0
    move-object p0, p2

    goto/16 :goto_1

    :cond_3
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mWifiViewModel:Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;

    invoke-static {p3, p2, p4}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;->constructAndBind(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;)Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p3, p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIsInDemoMode:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addModernWifiView(Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;)V

    goto :goto_0

    :cond_4
    iget p3, p4, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->tag:I

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    invoke-virtual {v0, p3, p4}, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->getMobileContextForSub(ILandroid/content/Context;)Landroid/content/Context;

    move-result-object p4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mMobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

    iget-object v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->logger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    invoke-virtual {v1, p3, v3, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->viewModelForSub(ILcom/android/systemui/statusbar/phone/StatusBarLocation;Ljava/lang/String;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->configuration:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p4, v2, p2, v3, v4}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->constructAndBind(Landroid/content/Context;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Ljava/lang/String;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    move-result-object p2

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p4, p2, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIsInDemoMode:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p3, p1}, Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;->getMobileContextForSub(ILandroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "addModernMobileView (subId="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "DemoStatusIcons"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    const-string v2, "mobile"

    invoke-virtual {p4, p3, v0, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->viewModelForSub(ILcom/android/systemui/statusbar/phone/StatusBarLocation;Ljava/lang/String;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;

    move-result-object p3

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

    iget-object p4, p4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->configuration:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->logger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;

    invoke-static {p1, v0, v2, p3, p4}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->constructAndBind(Landroid/content/Context;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Ljava/lang/String;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernMobileViews:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    invoke-direct {p4, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p3, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_5
    iget-object p4, p4, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->icon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public addIcon(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2, p3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    iget p2, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mRatio:F

    sget-object p3, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->SUB_SCREEN_QUICK_PANEL:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    if-ne v1, p3, :cond_0

    iget p3, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mAdditionalScaleFactor:F

    mul-float/2addr p2, p3

    :cond_0
    iput p2, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mIconScaleFactor:F

    iget-object p2, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mSlot:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->excludeSlotsForPadding:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v2, Lcom/android/systemui/statusbar/phone/ui/IconManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/systemui/statusbar/phone/ui/IconManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0714af

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mRatio:F

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {v0, p3, p3, p2, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    sget-object p2, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->QS:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    if-ne v1, p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/StatusBarIconView;->mApplyShadowEffect:Z

    :cond_2
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p2, v0, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public exitDemoMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    return-void
.end method

.method public onCreateLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIconSize:I

    invoke-direct {v0, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final onDemoModeFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->onDemoModeFinished()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->exitDemoMode()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIsInDemoMode:Z

    :cond_0
    return-void
.end method

.method public onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->addHolder(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)Lcom/android/systemui/statusbar/StatusIconDisplayable;

    return-void
.end method

.method public onRemoveIcon(I)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIsInDemoMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    instance-of v1, v1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    if-eqz v1, :cond_3

    const-string v1, "DemoStatusIcons"

    const-string v2, "onRemoveIcon: removing modern wifi view"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernWifiView:Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernWifiView:Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    iget v5, v4, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->subId:I

    iget v6, v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;->subId:I

    if-ne v5, v6, :cond_1

    move-object v3, v4

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    return-void
.end method

.method public onSetIconHolder(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->icon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onSetIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    return-void
.end method

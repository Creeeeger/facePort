.class public final Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
.super Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/demomode/DemoMode;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field public mColor:I

.field public mContrastColor:I

.field public mDemoMode:Z

.field public final mIconSize:I

.field public final mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

.field public final mMobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

.field public final mModernMobileViews:Ljava/util/ArrayList;

.field public mModernWifiView:Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

.field public final mStatusIcons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;Lcom/android/systemui/statusbar/phone/StatusBarLocation;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernMobileViews:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    iput p4, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    const p4, -0x12000001

    iput p4, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    const/high16 p4, -0x1000000

    iput p4, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContrastColor:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mMobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    instance-of p2, p1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p4

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0, p2, p3, p4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final addBindableIcon(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;)V
    .locals 3

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;->initializer:Lcom/android/systemui/statusbar/pipeline/icons/shared/model/ModernStatusBarViewCreator;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/satellite/ui/DeviceBasedSatelliteBindableIcon$initializer$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/pipeline/satellite/ui/DeviceBasedSatelliteBindableIcon$initializer$1;->createAndBind(Landroid/content/Context;)Lcom/android/systemui/statusbar/pipeline/shared/ui/view/SingleBindableStatusBarIconView;

    move-result-object p1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final addModernWifiView(Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;)V
    .locals 4

    const-string v0, "DemoStatusIcons"

    const-string v1, "addModernDemoWifiView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;->constructAndBind(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/pipeline/wifi/ui/viewmodel/LocationBasedWifiViewModel;)Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernWifiView:Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContrastColor:I

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->setStaticDrawableColor(II)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final demoCommands()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo p2, "volume"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "vibrate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f081357

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(ILjava/lang/String;)V

    :cond_1
    const-string/jumbo p2, "zen"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "dnd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f081346

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(ILjava/lang/String;)V

    :cond_3
    const-string p2, "bluetooth"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "connected"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0812b1

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(ILjava/lang/String;)V

    :cond_5
    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "show"

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->LOCATION_STATUS_ICON_ID:I

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_3
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(ILjava/lang/String;)V

    :cond_7
    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const p2, 0x7f081299

    goto :goto_4

    :cond_8
    move p2, v1

    :goto_4
    const-string v0, "alarm_clock"

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(ILjava/lang/String;)V

    :cond_9
    const-string/jumbo p2, "tty"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f081397

    goto :goto_5

    :cond_a
    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(ILjava/lang/String;)V

    :cond_b
    const-string p2, "mute"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x1080076

    goto :goto_6

    :cond_c
    move v0, v1

    :goto_6
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(ILjava/lang/String;)V

    :cond_d
    const-string/jumbo p2, "speakerphone"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x1080087

    goto :goto_7

    :cond_e
    move v0, v1

    :goto_7
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(ILjava/lang/String;)V

    :cond_f
    const-string p2, "cast"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f0812a6

    goto :goto_8

    :cond_10
    move v0, v1

    :goto_8
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(ILjava/lang/String;)V

    :cond_11
    const-string p2, "hotspot"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const v1, 0x7f08134c

    :cond_12
    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(ILjava/lang/String;)V

    :cond_13
    return-void
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FI)V
    .locals 0

    return-void
.end method

.method public final onDarkChangedWithContrast(Ljava/util/ArrayList;II)V
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setColor(II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernWifiView:Lcom/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->onDarkChangedWithContrast(Ljava/util/ArrayList;II)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernMobileViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/pipeline/shared/ui/view/ModernStatusBarView;->onDarkChangedWithContrast(Ljava/util/ArrayList;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onDemoModeFinished()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mModernMobileViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final setColor(II)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContrastColor:I

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mContrastColor:I

    invoke-interface {p2, v0, v1}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setStaticDrawableColor(II)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-interface {p2, v0}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setDecorColor(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateSlot(ILjava/lang/String;)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v9, 0x1

    const/4 v4, -0x1

    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, v3, Lcom/android/systemui/statusbar/StatusBarIconView;->mIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iput-boolean v9, p0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    iget-object p2, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    invoke-virtual {v3, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable(Z)Z

    return-void

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v4

    :goto_2
    if-nez p1, :cond_6

    if-eq v1, v4, :cond_5

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    :cond_5
    return-void

    :cond_6
    new-instance v10, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    sget-object v8, Lcom/android/internal/statusbar/StatusBarIcon$Type;->SystemIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "Demo"

    move-object v1, v10

    move v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;Lcom/android/internal/statusbar/StatusBarIcon$Type;)V

    iput-boolean v9, v10, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    new-instance p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v1, p2, v2, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Z)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v10}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    iget p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setStaticDrawableColor(I)V

    iget p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mColor:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

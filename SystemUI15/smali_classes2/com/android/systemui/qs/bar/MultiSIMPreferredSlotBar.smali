.class public final Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

.field public mCurrentOrientation:I

.field public final mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

.field public mExpanded:Z

.field public final mIntentReceiver:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;

.field public mIsMultiSIMBarHideByKnoxRequest:Z

.field public mIsMultiSIMBarShowOnQSPanel:Z

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarShowOnQSPanel:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarHideByKnoxRequest:Z

    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mExpanded:Z

    new-instance v2, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;

    new-array v0, v0, [Landroid/net/Uri;

    const-string v3, "emergency_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v0, v1

    new-instance v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/multisim/MultiSIMController;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {v1}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    iput-object v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    :cond_0
    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-direct {v1}, Lcom/android/systemui/settings/multisim/MultiSIMData;-><init>()V

    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {v1, v3}, Lcom/android/systemui/settings/multisim/MultiSIMData;->copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->reverseSlotIfNeed(Lcom/android/systemui/settings/multisim/MultiSIMData;)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {p1, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->registerCallback(Lcom/android/systemui/settings/multisim/MultiSIMController$MultiSIMDataChangedCallback;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.knox.intent.action.KNOX_RESTRICTIONS_CHANGED_INTERNAL"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p2, p1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iget-object p2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string p2, "multi_sim_bar_show_on_qspanel"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public final getBarHeight()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070aa0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getBarLayout()I
    .locals 0

    const p0, 0x7f0d0306

    return p0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0306

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f0a0b92

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    const v3, 0x7f081075

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->addBarBackground(Landroid/view/View;Z)V

    :cond_0
    check-cast p1, Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateHeightMargins()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    return-void
.end method

.method public final makeCloneBar()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0306

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f0a0b92

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    const v2, 0x7f081075

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->addBarBackground(Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateLayout$2(Landroid/view/View;)V

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCurrentOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCurrentOrientation:I

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateHeightMargins()V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$4;->this$0:Lcom/android/systemui/qs/bar/BarController;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController;->mBarListener:Lcom/android/systemui/qs/bar/BarController$3;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarController$3;->this$0:Lcom/android/systemui/qs/bar/BarController;

    iget-object p1, p1, Lcom/android/systemui/qs/bar/BarController;->mQSLastExpansionInitializer:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarController$3;->val$animatorRunner:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public final onDataChanged(Lcom/android/systemui/settings/multisim/MultiSIMData;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    iget-boolean v2, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    if-eq v1, v3, :cond_1

    :cond_0
    iput-boolean v2, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    iget-boolean p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    iput-boolean p1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    :cond_1
    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "onTuningChanged() : key = "

    const-string v1, ", newValue = "

    const-string v2, "MultiSIMPreferredSlotBar"

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "multi_sim_bar_show_on_qspanel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :catch_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarShowOnQSPanel:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    :cond_2
    return-void
.end method

.method public final removeCloneTileBG()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v1, 0x7f0a0b92

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->removeFromBarBackground(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setExpanded(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mQsExpanded:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mExpanded:Z

    if-eq v0, p1, :cond_0

    const-string/jumbo v0, "setExpanded : "

    const-string v1, " mShowing : "

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    const-string v2, "MultiSIMPreferredSlotBar"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mExpanded:Z

    :cond_0
    const-string v0, "MultiSIMController"

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getService(Landroid/content/Context;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "registerSimCardManagerCallback SimCardManagerService "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object p1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sSimCardManagerServiceCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$14;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$14;

    if-nez p1, :cond_3

    new-instance p1, Lcom/android/systemui/settings/multisim/MultiSIMController$14;

    invoke-direct {p1, p0}, Lcom/android/systemui/settings/multisim/MultiSIMController$14;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$14;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    if-eqz p0, :cond_2

    :try_start_0
    sput-object p1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sSimCardManagerServiceCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$14;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    const-string p1, "Caught exception from registerSimCardManagerCallback"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_2
    const-string p0, "registerSimCardManagerCallback : mSimCardManagerService is null "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_3
    const-string p0, "registerSimCardManagerCallback : mSimCardCallback is not null "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$14;

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mIsRemainCallbackCall:Z

    if-nez p1, :cond_5

    sput-object v1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sSimCardManagerServiceCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$14;

    :cond_5
    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$14;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v2, "Caught exception from unRegisterSimCardManagerCallback"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    sget-object p1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sServiceBindHelper:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;

    if-eqz p1, :cond_9

    sget-boolean p1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mIsRemainCallbackCall:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    sget-object p1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isServiceRunningCheck(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0xea60

    goto :goto_1

    :cond_7
    move p1, v0

    :goto_1
    sget-object v2, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mHandler:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$1;

    if-eqz v2, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CloseService : mIsRemainCallbackCall = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mIsRemainCallbackCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", delayTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimCardManagerServiceProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sServiceBindHelper:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;

    iget v3, v3, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;->mServiceStatus:I

    if-nez v3, :cond_8

    const-string p1, "CloseService : already disconnected so initial value"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sSimCardManagerServiceCallback:Lcom/android/systemui/settings/multisim/MultiSIMController$14;

    sput-object v1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sServiceBindHelper:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider$ServiceBindHelper;

    sput-object v1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->sInstance:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    const/4 p1, 0x1

    sput-boolean p1, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mIsServiceClose:Z

    sput-boolean v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->mIsRemainCallbackCall:Z

    goto :goto_2

    :cond_8
    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v3, p1

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_9
    :goto_2
    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mSimCardManagerService:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;

    :goto_3
    return-void
.end method

.method public final showBar(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    new-instance v1, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIVisible:Z

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNotifyVisToCallbackRunnable:Lcom/android/systemui/settings/multisim/MultiSIMController$$ExternalSyntheticLambda6;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateBarVisibilities()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mController:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isMultiSimAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarHideByKnoxRequest:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarShowOnQSPanel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateBarVisibilities "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiSIMPreferredSlotBar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->showBar(Z)V

    return-void
.end method

.method public final updateHeightMargins()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateLayout$2(Landroid/view/View;)V

    return-void
.end method

.method public final updateLayout$2(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070aa0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

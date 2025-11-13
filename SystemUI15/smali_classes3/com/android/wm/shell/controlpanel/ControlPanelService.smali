.class public Lcom/android/wm/shell/controlpanel/ControlPanelService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBinder:Lcom/android/wm/shell/controlpanel/ControlPanelService$ControlPanelServiceBinder;

.field public mFloatingIcon:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

.field public mFloatingIconTipPopup:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

.field public mIsNightMode:Z

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public mType:I


# direct methods
.method public static -$$Nest$minitSharedPreferences(Lcom/android/wm/shell/controlpanel/ControlPanelService;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "floating_icon_position_x"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayY(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getDisplayX(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v2, "floating_icon_position_y"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "floating_icon_tooltip_init"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mType:I

    new-instance v0, Lcom/android/wm/shell/controlpanel/ControlPanelService$ControlPanelServiceBinder;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/ControlPanelService$ControlPanelServiceBinder;-><init>(Lcom/android/wm/shell/controlpanel/ControlPanelService;)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mBinder:Lcom/android/wm/shell/controlpanel/ControlPanelService$ControlPanelServiceBinder;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mBinder:Lcom/android/wm/shell/controlpanel/ControlPanelService$ControlPanelServiceBinder;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mFloatingIcon:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mFloatingIcon:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    if-eqz p1, :cond_6

    iget v1, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mType:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_6

    :cond_2
    iget-boolean v1, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mIsNightMode:Z

    if-eq v1, v0, :cond_3

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->removeView()V

    iget p1, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mType:I

    if-ne p1, v3, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mFloatingIcon:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->showView()V

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->setAppendLayoutParams()V

    iget-boolean v1, p1, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mExpandState:Z

    if-eqz v1, :cond_5

    const v1, 0x7f0703cc

    goto :goto_1

    :cond_5
    const v1, 0x7f0703cd

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->getPixelSize(I)I

    move-result v1

    iput v1, p1, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconSize:I

    :cond_6
    :goto_2
    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mIsNightMode:Z

    return-void
.end method

.method public final onCreate()V
    .locals 13

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE_SA_LOGGING:Z

    const-string v1, "ControlPanelService"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    const-string v3, "F006"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Enter initStatusPreferences, F006 : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " F007 : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "F007"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->SplitScreen:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->QuickPanel:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->ScreenCapture:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->BrightnessControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->VolumeControl:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->FlexPanelSettings:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v4}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v6 .. v12}, [Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->TouchPad:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v8}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v8

    if-ne v7, v8, :cond_2

    iget-object v6, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "TOUCH_PAD_ENABLED"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Touchpad on"

    goto :goto_1

    :cond_1
    const-string v6, "Touchpad off"

    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, p0}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction;->getLoggingID(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "initStatusPreferences, F006 : "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " F007 : 4"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v3, 0x4

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    :goto_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_FLOATING_ICON:Z

    if-nez v0, :cond_5

    const-string p0, "Floating icon is not available"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mIsNightMode:Z

    const-string v0, "flex_panel_pref"

    invoke-virtual {p0, v0, v2}, Landroid/app/Service;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "task_bar"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/wm/shell/controlpanel/ControlPanelService$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/wm/shell/controlpanel/ControlPanelService$1;-><init>(Lcom/android/wm/shell/controlpanel/ControlPanelService;Landroid/os/Handler;)V

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "navigation_mode"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/wm/shell/controlpanel/ControlPanelService$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/wm/shell/controlpanel/ControlPanelService$2;-><init>(Lcom/android/wm/shell/controlpanel/ControlPanelService;Landroid/os/Handler;)V

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "flex_mode_panel_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/wm/shell/controlpanel/ControlPanelService$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/wm/shell/controlpanel/ControlPanelService$3;-><init>(Lcom/android/wm/shell/controlpanel/ControlPanelService;Landroid/os/Handler;)V

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/android/wm/shell/controlpanel/ControlPanelService$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/wm/shell/controlpanel/ControlPanelService$4;-><init>(Lcom/android/wm/shell/controlpanel/ControlPanelService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "taskbar_style_type"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/android/wm/shell/controlpanel/ControlPanelService$5;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/wm/shell/controlpanel/ControlPanelService$5;-><init>(Lcom/android/wm/shell/controlpanel/ControlPanelService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string/jumbo p2, "startId : "

    const-string v0, "ControlPanelService"

    invoke-static {p3, p2, v0}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_9

    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_FLOATING_ICON:Z

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p3, "display_floating_icon_expand"

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    const-string p3, "display_floating_icon_collapse"

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const-string p3, "display_floating_icon_clear"

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_0
    iget p3, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mType:I

    if-ne p3, p1, :cond_4

    return p2

    :cond_4
    iput p1, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mType:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/ControlPanelService;->updateFloatingIcon(I)V

    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_FLOATING_ICON_MOVABLE:Z

    if-eqz p3, :cond_9

    if-ne p1, p2, :cond_9

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string p3, "floating_icon_tooltip_init"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mFloatingIcon:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    iget-object p1, p1, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p3, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mFloatingIconTipPopup:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

    const-string p3, "Floating Icon TipPopup Show"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mFloatingIconTipPopup:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p3, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p3, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p3, v0, p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;->showTipPopUp(II)V

    goto :goto_1

    :cond_7
    iget-object v1, p3, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;->mView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup$1;

    invoke-direct {v2, p3, v0, p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup$1;-><init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mFloatingIcon:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mFloatingIconTipPopup:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

    iput-object p0, p1, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconTipPopup:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

    :cond_9
    :goto_2
    return p2
.end method

.method public final updateFloatingIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mFloatingIcon:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->onMovingEnd()Z

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mFloatingIcon:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->fadeOutAnimation()V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mFloatingIconTipPopup:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;->dismissTipPopup()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mFloatingIconTipPopup:Lcom/android/wm/shell/controlpanel/activity/FloatingIconTipPopup;

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mFloatingIcon:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->showView()V

    :cond_2
    :goto_0
    return-void
.end method

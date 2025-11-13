.class public final Lcom/android/systemui/doze/AODParameters;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final mAODSettingStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public mDozeAlwaysOn:Z

.field public mDozeUiState:Z

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    new-instance v1, Lcom/android/systemui/doze/AODParameters$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/AODParameters$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/AODParameters;)V

    iput-object v1, p0, Lcom/android/systemui/doze/AODParameters;->mAODSettingStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p1, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p2, p0, Lcom/android/systemui/doze/AODParameters;->mPluginAODManagerLazy:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/doze/AODParameters;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    const/4 p2, 0x6

    new-array p2, p2, [Landroid/net/Uri;

    const-string v2, "aod_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p2, v3

    const-string v2, "aod_tap_to_show_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, p2, v0

    const-string v0, "aod_mode_start_time"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p2, v2

    const-string v0, "aod_mode_end_time"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, p2, v2

    const-string v0, "aod_show_for_new_noti"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, p2, v2

    const-string v0, "aod_show_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, p2, v2

    invoke-virtual {p1, v1, p2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/systemui/doze/AODParameters;->updateDozeAlwaysOn()V

    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/doze/AODParameters$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/doze/AODParameters$1;-><init>(Lcom/android/systemui/doze/AODParameters;)V

    invoke-interface {p3, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final updateDozeAlwaysOn()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isAODTapToShowModeEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isAODShowForNewNotiModeEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    goto :goto_2

    :cond_0
    if-nez v1, :cond_6

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getAODStartTime()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/doze/AODParameters;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getAODEndTime()I

    move-result v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v4, v2

    if-ge v0, v1, :cond_3

    if-lt v4, v0, :cond_4

    if-ge v4, v1, :cond_4

    goto :goto_0

    :cond_3
    if-ge v4, v0, :cond_5

    if-ge v4, v1, :cond_4

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    goto :goto_2

    :cond_5
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    goto :goto_2

    :cond_6
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/doze/AODParameters;->mDozeAlwaysOn:Z

    :goto_2
    return-void
.end method

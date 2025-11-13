.class public final Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mButtonOnNavigationBarOption:Landroid/view/View;

.field public mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public mButtonOnNavigationBarTitle:Landroid/widget/TextView;

.field public mCallScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field public final mHandler:Landroid/os/Handler;

.field public mHomeScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

.field public mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

.field public mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field public mLockTitle:Landroid/widget/TextView;

.field public final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field public final mRotationLockTile:Lcom/android/systemui/qs/tiles/SRotationLockTile;

.field public final mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/pluginlock/PluginLockMediator;Landroid/content/SharedPreferences$Editor;Lcom/android/systemui/qs/tiles/SRotationLockTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mRotationLockTile:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mRotationLockTilePrefEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d03b1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "QPD102"

    invoke-static {p2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p2, v1}, Lcom/android/systemui/qs/SecQSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/SecQSSwitchPreference;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mHomeScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/android/systemui/qs/SecQSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/SecQSSwitchPreference;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/android/systemui/qs/SecQSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/SecQSSwitchPreference;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mCallScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    const/16 v2, 0x8

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mHomeScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mCallScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mHomeScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    const v3, 0x7f0a0d34

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f130f2b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mHomeScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    const v5, 0x7f0a0d3c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isHomeScreenRotationAllowed()Z

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setClickable(Z)V

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mHomeScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    new-instance v7, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$4;

    invoke-direct {v7, p0, v4}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$5;

    invoke-direct {v6, p0, v4}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$5;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v4, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v6, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$6;

    invoke-direct {v6, p0, v4}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$6;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v4, v6}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f130f2c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setClickable(Z)V

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v7}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    sget-boolean v6, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v7}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isRotateMenuHide()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    sget-boolean v6, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    sget-boolean v8, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    if-nez v6, :cond_7

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    sget v8, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-virtual {v6, v8}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_5

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v8, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    invoke-virtual {v6, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    sget v9, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-virtual {v6, v9}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->isPluginWallpaperRequired(I)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v6, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/PluginWallpaperController;

    sget v8, Lcom/android/systemui/wallpaper/WallpaperUtils;->sCurrentWhich:I

    invoke-virtual {v6, v8}, Lcom/android/systemui/wallpaper/PluginWallpaperController;->containsVideo(I)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {v7}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isRotateMenuHide()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    invoke-virtual {v6, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockTitle:Landroid/widget/TextView;

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    new-instance v7, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$7;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$7;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v7, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$8;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$8;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v7, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$9;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$9;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mCallScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f130f2a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mCallScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7, v0}, Landroid/widget/CompoundButton;->setClickable(Z)V

    :cond_9
    iget-object v8, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isCallScreenRotationAllowed()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mCallScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    new-instance v9, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$10;

    invoke-direct {v9, p0, v7}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$10;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$11;

    invoke-direct {v8, p0, v7}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$11;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v8, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$12;

    invoke-direct {v8, p0, v7}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$12;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v8, Lcom/android/systemui/QpRune;->QUICK_TILE_ROTATION_MANUAL:Z

    const v9, 0x7f0a022f

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v10, 0x7f0d03b2

    invoke-virtual {v8, v10, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {v1, p3}, Lcom/android/systemui/qs/SecQSSwitchPreference;->inflateSwitch(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/SecQSSwitchPreference;

    move-result-object p3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarTitle:Landroid/widget/TextView;

    const v1, 0x7f130f0f

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    const v1, 0x7f0a0d3b

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarRotateSuggestionEnabled()Z

    move-result v1

    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result p3

    if-eqz p3, :cond_a

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setClickable(Z)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->updateButtonOnNavigationBarOption(Z)V

    goto :goto_3

    :cond_b
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mHomeScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    new-instance v0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;

    invoke-direct {v0, p0, v4, p2}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mLockSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;

    invoke-direct {v1, p0, v0, p3}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mCallScreenOption:Lcom/android/systemui/qs/SecQSSwitchPreference;

    new-instance p3, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;

    invoke-direct {p3, p0, v7, v6}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;

    invoke-direct {v1, p0, v0, p3}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$13;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-object p1
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7b

    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f130f2d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mRotationLockTile:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final setToggleState(Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isRotationLockTileBlocked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mRotationLockTile:Lcom/android/systemui/qs/tiles/SRotationLockTile;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    xor-int/lit8 v0, p1, 0x1

    const-string v1, "SRotationLockTile#setToggleState"

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v2, v1, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLocked(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "location"

    const-string v2, "auto rotate"

    const-string v3, "QPDE1008"

    invoke-static {v0, v3, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TILE_ROTATION_MANUAL:Z

    if-eqz v0, :cond_1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->updateButtonOnNavigationBarOption(Z)V

    :cond_1
    return-void
.end method

.method public final updateButtonOnNavigationBarOption(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED_HARD_KEY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getNavStateManager()Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isTaskBarEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_1

    move p1, v1

    :cond_1
    const v0, 0x7f0a0d34

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v2, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$14;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$14;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$15;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$15;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v2, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$16;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter$16;-><init>(Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarOption:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/RotationLockDetailAdapter;->mButtonOnNavigationBarSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

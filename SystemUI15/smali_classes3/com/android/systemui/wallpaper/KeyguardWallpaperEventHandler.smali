.class public Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final ACTION_LAUNCH_FESTIVAL_WALLPAPER:Ljava/lang/String; = "com.samsung.intent.action.LAUNCH_FESTIVAL_WALLPAPER"

.field private static final FESTIVAL_WALLPAPER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.festivalwallpaper"

.field private static final PERMISSION_SET_FESTIVAL_WALLPAPER:Ljava/lang/String; = "com.samsung.android.permission.SET_FESTIVAL_WALLPAPER"

.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperEventHandler"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEventConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->sendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V

    iput-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/16 p3, 0x9

    new-array p3, p3, [Landroid/net/Uri;

    const-string v0, "minimal_battery_use"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string/jumbo v0, "ultra_powersaving_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p3, v1

    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p3, v1

    const-string v0, "lock_adaptive_color"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p3, v1

    const-string v0, "lock_adaptive_color_sub"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p3, v1

    const-string v0, "lockscreen_wallpaper_transparent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p3, v1

    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p3, v1

    const-string/jumbo v0, "wallpapertheme_state"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p3, v1

    const-string v0, "lock_screen_allow_rotation"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p3, v1

    iput-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsValueList:[Landroid/net/Uri;

    new-instance p3, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V

    iput-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iput-object p4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {p4, p1, p2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->registerOpenThemeChangeReceiver()V

    return-void
.end method

.method private registerOpenThemeChangeReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_REAPPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendMessage(), what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , obj = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , arg1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , arg2 = "

    const-string v2, "KeyguardWallpaperEventHandler"

    invoke-static {v0, p3, v1, p4, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mEventConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    if-eqz p2, :cond_0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    const/4 p1, -0x1

    if-eq p3, p1, :cond_1

    iput p3, v0, Landroid/os/Message;->arg1:I

    :cond_1
    if-eq p4, p1, :cond_2

    iput p4, v0, Landroid/os/Message;->arg2:I

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mEventConsumer:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public setEventReceiver(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Message;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->mEventConsumer:Ljava/util/function/Consumer;

    return-void
.end method

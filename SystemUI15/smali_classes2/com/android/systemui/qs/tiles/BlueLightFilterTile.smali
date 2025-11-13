.class public final Lcom/android/systemui/qs/tiles/BlueLightFilterTile;
.super Lcom/android/systemui/qs/tileimpl/SQSTileImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final EYECOMFORT_SETTINGS:Landroid/content/Intent;


# instance fields
.field public final COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;

.field public final COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$4;

.field public final GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;

.field public final NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mFeatureEnabled:Ljava/util/LinkedHashMap;

.field private mFeatureSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mFeatureSettingsValueList:[Landroid/net/Uri;

.field public final mFeatures:Ljava/util/LinkedHashMap;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mListening:Z

.field public mLocationOnDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field private mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mToasMsg:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings.Settings$BlueLightFilterSettingsActivity"

    const-string v3, "com.android.settings"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.android.settings.Settings$EyeComfortSettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->EYECOMFORT_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Landroid/content/res/Resources;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;)V
    .locals 12

    move-object v10, p0

    move-object/from16 v11, p13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    const/4 v0, 0x0

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "greyscale_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "color_blind"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "color_lens_switch"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureSettingsValueList:[Landroid/net/Uri;

    new-array v0, v5, [Landroid/net/Uri;

    const-string v1, "blue_light_filter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "blue_light_filter_adaptive_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "blue_light_filter_night_dim"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v1, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;

    new-instance v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v1, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;

    new-instance v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v1, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;

    new-instance v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$4;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v1, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$4;

    new-instance v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$5;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v1, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$6;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    iput-object v1, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    move-object/from16 v1, p9

    iput-object v1, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v11, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v1, p11

    iput-object v1, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v1, p12

    iput-object v1, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v11, v1, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->addFeature()V

    move-object/from16 v0, p14

    iput-object v0, v10, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    return-void
.end method


# virtual methods
.method public final addFeature()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    const-string v0, "greyscale_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->GRAYSCALE_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$1;->isEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "high_contrast"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->NEGATIVE_COLORS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$2;->isEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "color_blind"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_ADJUSTMENT_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;->isEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "color_lens_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->COLOR_LENS_FEATURE:Lcom/android/systemui/qs/tiles/BlueLightFilterTile$4;

    invoke-virtual {v3}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$4;->isEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final destroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    return-void
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->EYECOMFORT_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x138d

    return p0
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f130ef6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final handleClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "blue_light_filter_type"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    if-ne v3, v5, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v4, v4, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-nez v4, :cond_2

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Lcom/android/systemui/animation/Expandable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    xor-int/lit8 v6, v4, 0x1

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const/16 v7, 0x138d

    invoke-static {p1, v7, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "handleClick "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveBluelight()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    if-ne v3, v5, :cond_5

    if-nez v6, :cond_4

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    goto/16 :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f140604

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f131032

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f131031

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$7;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$7;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V

    const v1, 0x7f13053f

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$8;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$8;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V

    const v1, 0x7f131095

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$10;-><init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {p1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mLocationOnDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_1
    return-void
.end method

.method public final handleLongClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->handleLongClick(Lcom/android/systemui/animation/Expandable;)V

    return-void
.end method

.method public final handleSecondaryClick(Lcom/android/systemui/animation/Expandable;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final handleSetListening(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mListening:Z

    return-void
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-string v0, "blue_light_filter"

    invoke-virtual {p2, v0}, Lcom/android/systemui/util/SettingsHelper;->getBlueLightFilterMode(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const v4, 0x7f130ef6

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureEnabled:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatures:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$Feature;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const v3, 0x7f130257

    invoke-virtual {p2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    goto :goto_2

    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mToasMsg:Ljava/lang/String;

    if-eqz p2, :cond_4

    const/4 p2, 0x2

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    :goto_2
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_TILE_BLUELIGHT_FILTER_ADAPTIVE_MODE:Z

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAdaptiveBluelight()Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f080e7d

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_3

    :cond_5
    const p0, 0x7f080e7c

    invoke-static {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_3
    return-void
.end method

.method public final handleUserSwitch(I)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mFeatureSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->addFeature()V

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->sendIntent(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleRefreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public final sendIntent(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sendIntent( key:"

    const-string v1, " ) BLUE_LIGHT_SETTING"

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.bluelightfilter"

    const-string v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public final setMode(Z)V
    .locals 2

    const-string/jumbo v0, "setMode : "

    invoke-static {v0, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-string v1, "blue_light_filter"

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/util/SettingsHelper;->setBlueLightFilterMode(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto :goto_0

    :cond_0
    const/16 p1, 0x16

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->sendIntent(I)V

    return-void
.end method

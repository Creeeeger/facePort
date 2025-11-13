.class public final Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final mSettingsValueList:[Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    new-array p1, p1, [Landroid/net/Uri;

    const-string v0, "icon_blacklist"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string/jumbo v0, "split_quick_panel_ratio"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "quickstar_qs_tile_layout_custom_matrix"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string v0, "quickstar_qs_tile_layout_custom_matrix_width"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    const-string v0, "notification_apply_wallpaper_theme"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p1, v1

    const-string v0, "quickstar_indicator_clock_date_format"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

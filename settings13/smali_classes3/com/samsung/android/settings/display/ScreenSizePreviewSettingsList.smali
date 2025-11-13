.class public Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;
.super Landroid/widget/ListView;
.source "ScreenSizePreviewSettingsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;,
        Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;
    }
.end annotation


# static fields
.field private static mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private static mFontScale:F

.field private static mFontSize:I

.field private static mFontStyle:Landroid/graphics/Typeface;

.field private static mIsSummaryVisible:Z

.field private static mPreviewTileIds:[Ljava/lang/String;

.field private static mPreviewTileIdsSeperateLockAndSecurity:[Ljava/lang/String;

.field private static mPreviewTileIdsVZW:[Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmDashboardFeatureProvider()Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmFontScale()F
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontScale:F

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmFontSize()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontSize:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmFontStyle()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontStyle:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsSummaryVisible()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mIsSummaryVisible:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmPreviewTileIds()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mPreviewTileIds:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmDashboardFeatureProvider(Lcom/android/settings/dashboard/DashboardFeatureProvider;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    const-string v0, "connections_settings"

    const-string v1, "notification_settings"

    const-string v2, "app_notifications_1depth"

    const-string v3, "display_settings"

    const-string v4, "lockscreen_settings"

    const-string v5, "biometrics_and_security_settings"

    const-string v6, "general_device_settings"

    const-string v7, "about_settings"

    .line 57
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mPreviewTileIdsSeperateLockAndSecurity:[Ljava/lang/String;

    const-string v1, "connections_settings"

    const-string v2, "notification_settings"

    const-string v3, "app_notifications_1depth"

    const-string v4, "display_settings"

    const-string v5, "security_settings"

    const-string v6, "general_device_settings"

    const-string v7, "about_settings"

    .line 68
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mPreviewTileIds:[Ljava/lang/String;

    const-string v1, "airplane_mode"

    const-string v2, "wifi_settings"

    const-string v3, "bluetooth_settings"

    const-string v4, "data_usage_settings"

    const-string v5, "notification_settings"

    const-string v6, "display_settings"

    const-string v7, "about_settings"

    .line 78
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mPreviewTileIdsVZW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->setSummaryVisible()V

    .line 105
    new-instance p2, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;

    sget p3, Lcom/android/settings/R$layout;->sec_screen_zoom_preview_settings_list_item:I

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public setSummaryVisible()V
    .locals 1

    const/4 v0, 0x1

    .line 109
    sput-boolean v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mIsSummaryVisible:Z

    .line 110
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 111
    sput-boolean p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mIsSummaryVisible:Z

    :cond_0
    return-void
.end method

.method public setTextStyle(Landroid/graphics/Typeface;)V
    .locals 0

    .line 121
    sput-object p1, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontStyle:Landroid/graphics/Typeface;

    return-void
.end method

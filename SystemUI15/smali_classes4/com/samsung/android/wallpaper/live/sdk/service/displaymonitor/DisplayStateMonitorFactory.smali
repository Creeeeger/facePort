.class public final Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitorFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sFullAodSupportDisplays:I

.field public static final sIsSupportAod:Z

.field public static final sIsSupportSeamlessAod:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_CONFIG_AOD_FULLSCREEN"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitorFactory;->sFullAodSupportDisplays:I

    sget-object v0, Lcom/samsung/android/wallpaper/live/sdk/utils/SdkDeviceUtils;->sMethodIsDozeAfterScreenOff:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "WATCHFACE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "LARGESCREEN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitorFactory;->sIsSupportSeamlessAod:Z

    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    const-string v1, "aodversion"

    invoke-static {v0, v1}, Lcom/android/systemui/BasicRune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wallpaper/live/sdk/service/displaymonitor/DisplayStateMonitorFactory;->sIsSupportAod:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

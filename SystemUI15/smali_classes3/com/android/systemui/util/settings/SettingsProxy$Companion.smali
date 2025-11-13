.class public final Lcom/android/systemui/util/settings/SettingsProxy$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field static final synthetic $$INSTANCE:Lcom/android/systemui/util/settings/SettingsProxy$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    invoke-direct {v0}, Lcom/android/systemui/util/settings/SettingsProxy$Companion;-><init>()V

    sput-object v0, Lcom/android/systemui/util/settings/SettingsProxy$Companion;->$$INSTANCE:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseFloat(Ljava/lang/String;F)F
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return p2
.end method

.method public final parseFloatOrThrow(Ljava/lang/String;Ljava/lang/String;)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final parseLongOrThrow(Ljava/lang/String;Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final parseLongOrUseDefault(Ljava/lang/String;J)J
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide p2
.end method

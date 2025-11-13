.class public Lcom/samsung/android/core/CoreSaLogger;
.super Ljava/lang/Object;
.source "CoreSaLogger.java"


# static fields
.field private static final blacklist ADVANCED_TRACKING_ID:Ljava/lang/String; = "408-399-975257"

.field private static final blacklist BASIC_TRACKING_ID:Ljava/lang/String; = "4F4-399-995755"

.field public static final blacklist DETAIL_KEY:Ljava/lang/String; = "det"

.field private static final blacklist DEX_TRACKING_ID:Ljava/lang/String; = "403-399-565756"

.field private static final blacklist DIMENSION_KEY:Ljava/lang/String; = "dimension"

.field private static final blacklist DIMENSION_VALUE_KEY1:Ljava/lang/String; = "d_key1"

.field private static final blacklist EXTRA_KEY:Ljava/lang/String; = "extra"

.field private static final blacklist FEATURE_KEY:Ljava/lang/String; = "feature"

.field private static final blacklist IS_FACTORY_BINARY:Z

.field public static final blacklist MODE_KEY:Ljava/lang/String; = "mode"

.field private static final blacklist NULL_VALUE:I = -0x1

.field private static final blacklist PACKAGE_NAME_KEY:Ljava/lang/String; = "pkg_name"

.field private static final blacklist SA_ACTION:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field private static final blacklist SA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final blacklist SETTING_KEY:Ljava/lang/String; = "setting"

.field private static final blacklist SYSTEMUI_TRACKING_ID:Ljava/lang/String; = "472-399-5110257"

.field private static final blacklist TAG:Ljava/lang/String; = "CoreSaLogger"

.field private static final blacklist TRACKING_ID_KEY:Ljava/lang/String; = "tracking_id"

.field private static final blacklist TYPE_KEY:Ljava/lang/String; = "type"

.field private static final blacklist TYPE_VALUE_EV:Ljava/lang/String; = "ev"

.field private static final blacklist TYPE_VALUE_ST:Ljava/lang/String; = "st"

.field private static final blacklist VALUE_KEY:Ljava/lang/String; = "value"

.field private static final blacklist sCustomDimensionForMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSettingMapForAdvanced:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSettingMapForBasic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSettingMapForDex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/core/CoreSaLogger;->IS_FACTORY_BINARY:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForBasic:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForAdvanced:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForDex:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CoreSaLogger;->sCustomDimensionForMode:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getSettingMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "4F4-399-995755"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "408-399-975257"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "403-399-565756"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "CoreSaLogger"

    const-string v1, "Invalid tracking id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForDex:Ljava/util/HashMap;

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForAdvanced:Ljava/util/HashMap;

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForBasic:Ljava/util/HashMap;

    nop

    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x38ce124c -> :sswitch_2
        -0xb747038 -> :sswitch_1
        0x5523cb27 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic blacklist lambda$sendSaLoggingBroadcast$0(Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tracking_id"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    const-string v2, "value"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    const-string v2, "dimension"

    if-eqz p4, :cond_2

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_2
    const-string v3, "408-399-975257"

    invoke-virtual {v3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "None"

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/samsung/android/core/CoreSaLogger;->sCustomDimensionForMode:Ljava/util/HashMap;

    const-string v4, "mode"

    invoke-virtual {v3, v4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/android/core/CoreSaLogger;->sCustomDimensionForMode:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_3
    const-string v3, "type"

    const-string v4, "ev"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pkg_name"

    const-string v4, "com.samsung.android.appcore"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "1004"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "1005"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, "2000"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "2504"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "d_key1"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1

    :cond_6
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "MULTI_WIN_APP_RECOMMEND"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "personalizedData"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    nop

    :cond_7
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p7, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendSaLoggingBroadcastForBasicSetting$2(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 3

    const-string v0, "4F4-399-995755"

    const-string v1, "4F4-399-995755"

    invoke-static {v1}, Lcom/samsung/android/core/CoreSaLogger;->getSettingMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-static {p1, v1, p0}, Lcom/samsung/android/core/CoreSaLogger;->sendSaLoggingBroadcastForSetting(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic blacklist lambda$sendSaLoggingBroadcastForSetting$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/core/CoreSaLogger;->putToSettingMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "CoreSaLogger"

    const-string v2, "Null setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p3, p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->sendSaLoggingBroadcastForSetting(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForAdvanced(Ljava/lang/String;)V
    .locals 6

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const-string v0, "408-399-975257"

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const-string v0, "408-399-975257"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    int-to-long v3, p2

    const/4 v5, 0x0

    const-string v0, "408-399-975257"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForAdvanced(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "408-399-975257"

    const-wide/16 v3, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForBasic(Ljava/lang/String;)V
    .locals 6

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const-string v0, "4F4-399-995755"

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForBasic(Ljava/lang/String;I)V
    .locals 6

    int-to-long v3, p1

    const/4 v5, 0x0

    const-string v0, "4F4-399-995755"

    const/4 v2, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForBasic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const-string v0, "4F4-399-995755"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForBasic(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const-string v0, "4F4-399-995755"

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForDexMW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const-string v0, "403-399-565756"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForDexMW(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    int-to-long v3, p2

    const/4 v5, 0x0

    const-string v0, "403-399-565756"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logForSystemUI(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const-string v0, "472-399-5110257"

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    return-void
.end method

.method public static blacklist logSettingStatusForAdvanced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "408-399-975257"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->sendSettingLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist logSettingStatusForBasic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "4F4-399-995755"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->sendSettingLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist putToSettingMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/core/CoreSaLogger;->getSettingMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static blacklist sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/core/CoreSaLogger;->IS_FACTORY_BINARY:Z

    const-string v1, "CoreSaLogger"

    if-eqz v0, :cond_0

    const-string v0, "Does\'t send Logging, It\'s FactoryBinary"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityTaskManager;->sendSaLoggingBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to sendSaLoggingBroadcast"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static blacklist sendSaLoggingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v10, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static blacklist sendSaLoggingBroadcastForBasicSetting(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashMap;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static blacklist sendSaLoggingBroadcastForSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    const-string v0, "CoreSaLogger"

    const-string v1, "Null trackingId or settingId"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist sendSaLoggingBroadcastForSetting(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tracking_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pkg_name"

    const-string v2, "com.samsung.android.appcore"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "setting"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static blacklist sendSettingLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/core/CoreSaLogger;->IS_FACTORY_BINARY:Z

    const-string v1, "CoreSaLogger"

    if-eqz v0, :cond_0

    const-string v0, "Does\'t send Logging, It\'s FactoryBinary"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/app/IActivityTaskManager;->sendSaLoggingBroadcastForSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to sendSaLoggingBroadcastForSetting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

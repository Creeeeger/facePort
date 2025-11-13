.class public Lcom/samsung/android/core/CoreSaLogger;
.super Ljava/lang/Object;
.source "CoreSaLogger.java"


# static fields
.field private static final blacklist ADVANCED_TRACKING_ID:Ljava/lang/String; = "408-399-975257"

.field private static final blacklist BASIC_TRACKING_ID:Ljava/lang/String; = "4F4-399-995755"

.field private static final blacklist DEX_TRACKING_ID:Ljava/lang/String; = "403-399-565756"

.field private static final blacklist DIMENSION_KEY:Ljava/lang/String; = "dimension"

.field private static final blacklist DIMENSION_VALUE_KEY1:Ljava/lang/String; = "d_key1"

.field private static final blacklist EXTRA_KEY:Ljava/lang/String; = "extra"

.field private static final blacklist FEATURE_KEY:Ljava/lang/String; = "feature"

.field private static final blacklist IS_FACTORY_BINARY:Z

.field private static final blacklist NULL_VALUE:I = -0x1

.field private static final blacklist PACKAGE_NAME_KEY:Ljava/lang/String; = "pkg_name"

.field private static final blacklist SA_ACTION:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field private static final blacklist SA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final blacklist SETTING_KEY:Ljava/lang/String; = "setting"

.field private static final blacklist TAG:Ljava/lang/String; = "CoreSaLogger"

.field private static final blacklist TRACKING_ID_KEY:Ljava/lang/String; = "tracking_id"

.field private static final blacklist TYPE_KEY:Ljava/lang/String; = "type"

.field private static final blacklist TYPE_VALUE_EV:Ljava/lang/String; = "ev"

.field private static final blacklist TYPE_VALUE_ST:Ljava/lang/String; = "st"

.field private static final blacklist VALUE_KEY:Ljava/lang/String; = "value"

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

    .line 40
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/core/CoreSaLogger;->IS_FACTORY_BINARY:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForBasic:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForAdvanced:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForDex:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$sendSaLoggingBroadcast$0(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "trackingId"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;

    .line 94
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-wide/16 v1, -0x1

    const-string v3, ", value : "

    const-string v4, "CoreSaLogger"

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendSaLoggingBroadcast eventId : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", eventDetail : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    cmp-long v5, p2, v1

    if-eqz v5, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    :cond_0
    const-string v5, "null"

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "tracking_id"

    invoke-virtual {v0, v5, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v5, "feature"

    invoke-virtual {v0, v5, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v5, "extra"

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_2
    cmp-long v1, p2, v1

    if-eqz v1, :cond_3

    .line 107
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 109
    :cond_3
    const-string/jumbo v1, "type"

    const-string v2, "ev"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "pkg_name"

    const-string v2, "com.samsung.android.appcore"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "1004"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 112
    const-string v1, "1005"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 117
    :cond_4
    const-string v1, "2000"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 118
    const-string v1, "2504"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 119
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v1, "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v5, "d_key1"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v2, "dimension"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 122
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_7

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set value to dimension eventId : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 114
    .end local v1    # "dimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v1, "personalizedData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "MULTI_WIN_APP_RECOMMEND"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v2, "personalizedData"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 117
    .end local v1    # "personalizedData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    nop

    .line 127
    :cond_7
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x4000000

    .line 128
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 127
    invoke-virtual {p5, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 131
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_RUNESTONE_LOGGING:Z

    if-eqz v1, :cond_8

    .line 132
    invoke-static {p5, p0, p1}, Lcom/samsung/android/core/RunestoneLogger;->interpretSaToRunestone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_8
    return-void
.end method

.method static synthetic blacklist lambda$sendSaLoggingBroadcastForSetting$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p0, "settingId"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "trackingId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 153
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v1, "CoreSaLogger"

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSaLoggingBroadcastForSetting settingId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "tracking_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v2, "pkg_name"

    const-string v3, "com.samsung.android.appcore"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "st"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "4F4-399-995755"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "408-399-975257"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "403-399-565756"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 175
    const-string v2, "Invalid tracking id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 172
    :pswitch_0
    sget-object v1, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForDex:Ljava/util/HashMap;

    .line 173
    .local v1, "setting":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 169
    .end local v1    # "setting":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    sget-object v1, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForAdvanced:Ljava/util/HashMap;

    .line 170
    .restart local v1    # "setting":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 166
    .end local v1    # "setting":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    sget-object v1, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForBasic:Ljava/util/HashMap;

    .line 167
    .restart local v1    # "setting":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 178
    :goto_1
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v2, "setting"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 181
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.android.diagmonagent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x4000000

    .line 182
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 181
    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 184
    return-void

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

.method public static blacklist logForAdvanced(Ljava/lang/String;)V
    .locals 4
    .param p0, "eventId"    # Ljava/lang/String;

    .line 204
    const-string v0, "408-399-975257"

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 205
    return-void
.end method

.method public static blacklist logForAdvanced(Ljava/lang/String;I)V
    .locals 4
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 212
    int-to-long v0, p1

    const-string v2, "408-399-975257"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 213
    return-void
.end method

.method public static blacklist logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;

    .line 208
    const-string v0, "408-399-975257"

    const-wide/16 v1, -0x1

    invoke-static {v0, p0, p1, v1, v2}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 209
    return-void
.end method

.method public static blacklist logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 216
    int-to-long v0, p2

    const-string v2, "408-399-975257"

    invoke-static {v2, p0, p1, v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 217
    return-void
.end method

.method public static blacklist logForBasic(Ljava/lang/String;)V
    .locals 4
    .param p0, "eventId"    # Ljava/lang/String;

    .line 188
    const-string v0, "4F4-399-995755"

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-static {v0, p0, v1, v2, v3}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 189
    return-void
.end method

.method public static blacklist logForBasic(Ljava/lang/String;I)V
    .locals 4
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 196
    int-to-long v0, p1

    const-string v2, "4F4-399-995755"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 197
    return-void
.end method

.method public static blacklist logForBasic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;

    .line 192
    const-string v0, "4F4-399-995755"

    const-wide/16 v1, -0x1

    invoke-static {v0, p0, p1, v1, v2}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 193
    return-void
.end method

.method public static blacklist logForDexMW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;

    .line 224
    const-string v0, "403-399-565756"

    const-wide/16 v1, -0x1

    invoke-static {v0, p0, p1, v1, v2}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 225
    return-void
.end method

.method public static blacklist logForDexMW(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 228
    int-to-long v0, p2

    const-string v2, "403-399-565756"

    invoke-static {v2, p0, p1, v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 229
    return-void
.end method

.method public static blacklist logSettingStatusForAdvanced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "settingId"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 220
    const-string v0, "408-399-975257"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->sendSettingLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public static blacklist logSettingStatusForBasic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "settingId"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 200
    const-string v0, "4F4-399-995755"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->sendSettingLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private static blacklist sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p0, "trackingId"    # Ljava/lang/String;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "eventDetail"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 76
    sget-boolean v0, Lcom/samsung/android/core/CoreSaLogger;->IS_FACTORY_BINARY:Z

    const-string v1, "CoreSaLogger"

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "Does\'t send Logging, It\'s FactoryBinary"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 81
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/app/IActivityTaskManager;->sendSaLoggingBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to sendSaLoggingBroadcast"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist sendSaLoggingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackingId"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;
    .param p4, "value"    # J

    .line 93
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method

.method public static blacklist sendSaLoggingBroadcastForSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackingId"    # Ljava/lang/String;
    .param p2, "settingId"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p3, p1, p0}, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method private static blacklist sendSettingLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "trackingId"    # Ljava/lang/String;
    .param p1, "settingId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 138
    sget-boolean v0, Lcom/samsung/android/core/CoreSaLogger;->IS_FACTORY_BINARY:Z

    const-string v1, "CoreSaLogger"

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "Does\'t send Logging, It\'s FactoryBinary"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 143
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/app/IActivityTaskManager;->sendSaLoggingBroadcastForSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to sendSaLoggingBroadcastForSetting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

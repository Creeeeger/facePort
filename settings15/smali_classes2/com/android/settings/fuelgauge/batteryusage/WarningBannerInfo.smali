.class public final Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CANCEL_BUTTON_STRING_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

.field public static final DESCRIPTION_STRING_FIELD_NUMBER:I = 0x2

.field public static final MAIN_BUTTON_CONFIG_SETTINGS_NAME_FIELD_NUMBER:I = 0x8

.field public static final MAIN_BUTTON_CONFIG_SETTINGS_VALUE_FIELD_NUMBER:I = 0x9

.field public static final MAIN_BUTTON_DESTINATION_FIELD_NUMBER:I = 0x4

.field public static final MAIN_BUTTON_SOURCE_HIGHLIGHT_KEY_FIELD_NUMBER:I = 0x6

.field public static final MAIN_BUTTON_SOURCE_METRICS_CATEGORY_FIELD_NUMBER:I = 0x5

.field public static final MAIN_BUTTON_STRING_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final TITLE_STRING_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private cancelButtonString_:Ljava/lang/String;

.field private descriptionString_:Ljava/lang/String;

.field private mainButtonConfigSettingsName_:Ljava/lang/String;

.field private mainButtonConfigSettingsValue_:I

.field private mainButtonDestination_:Ljava/lang/String;

.field private mainButtonSourceHighlightKey_:Ljava/lang/String;

.field private mainButtonSourceMetricsCategory_:I

.field private mainButtonString_:Ljava/lang/String;

.field private titleString_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    const-class v1, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->titleString_:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->descriptionString_:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->mainButtonString_:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->mainButtonDestination_:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->mainButtonSourceHighlightKey_:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->cancelButtonString_:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->mainButtonConfigSettingsName_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;
    .locals 1

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Lcom/google/protobuf/GeneratedMessageLite;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo$Builder;

    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "titleString_"

    const-string v2, "descriptionString_"

    const-string v3, "mainButtonString_"

    const-string v4, "mainButtonDestination_"

    const-string v5, "mainButtonSourceMetricsCategory_"

    const-string v6, "mainButtonSourceHighlightKey_"

    const-string v7, "cancelButtonString_"

    const-string v8, "mainButtonConfigSettingsName_"

    const-string v9, "mainButtonConfigSettingsValue_"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1004\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1008\u0007\t\u1004\u0008"

    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    new-instance v0, Lcom/google/protobuf/RawMessageInfo;

    invoke-direct {v0, p2, p1, p0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    const/4 p0, 0x0

    return-object p0

    :pswitch_6
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCancelButtonString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->cancelButtonString_:Ljava/lang/String;

    return-object p0
.end method

.method public final getMainButtonConfigSettingsName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->mainButtonConfigSettingsName_:Ljava/lang/String;

    return-object p0
.end method

.method public final getMainButtonConfigSettingsValue()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->mainButtonConfigSettingsValue_:I

    return p0
.end method

.method public final getMainButtonDestination()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->mainButtonDestination_:Ljava/lang/String;

    return-object p0
.end method

.method public final getMainButtonSourceHighlightKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->mainButtonSourceHighlightKey_:Ljava/lang/String;

    return-object p0
.end method

.method public final getMainButtonSourceMetricsCategory()I
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->mainButtonSourceMetricsCategory_:I

    return p0
.end method

.method public final getMainButtonString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->mainButtonString_:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitleString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->titleString_:Ljava/lang/String;

    return-object p0
.end method

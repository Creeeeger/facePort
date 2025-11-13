.class public final Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

.field public static final DISMISS_RECORD_KEY_FIELD_NUMBER:I = 0x8

.field public static final EVENT_ID_FIELD_NUMBER:I = 0x1

.field public static final KEY_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final SCORE_FIELD_NUMBER:I = 0x5

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field public static final WARNING_BANNER_INFO_FIELD_NUMBER:I = 0x6

.field public static final WARNING_ITEM_INFO_FIELD_NUMBER:I = 0x7


# instance fields
.field private bitField0_:I

.field private dismissRecordKey_:Ljava/lang/String;

.field private eventId_:Ljava/lang/String;

.field private infoCase_:I

.field private info_:Ljava/lang/Object;

.field private key_:I

.field private score_:F

.field private timestamp_:J

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    const-class v1, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->infoCase_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->eventId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->dismissRecordKey_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Lcom/google/protobuf/GeneratedMessageLite;)Ljava/lang/Object;
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent$Builder;

    sget-object p1, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "info_"

    const-string v1, "infoCase_"

    const-string v2, "bitField0_"

    const-string v3, "eventId_"

    const-string v4, "timestamp_"

    const-string v5, "type_"

    sget-object v6, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyType$PowerAnomalyTypeVerifier;->INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyType$PowerAnomalyTypeVerifier;

    const-string v7, "key_"

    sget-object v8, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey$PowerAnomalyKeyVerifier;->INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey$PowerAnomalyKeyVerifier;

    const-string v9, "score_"

    const-class v10, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    const-class v11, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;

    const-string v12, "dismissRecordKey_"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0008\u0001\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u100c\u0002\u0004\u100c\u0003\u0005\u1001\u0004\u0006\u103c\u0000\u0007\u103c\u0000\u0008\u1008\u0007"

    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->DEFAULT_INSTANCE:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;

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

.method public final getDismissRecordKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->dismissRecordKey_:Ljava/lang/String;

    return-object p0
.end method

.method public final getEventId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->eventId_:Ljava/lang/String;

    return-object p0
.end method

.method public final getKey()Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey;
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->key_:I

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey;->forNumber(I)Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey;->KEY_BRIGHTNESS:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyKey;

    :cond_0
    return-object p0
.end method

.method public final getScore()F
    .locals 0

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->score_:F

    return p0
.end method

.method public final getType()Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyType;
    .locals 2

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->type_:I

    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyType;->TYPE_SETTINGS_BANNER:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyType;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyType;->TYPE_APPS_ITEM:Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyType;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public final getWarningBannerInfo()Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;
    .locals 2

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->infoCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->info_:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;->getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/WarningBannerInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getWarningItemInfo()Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;
    .locals 2

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->infoCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->info_:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;->getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/WarningItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public final hasWarningBannerInfo()Z
    .locals 1

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->infoCase_:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasWarningItemInfo()Z
    .locals 1

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerAnomalyEvent;->infoCase_:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

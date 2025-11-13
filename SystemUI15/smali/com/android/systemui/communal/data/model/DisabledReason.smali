.class public final enum Lcom/android/systemui/communal/data/model/DisabledReason;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/communal/data/model/DisabledReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Lcom/android/systemui/communal/data/model/DisabledReason;

.field public static final enum DISABLED_REASON_DEVICE_POLICY:Lcom/android/systemui/communal/data/model/DisabledReason;

.field public static final enum DISABLED_REASON_FLAG:Lcom/android/systemui/communal/data/model/DisabledReason;

.field public static final enum DISABLED_REASON_INVALID_USER:Lcom/android/systemui/communal/data/model/DisabledReason;

.field public static final enum DISABLED_REASON_USER_SETTING:Lcom/android/systemui/communal/data/model/DisabledReason;


# instance fields
.field private final loggingString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/communal/data/model/DisabledReason;

    const/4 v1, 0x0

    const-string v2, "invalidUser"

    const-string v3, "DISABLED_REASON_INVALID_USER"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/communal/data/model/DisabledReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/communal/data/model/DisabledReason;->DISABLED_REASON_INVALID_USER:Lcom/android/systemui/communal/data/model/DisabledReason;

    new-instance v1, Lcom/android/systemui/communal/data/model/DisabledReason;

    const/4 v2, 0x1

    const-string v3, "flag"

    const-string v4, "DISABLED_REASON_FLAG"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/communal/data/model/DisabledReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/systemui/communal/data/model/DisabledReason;->DISABLED_REASON_FLAG:Lcom/android/systemui/communal/data/model/DisabledReason;

    new-instance v2, Lcom/android/systemui/communal/data/model/DisabledReason;

    const/4 v3, 0x2

    const-string/jumbo v4, "userSetting"

    const-string v5, "DISABLED_REASON_USER_SETTING"

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/communal/data/model/DisabledReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/communal/data/model/DisabledReason;->DISABLED_REASON_USER_SETTING:Lcom/android/systemui/communal/data/model/DisabledReason;

    new-instance v3, Lcom/android/systemui/communal/data/model/DisabledReason;

    const/4 v4, 0x3

    const-string v5, "devicePolicy"

    const-string v6, "DISABLED_REASON_DEVICE_POLICY"

    invoke-direct {v3, v6, v4, v5}, Lcom/android/systemui/communal/data/model/DisabledReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/systemui/communal/data/model/DisabledReason;->DISABLED_REASON_DEVICE_POLICY:Lcom/android/systemui/communal/data/model/DisabledReason;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/systemui/communal/data/model/DisabledReason;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/communal/data/model/DisabledReason;->$VALUES:[Lcom/android/systemui/communal/data/model/DisabledReason;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/communal/data/model/DisabledReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/communal/data/model/DisabledReason;->loggingString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/communal/data/model/DisabledReason;
    .locals 1

    const-class v0, Lcom/android/systemui/communal/data/model/DisabledReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/data/model/DisabledReason;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/communal/data/model/DisabledReason;
    .locals 1

    sget-object v0, Lcom/android/systemui/communal/data/model/DisabledReason;->$VALUES:[Lcom/android/systemui/communal/data/model/DisabledReason;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/communal/data/model/DisabledReason;

    return-object v0
.end method


# virtual methods
.method public final getLoggingString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/communal/data/model/DisabledReason;->loggingString:Ljava/lang/String;

    return-object p0
.end method

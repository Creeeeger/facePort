.class public final enum Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

.field public static final enum DAYS_OF_CONTACT:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

.field public static final enum END_TIMESTAMP:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

.field public static final enum LATEST_TIMESTAMP:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

.field public static final enum NUM_OF_CONTACT:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

.field public static final enum NUM_OF_INCOMING:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

.field public static final enum NUM_OF_OUTGOING:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

.field public static final enum OUTGOING_RATE:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

.field public static final enum PERIOD_OF_CONTACT:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

.field public static final enum PREFERENCE_LEVEL:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

.field public static final enum REQUESTED_DAYS:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

.field public static final enum START_TIMESTAMP:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    const/4 v1, 0x0

    const-string v2, "start_timestamp"

    const-string v3, "START_TIMESTAMP"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->START_TIMESTAMP:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    new-instance v1, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    const/4 v2, 0x1

    const-string v3, "end_timestamp"

    const-string v4, "END_TIMESTAMP"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->END_TIMESTAMP:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    new-instance v2, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    const/4 v3, 0x2

    const-string v4, "num_of_contact"

    const-string v5, "NUM_OF_CONTACT"

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->NUM_OF_CONTACT:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    new-instance v3, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    const/4 v4, 0x3

    const-string v5, "latest_timestamp"

    const-string v6, "LATEST_TIMESTAMP"

    invoke-direct {v3, v6, v4, v5}, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->LATEST_TIMESTAMP:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    new-instance v4, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    const/4 v5, 0x4

    const-string v6, "period_of_contact"

    const-string v7, "PERIOD_OF_CONTACT"

    invoke-direct {v4, v7, v5, v6}, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->PERIOD_OF_CONTACT:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    new-instance v5, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    const/4 v6, 0x5

    const-string v7, "num_of_incoming"

    const-string v8, "NUM_OF_INCOMING"

    invoke-direct {v5, v8, v6, v7}, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->NUM_OF_INCOMING:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    new-instance v6, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    const/4 v7, 0x6

    const-string v8, "num_of_outgoing"

    const-string v9, "NUM_OF_OUTGOING"

    invoke-direct {v6, v9, v7, v8}, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->NUM_OF_OUTGOING:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    new-instance v7, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    const/4 v8, 0x7

    const-string v9, "outgoing_rate"

    const-string v10, "OUTGOING_RATE"

    invoke-direct {v7, v10, v8, v9}, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->OUTGOING_RATE:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    new-instance v8, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    const/16 v9, 0x8

    const-string v10, "requested_days"

    const-string v11, "REQUESTED_DAYS"

    invoke-direct {v8, v11, v9, v10}, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->REQUESTED_DAYS:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    new-instance v9, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    const/16 v10, 0x9

    const-string v11, "days_of_contact"

    const-string v12, "DAYS_OF_CONTACT"

    invoke-direct {v9, v12, v10, v11}, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->DAYS_OF_CONTACT:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    new-instance v10, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    const/16 v11, 0xa

    const-string v12, "preference_level"

    const-string v13, "PREFERENCE_LEVEL"

    invoke-direct {v10, v13, v11, v12}, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->PREFERENCE_LEVEL:Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    filled-new-array/range {v0 .. v10}, [Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->$VALUES:[Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

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

    iput-object p3, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->$VALUES:[Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Person$PreferencesKey;->key:Ljava/lang/String;

    return-object p0
.end method

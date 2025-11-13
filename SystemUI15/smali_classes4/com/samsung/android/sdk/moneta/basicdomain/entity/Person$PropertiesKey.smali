.class public final enum Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

.field public static final enum LIVING_TOGETHER:Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

.field public static final enum NICKNAME:Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

.field public static final enum USER_NICKNAME:Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

    const/4 v1, 0x0

    const-string v2, "nickname"

    const-string v3, "NICKNAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;->NICKNAME:Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

    new-instance v1, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

    const/4 v2, 0x1

    const-string v3, "user_nickname"

    const-string v4, "USER_NICKNAME"

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;->USER_NICKNAME:Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

    new-instance v2, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

    const/4 v3, 0x2

    const-string v4, "living_together"

    const-string v5, "LIVING_TOGETHER"

    invoke-direct {v2, v5, v3, v4}, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;->LIVING_TOGETHER:Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;->$VALUES:[Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

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

    iput-object p3, p0, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;->$VALUES:[Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$PropertiesKey;->key:Ljava/lang/String;

    return-object p0
.end method

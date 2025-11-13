.class public final enum Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

.field public static final enum FrequentlyVisitedPlace:Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

.field public static final enum Home:Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

.field public static final enum Other:Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

.field public static final enum WorkPlace:Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;->Home:Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    sget-object v1, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;->WorkPlace:Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    sget-object v2, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;->FrequentlyVisitedPlace:Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    sget-object v3, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;->Other:Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    const-string v1, "Home"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;->Home:Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    const-string v1, "WorkPlace"

    const/4 v2, 0x1

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;->WorkPlace:Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    const-string v1, "FrequentlyVisitedPlace"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v3, v5}, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;->FrequentlyVisitedPlace:Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    const-string v1, "Other"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;->Other:Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    invoke-static {}, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;->$values()[Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;->$VALUES:[Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;->$VALUES:[Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/moneta/memory/entity/context/PlaceType;

    return-object v0
.end method

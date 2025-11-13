.class public final enum Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;

.field public static final enum BY_ENGRAM_ID:Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;

.field public static final Companion:Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType$Companion;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;->BY_ENGRAM_ID:Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;

    filled-new-array {v0}, [Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;

    const-string v1, "BY_ENGRAM_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;->BY_ENGRAM_ID:Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;

    invoke-static {}, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;->$values()[Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;->$VALUES:[Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;->Companion:Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType$Companion;

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

    iput p3, p0, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;->value:I

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

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;->$VALUES:[Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/moneta/memory/option/ContentQueryType;->value:I

    return p0
.end method

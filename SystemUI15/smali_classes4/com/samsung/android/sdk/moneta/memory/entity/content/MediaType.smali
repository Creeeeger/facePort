.class public final enum Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

.field public static final enum MUSIC:Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

.field public static final enum VIDEO:Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;->MUSIC:Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

    sget-object v1, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;->VIDEO:Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

    const-string v1, "MUSIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;->MUSIC:Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

    const-string v1, "VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;->VIDEO:Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

    invoke-static {}, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;->$values()[Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;->$VALUES:[Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
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

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;->$VALUES:[Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/moneta/memory/entity/content/MediaType;

    return-object v0
.end method

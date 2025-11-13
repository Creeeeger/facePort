.class public final enum Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    const-string v1, "FATHER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    const-string v2, "MOTHER"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    const-string v3, "SPOUSE"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    const-string v4, "SON"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    const-string v5, "DAUGHTER"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    const-string v6, "GRANDFATHER"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    const-string v7, "GRANDMOTHER"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    const-string v8, "GRANDSON"

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    const-string v9, "GRANDDAUGHTER"

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    const-string v10, "UNKNOWN"

    const/4 v12, -0x1

    invoke-direct {v9, v10, v11, v12}, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;->UNKNOWN:Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    filled-new-array/range {v0 .. v9}, [Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;->$VALUES:[Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    iput p3, p0, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;->$VALUES:[Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    return-object v0
.end method

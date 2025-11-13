.class public final enum Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    const-string v1, "FAMILY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    const-string v2, "UNKNOWN"

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;->UNKNOWN:Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;->$VALUES:[Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/samsung/android/sdk/moneta/preference/entity/RelationType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/moneta/preference/entity/RelationType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    iput p3, p0, Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;->$VALUES:[Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    return-object v0
.end method

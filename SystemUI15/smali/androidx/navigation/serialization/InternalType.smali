.class final enum Landroidx/navigation/serialization/InternalType;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/navigation/serialization/InternalType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/navigation/serialization/InternalType;

.field public static final enum ARRAY:Landroidx/navigation/serialization/InternalType;

.field public static final enum BOOL:Landroidx/navigation/serialization/InternalType;

.field public static final enum BOOL_ARRAY:Landroidx/navigation/serialization/InternalType;

.field public static final enum FLOAT:Landroidx/navigation/serialization/InternalType;

.field public static final enum FLOAT_ARRAY:Landroidx/navigation/serialization/InternalType;

.field public static final enum INT:Landroidx/navigation/serialization/InternalType;

.field public static final enum INT_ARRAY:Landroidx/navigation/serialization/InternalType;

.field public static final enum LIST:Landroidx/navigation/serialization/InternalType;

.field public static final enum LONG:Landroidx/navigation/serialization/InternalType;

.field public static final enum LONG_ARRAY:Landroidx/navigation/serialization/InternalType;

.field public static final enum STRING:Landroidx/navigation/serialization/InternalType;

.field public static final enum UNKNOWN:Landroidx/navigation/serialization/InternalType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Landroidx/navigation/serialization/InternalType;

    const-string v1, "INT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/navigation/serialization/InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/navigation/serialization/InternalType;->INT:Landroidx/navigation/serialization/InternalType;

    new-instance v1, Landroidx/navigation/serialization/InternalType;

    const-string v2, "BOOL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/navigation/serialization/InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/navigation/serialization/InternalType;->BOOL:Landroidx/navigation/serialization/InternalType;

    new-instance v2, Landroidx/navigation/serialization/InternalType;

    const-string v3, "FLOAT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/navigation/serialization/InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/navigation/serialization/InternalType;->FLOAT:Landroidx/navigation/serialization/InternalType;

    new-instance v3, Landroidx/navigation/serialization/InternalType;

    const-string v4, "LONG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/navigation/serialization/InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/navigation/serialization/InternalType;->LONG:Landroidx/navigation/serialization/InternalType;

    new-instance v4, Landroidx/navigation/serialization/InternalType;

    const-string v5, "STRING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/navigation/serialization/InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/navigation/serialization/InternalType;->STRING:Landroidx/navigation/serialization/InternalType;

    new-instance v5, Landroidx/navigation/serialization/InternalType;

    const-string v6, "INT_ARRAY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroidx/navigation/serialization/InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/navigation/serialization/InternalType;->INT_ARRAY:Landroidx/navigation/serialization/InternalType;

    new-instance v6, Landroidx/navigation/serialization/InternalType;

    const-string v7, "BOOL_ARRAY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Landroidx/navigation/serialization/InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/navigation/serialization/InternalType;->BOOL_ARRAY:Landroidx/navigation/serialization/InternalType;

    new-instance v7, Landroidx/navigation/serialization/InternalType;

    const-string v8, "FLOAT_ARRAY"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Landroidx/navigation/serialization/InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/navigation/serialization/InternalType;->FLOAT_ARRAY:Landroidx/navigation/serialization/InternalType;

    new-instance v8, Landroidx/navigation/serialization/InternalType;

    const-string v9, "LONG_ARRAY"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Landroidx/navigation/serialization/InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Landroidx/navigation/serialization/InternalType;->LONG_ARRAY:Landroidx/navigation/serialization/InternalType;

    new-instance v9, Landroidx/navigation/serialization/InternalType;

    const-string v10, "ARRAY"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Landroidx/navigation/serialization/InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/navigation/serialization/InternalType;->ARRAY:Landroidx/navigation/serialization/InternalType;

    new-instance v10, Landroidx/navigation/serialization/InternalType;

    const-string v11, "LIST"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Landroidx/navigation/serialization/InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Landroidx/navigation/serialization/InternalType;->LIST:Landroidx/navigation/serialization/InternalType;

    new-instance v11, Landroidx/navigation/serialization/InternalType;

    const-string v12, "UNKNOWN"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Landroidx/navigation/serialization/InternalType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroidx/navigation/serialization/InternalType;->UNKNOWN:Landroidx/navigation/serialization/InternalType;

    filled-new-array/range {v0 .. v11}, [Landroidx/navigation/serialization/InternalType;

    move-result-object v0

    sput-object v0, Landroidx/navigation/serialization/InternalType;->$VALUES:[Landroidx/navigation/serialization/InternalType;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/navigation/serialization/InternalType;
    .locals 1

    const-class v0, Landroidx/navigation/serialization/InternalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/navigation/serialization/InternalType;

    return-object p0
.end method

.method public static values()[Landroidx/navigation/serialization/InternalType;
    .locals 1

    sget-object v0, Landroidx/navigation/serialization/InternalType;->$VALUES:[Landroidx/navigation/serialization/InternalType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/navigation/serialization/InternalType;

    return-object v0
.end method

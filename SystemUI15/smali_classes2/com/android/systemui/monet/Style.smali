.class public final enum Lcom/android/systemui/monet/Style;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/monet/Style;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/monet/Style;

.field public static final enum CLOCK:Lcom/android/systemui/monet/Style;

.field public static final enum CLOCK_VIBRANT:Lcom/android/systemui/monet/Style;

.field public static final enum CONTENT:Lcom/android/systemui/monet/Style;

.field public static final enum EXPRESSIVE:Lcom/android/systemui/monet/Style;

.field public static final enum FRUIT_SALAD:Lcom/android/systemui/monet/Style;

.field public static final enum MONOCHROMATIC:Lcom/android/systemui/monet/Style;

.field public static final enum RAINBOW:Lcom/android/systemui/monet/Style;

.field public static final enum SPRITZ:Lcom/android/systemui/monet/Style;

.field public static final enum TONAL_SPOT:Lcom/android/systemui/monet/Style;

.field public static final enum VIBRANT:Lcom/android/systemui/monet/Style;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/systemui/monet/Style;

    const-string v1, "SPRITZ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/monet/Style;->SPRITZ:Lcom/android/systemui/monet/Style;

    new-instance v1, Lcom/android/systemui/monet/Style;

    const-string v2, "TONAL_SPOT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    new-instance v2, Lcom/android/systemui/monet/Style;

    const-string v3, "VIBRANT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/systemui/monet/Style;->VIBRANT:Lcom/android/systemui/monet/Style;

    new-instance v3, Lcom/android/systemui/monet/Style;

    const-string v4, "EXPRESSIVE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/systemui/monet/Style;->EXPRESSIVE:Lcom/android/systemui/monet/Style;

    new-instance v4, Lcom/android/systemui/monet/Style;

    const-string v5, "RAINBOW"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/systemui/monet/Style;->RAINBOW:Lcom/android/systemui/monet/Style;

    new-instance v5, Lcom/android/systemui/monet/Style;

    const-string v6, "FRUIT_SALAD"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/systemui/monet/Style;->FRUIT_SALAD:Lcom/android/systemui/monet/Style;

    new-instance v6, Lcom/android/systemui/monet/Style;

    const-string v7, "CONTENT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    new-instance v7, Lcom/android/systemui/monet/Style;

    const-string v8, "MONOCHROMATIC"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/systemui/monet/Style;->MONOCHROMATIC:Lcom/android/systemui/monet/Style;

    new-instance v8, Lcom/android/systemui/monet/Style;

    const-string v9, "CLOCK"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/systemui/monet/Style;->CLOCK:Lcom/android/systemui/monet/Style;

    new-instance v9, Lcom/android/systemui/monet/Style;

    const-string v10, "CLOCK_VIBRANT"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/systemui/monet/Style;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/systemui/monet/Style;->CLOCK_VIBRANT:Lcom/android/systemui/monet/Style;

    filled-new-array/range {v0 .. v9}, [Lcom/android/systemui/monet/Style;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/monet/Style;->$VALUES:[Lcom/android/systemui/monet/Style;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/monet/Style;
    .locals 1

    const-class v0, Lcom/android/systemui/monet/Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/monet/Style;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/monet/Style;
    .locals 1

    sget-object v0, Lcom/android/systemui/monet/Style;->$VALUES:[Lcom/android/systemui/monet/Style;

    invoke-virtual {v0}, [Lcom/android/systemui/monet/Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/monet/Style;

    return-object v0
.end method

.class final enum Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
.super Ljava/lang/Enum;
.source "WuQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/WuQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/graphics/palette/WuQuantizer$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

.field public static final enum blacklist BLUE:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

.field public static final enum blacklist GREEN:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

.field public static final enum blacklist RED:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
    .locals 3

    sget-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->RED:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    sget-object v1, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->GREEN:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    sget-object v2, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->BLUE:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    const-string v1, "RED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->RED:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    new-instance v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    const-string v1, "GREEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->GREEN:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    new-instance v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    const-string v1, "BLUE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->BLUE:Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    invoke-static {}, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->$values()[Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    move-result-object v0

    sput-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->$VALUES:[Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/graphics/palette/WuQuantizer$Direction;
    .locals 1

    sget-object v0, Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->$VALUES:[Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    invoke-virtual {v0}, [Lcom/android/internal/graphics/palette/WuQuantizer$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/graphics/palette/WuQuantizer$Direction;

    return-object v0
.end method

.class public final enum Landroidx/compose/material3/tokens/ShapeKeyTokens;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/material3/tokens/ShapeKeyTokens;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/compose/material3/tokens/ShapeKeyTokens;",
        "",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final enum CornerExtraLarge:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final enum CornerExtraSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final enum CornerExtraSmallTop:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final enum CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final enum CornerMedium:Landroidx/compose/material3/tokens/ShapeKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-string v1, "CornerExtraLarge"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerExtraLarge:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    new-instance v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-string v2, "CornerExtraLargeTop"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-string v3, "CornerExtraSmall"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerExtraSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    new-instance v3, Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-string v4, "CornerExtraSmallTop"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerExtraSmallTop:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    new-instance v4, Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-string v5, "CornerFull"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    new-instance v5, Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-string v6, "CornerLarge"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-string v7, "CornerLargeEnd"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-string v8, "CornerLargeTop"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-string v9, "CornerMedium"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v8, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerMedium:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    new-instance v9, Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-string v10, "CornerNone"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-string v11, "CornerSmall"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v10}, [Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->$VALUES:[Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 1

    const-class v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public static values()[Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 1

    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->$VALUES:[Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object v0
.end method

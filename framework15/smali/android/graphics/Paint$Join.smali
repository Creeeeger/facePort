.class public final enum Landroid/graphics/Paint$Join;
.super Ljava/lang/Enum;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Join"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Paint$Join;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Paint$Join;

.field public static final enum whitelist BEVEL:Landroid/graphics/Paint$Join;

.field public static final enum whitelist MITER:Landroid/graphics/Paint$Join;

.field public static final enum whitelist ROUND:Landroid/graphics/Paint$Join;


# instance fields
.field final greylist-max-o nativeInt:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/Paint$Join;
    .locals 3

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    filled-new-array {v0, v1, v2}, [Landroid/graphics/Paint$Join;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint$Join;

    const-string v1, "MITER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Paint$Join;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    new-instance v0, Landroid/graphics/Paint$Join;

    const-string v1, "ROUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Paint$Join;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    new-instance v0, Landroid/graphics/Paint$Join;

    const-string v1, "BEVEL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Paint$Join;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-static {}, Landroid/graphics/Paint$Join;->$values()[Landroid/graphics/Paint$Join;

    move-result-object v0

    sput-object v0, Landroid/graphics/Paint$Join;->$VALUES:[Landroid/graphics/Paint$Join;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/graphics/Paint$Join;->nativeInt:I

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/Paint$Join;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/graphics/Paint$Join;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint$Join;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/Paint$Join;
    .locals 1

    sget-object v0, Landroid/graphics/Paint$Join;->$VALUES:[Landroid/graphics/Paint$Join;

    invoke-virtual {v0}, [Landroid/graphics/Paint$Join;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Paint$Join;

    return-object v0
.end method

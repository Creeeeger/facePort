.class public final enum Landroid/graphics/Paint$MyanmarEncoding;
.super Ljava/lang/Enum;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MyanmarEncoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/Paint$MyanmarEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/Paint$MyanmarEncoding;

.field public static final enum blacklist ME_AUTO:Landroid/graphics/Paint$MyanmarEncoding;

.field public static final enum blacklist ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

.field public static final enum blacklist ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;


# instance fields
.field final blacklist nativeInt:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 3326
    new-instance v0, Landroid/graphics/Paint$MyanmarEncoding;

    const-string v1, "ME_UNICODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/Paint$MyanmarEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    .line 3330
    new-instance v1, Landroid/graphics/Paint$MyanmarEncoding;

    const-string v3, "ME_ZAWGYI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/Paint$MyanmarEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    .line 3334
    new-instance v3, Landroid/graphics/Paint$MyanmarEncoding;

    const-string v5, "ME_AUTO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/Paint$MyanmarEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/Paint$MyanmarEncoding;->ME_AUTO:Landroid/graphics/Paint$MyanmarEncoding;

    .line 3322
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/Paint$MyanmarEncoding;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/graphics/Paint$MyanmarEncoding;->$VALUES:[Landroid/graphics/Paint$MyanmarEncoding;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "nativeInt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3336
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3337
    iput p3, p0, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    .line 3338
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/graphics/Paint$MyanmarEncoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3322
    const-class v0, Landroid/graphics/Paint$MyanmarEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint$MyanmarEncoding;

    return-object v0
.end method

.method public static blacklist values()[Landroid/graphics/Paint$MyanmarEncoding;
    .locals 1

    .line 3322
    sget-object v0, Landroid/graphics/Paint$MyanmarEncoding;->$VALUES:[Landroid/graphics/Paint$MyanmarEncoding;

    invoke-virtual {v0}, [Landroid/graphics/Paint$MyanmarEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Paint$MyanmarEncoding;

    return-object v0
.end method

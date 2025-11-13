.class public final enum Lcom/samsung/app/video/editor/external/EffectSubType;
.super Ljava/lang/Enum;
.source "EffectSubType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/EffectSubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/EffectSubType;

.field public static final enum blacklist KERNBURN_PORTRAIT_DIM:Lcom/samsung/app/video/editor/external/EffectSubType;

.field public static final enum blacklist NONE:Lcom/samsung/app/video/editor/external/EffectSubType;

.field public static final enum blacklist PARTIAL_KENBURNS:Lcom/samsung/app/video/editor/external/EffectSubType;

.field public static final enum blacklist PORTRAIT_DIM:Lcom/samsung/app/video/editor/external/EffectSubType;

.field public static final enum blacklist SEQUENTIAL_KENBURNS:Lcom/samsung/app/video/editor/external/EffectSubType;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 8
    new-instance v0, Lcom/samsung/app/video/editor/external/EffectSubType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/EffectSubType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EffectSubType;->NONE:Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 9
    new-instance v1, Lcom/samsung/app/video/editor/external/EffectSubType;

    const-string v3, "PARTIAL_KENBURNS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/app/video/editor/external/EffectSubType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/EffectSubType;->PARTIAL_KENBURNS:Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 10
    new-instance v3, Lcom/samsung/app/video/editor/external/EffectSubType;

    const-string v5, "SEQUENTIAL_KENBURNS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/app/video/editor/external/EffectSubType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/EffectSubType;->SEQUENTIAL_KENBURNS:Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 11
    new-instance v5, Lcom/samsung/app/video/editor/external/EffectSubType;

    const-string v7, "PORTRAIT_DIM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/app/video/editor/external/EffectSubType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/EffectSubType;->PORTRAIT_DIM:Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 12
    new-instance v7, Lcom/samsung/app/video/editor/external/EffectSubType;

    const-string v9, "KERNBURN_PORTRAIT_DIM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/app/video/editor/external/EffectSubType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/app/video/editor/external/EffectSubType;->KERNBURN_PORTRAIT_DIM:Lcom/samsung/app/video/editor/external/EffectSubType;

    .line 6
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/app/video/editor/external/EffectSubType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/app/video/editor/external/EffectSubType;->$VALUES:[Lcom/samsung/app/video/editor/external/EffectSubType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/samsung/app/video/editor/external/EffectSubType;->value:I

    .line 19
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/EffectSubType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/EffectSubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/EffectSubType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/EffectSubType;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/EffectSubType;->$VALUES:[Lcom/samsung/app/video/editor/external/EffectSubType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/EffectSubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/EffectSubType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/samsung/app/video/editor/external/EffectSubType;->value:I

    return v0
.end method

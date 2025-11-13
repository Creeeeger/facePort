.class public final enum Lcom/samsung/app/video/editor/external/ElementType;
.super Ljava/lang/Enum;
.source "ElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/ElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/ElementType;

.field public static final enum blacklist IMG:Lcom/samsung/app/video/editor/external/ElementType;

.field public static final enum blacklist MOVIE:Lcom/samsung/app/video/editor/external/ElementType;

.field public static final enum blacklist NONE:Lcom/samsung/app/video/editor/external/ElementType;


# instance fields
.field final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/ElementType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/ElementType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/ElementType;->NONE:Lcom/samsung/app/video/editor/external/ElementType;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/ElementType;

    const-string v3, "MOVIE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/app/video/editor/external/ElementType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/ElementType;->MOVIE:Lcom/samsung/app/video/editor/external/ElementType;

    .line 9
    new-instance v3, Lcom/samsung/app/video/editor/external/ElementType;

    const-string v5, "IMG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/app/video/editor/external/ElementType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/ElementType;->IMG:Lcom/samsung/app/video/editor/external/ElementType;

    .line 6
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/app/video/editor/external/ElementType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/app/video/editor/external/ElementType;->$VALUES:[Lcom/samsung/app/video/editor/external/ElementType;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/samsung/app/video/editor/external/ElementType;->value:I

    .line 14
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/ElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/ElementType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/ElementType;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/ElementType;->$VALUES:[Lcom/samsung/app/video/editor/external/ElementType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/ElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/ElementType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/samsung/app/video/editor/external/ElementType;->value:I

    return v0
.end method

.class public final enum Lcom/samsung/app/video/editor/external/AnimationInterpolations;
.super Ljava/lang/Enum;
.source "AnimationInterpolations.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/AnimationInterpolations;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/AnimationInterpolations;

.field public static final enum blacklist EASEIN:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

.field public static final enum blacklist INVALID:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

.field public static final enum blacklist LINEAR:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

.field public static final enum blacklist SINEINOUT33:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

.field public static final enum blacklist SINEINOUT60:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

.field public static final enum blacklist SINEINOUT90:Lcom/samsung/app/video/editor/external/AnimationInterpolations;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->INVALID:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    const-string v3, "LINEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->LINEAR:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 9
    new-instance v3, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    const-string v5, "EASEIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->EASEIN:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 10
    new-instance v5, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    const-string v7, "SINEINOUT33"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->SINEINOUT33:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 11
    new-instance v7, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    const-string v9, "SINEINOUT60"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->SINEINOUT60:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 12
    new-instance v9, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    const-string v11, "SINEINOUT90"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/samsung/app/video/editor/external/AnimationInterpolations;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->SINEINOUT90:Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    .line 6
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->$VALUES:[Lcom/samsung/app/video/editor/external/AnimationInterpolations;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->value:I

    .line 18
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/AnimationInterpolations;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/AnimationInterpolations;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->$VALUES:[Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/AnimationInterpolations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/AnimationInterpolations;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/samsung/app/video/editor/external/AnimationInterpolations;->value:I

    return v0
.end method

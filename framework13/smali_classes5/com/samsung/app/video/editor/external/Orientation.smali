.class public final enum Lcom/samsung/app/video/editor/external/Orientation;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/Orientation;

.field public static final enum blacklist BACK_CAMERA_NINETY:Lcom/samsung/app/video/editor/external/Orientation;

.field public static final enum blacklist BACK_CAMERA_ONE_EIGHTY:Lcom/samsung/app/video/editor/external/Orientation;

.field public static final enum blacklist BACK_CAMERA_TWO_SEVENTY:Lcom/samsung/app/video/editor/external/Orientation;

.field public static final enum blacklist BACK_CAMERA_ZERO:Lcom/samsung/app/video/editor/external/Orientation;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 7
    new-instance v0, Lcom/samsung/app/video/editor/external/Orientation;

    const-string v1, "BACK_CAMERA_ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/Orientation;->BACK_CAMERA_ZERO:Lcom/samsung/app/video/editor/external/Orientation;

    .line 8
    new-instance v1, Lcom/samsung/app/video/editor/external/Orientation;

    const-string v3, "BACK_CAMERA_NINETY"

    const/4 v4, 0x1

    const/16 v5, 0x5a

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/app/video/editor/external/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/Orientation;->BACK_CAMERA_NINETY:Lcom/samsung/app/video/editor/external/Orientation;

    .line 9
    new-instance v3, Lcom/samsung/app/video/editor/external/Orientation;

    const-string v5, "BACK_CAMERA_ONE_EIGHTY"

    const/4 v6, 0x2

    const/16 v7, 0xb4

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/app/video/editor/external/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/Orientation;->BACK_CAMERA_ONE_EIGHTY:Lcom/samsung/app/video/editor/external/Orientation;

    .line 10
    new-instance v5, Lcom/samsung/app/video/editor/external/Orientation;

    const-string v7, "BACK_CAMERA_TWO_SEVENTY"

    const/4 v8, 0x3

    const/16 v9, 0x10e

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/app/video/editor/external/Orientation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/Orientation;->BACK_CAMERA_TWO_SEVENTY:Lcom/samsung/app/video/editor/external/Orientation;

    .line 6
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/app/video/editor/external/Orientation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/app/video/editor/external/Orientation;->$VALUES:[Lcom/samsung/app/video/editor/external/Orientation;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/samsung/app/video/editor/external/Orientation;->value:I

    .line 15
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/samsung/app/video/editor/external/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Orientation;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/Orientation;
    .locals 1

    .line 6
    sget-object v0, Lcom/samsung/app/video/editor/external/Orientation;->$VALUES:[Lcom/samsung/app/video/editor/external/Orientation;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/Orientation;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/samsung/app/video/editor/external/Orientation;->value:I

    return v0
.end method

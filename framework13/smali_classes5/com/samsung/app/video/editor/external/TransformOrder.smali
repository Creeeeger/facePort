.class public final enum Lcom/samsung/app/video/editor/external/TransformOrder;
.super Ljava/lang/Enum;
.source "TransformOrder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/TransformOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/TransformOrder;

.field public static final enum blacklist TRANSFORMORDER_POST:Lcom/samsung/app/video/editor/external/TransformOrder;

.field public static final enum blacklist TRANSFORMORDER_PRE:Lcom/samsung/app/video/editor/external/TransformOrder;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/samsung/app/video/editor/external/TransformOrder;

    const-string v1, "TRANSFORMORDER_PRE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/TransformOrder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/TransformOrder;->TRANSFORMORDER_PRE:Lcom/samsung/app/video/editor/external/TransformOrder;

    .line 9
    new-instance v1, Lcom/samsung/app/video/editor/external/TransformOrder;

    const-string v3, "TRANSFORMORDER_POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/app/video/editor/external/TransformOrder;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/TransformOrder;->TRANSFORMORDER_POST:Lcom/samsung/app/video/editor/external/TransformOrder;

    .line 7
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/app/video/editor/external/TransformOrder;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/app/video/editor/external/TransformOrder;->$VALUES:[Lcom/samsung/app/video/editor/external/TransformOrder;

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

    .line 12
    iput p3, p0, Lcom/samsung/app/video/editor/external/TransformOrder;->value:I

    .line 13
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TransformOrder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/samsung/app/video/editor/external/TransformOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TransformOrder;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/TransformOrder;
    .locals 1

    .line 7
    sget-object v0, Lcom/samsung/app/video/editor/external/TransformOrder;->$VALUES:[Lcom/samsung/app/video/editor/external/TransformOrder;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/TransformOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/TransformOrder;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/samsung/app/video/editor/external/TransformOrder;->value:I

    return v0
.end method

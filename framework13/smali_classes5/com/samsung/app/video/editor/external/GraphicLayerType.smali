.class public final enum Lcom/samsung/app/video/editor/external/GraphicLayerType;
.super Ljava/lang/Enum;
.source "GraphicLayerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/GraphicLayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field public static final enum blacklist LAYERTYPE_CAPTION:Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field public static final enum blacklist LAYERTYPE_DECORATOR:Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field public static final enum blacklist LAYERTYPE_DOODLE:Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field public static final enum blacklist LAYERTYPE_MEDIA:Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field public static final enum blacklist LAYERTYPE_NONE:Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field public static final enum blacklist LAYERTYPE_ROOT:Lcom/samsung/app/video/editor/external/GraphicLayerType;

.field public static final enum blacklist MAX:Lcom/samsung/app/video/editor/external/GraphicLayerType;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 15

    .line 8
    new-instance v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    const-string v1, "LAYERTYPE_NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/app/video/editor/external/GraphicLayerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_NONE:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 9
    new-instance v1, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    const-string v3, "LAYERTYPE_ROOT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/app/video/editor/external/GraphicLayerType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_ROOT:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 10
    new-instance v3, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    const-string v5, "LAYERTYPE_MEDIA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/app/video/editor/external/GraphicLayerType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_MEDIA:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 11
    new-instance v5, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    const-string v7, "LAYERTYPE_CAPTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/app/video/editor/external/GraphicLayerType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_CAPTION:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 12
    new-instance v7, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    const-string v9, "LAYERTYPE_DOODLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/samsung/app/video/editor/external/GraphicLayerType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_DOODLE:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 13
    new-instance v9, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    const-string v11, "LAYERTYPE_DECORATOR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/samsung/app/video/editor/external/GraphicLayerType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_DECORATOR:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 14
    new-instance v11, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    const-string v13, "MAX"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/samsung/app/video/editor/external/GraphicLayerType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/app/video/editor/external/GraphicLayerType;->MAX:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    .line 7
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/app/video/editor/external/GraphicLayerType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/samsung/app/video/editor/external/GraphicLayerType;->$VALUES:[Lcom/samsung/app/video/editor/external/GraphicLayerType;

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
    iput p3, p0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->value:I

    .line 19
    return-void
.end method

.method public static blacklist getType(I)Lcom/samsung/app/video/editor/external/GraphicLayerType;
    .locals 1
    .param p0, "val"    # I

    .line 26
    packed-switch p0, :pswitch_data_0

    .line 38
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->MAX:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0

    .line 36
    :pswitch_0
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_DOODLE:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0

    .line 34
    :pswitch_1
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_CAPTION:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0

    .line 32
    :pswitch_2
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_MEDIA:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0

    .line 30
    :pswitch_3
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_ROOT:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0

    .line 28
    :pswitch_4
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->LAYERTYPE_NONE:Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/GraphicLayerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/GraphicLayerType;
    .locals 1

    .line 7
    sget-object v0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->$VALUES:[Lcom/samsung/app/video/editor/external/GraphicLayerType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/GraphicLayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/GraphicLayerType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/samsung/app/video/editor/external/GraphicLayerType;->value:I

    return v0
.end method

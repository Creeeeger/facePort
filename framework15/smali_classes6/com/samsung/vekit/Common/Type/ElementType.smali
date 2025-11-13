.class public final enum Lcom/samsung/vekit/Common/Type/ElementType;
.super Ljava/lang/Enum;
.source "ElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/ElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/ElementType;

.field public static final enum blacklist ANALYZER:Lcom/samsung/vekit/Common/Type/ElementType;

.field public static final enum blacklist ANIMATION:Lcom/samsung/vekit/Common/Type/ElementType;

.field public static final enum blacklist CONTENT:Lcom/samsung/vekit/Common/Type/ElementType;

.field public static final enum blacklist CONTEXT:Lcom/samsung/vekit/Common/Type/ElementType;

.field public static final enum blacklist CONTROLLER:Lcom/samsung/vekit/Common/Type/ElementType;

.field public static final enum blacklist FILTER:Lcom/samsung/vekit/Common/Type/ElementType;

.field public static final enum blacklist ITEM:Lcom/samsung/vekit/Common/Type/ElementType;

.field public static final enum blacklist LAYER:Lcom/samsung/vekit/Common/Type/ElementType;

.field public static final enum blacklist LAYERGROUP:Lcom/samsung/vekit/Common/Type/ElementType;

.field public static final enum blacklist MANAGER:Lcom/samsung/vekit/Common/Type/ElementType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/ElementType;
    .locals 10

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTENT:Lcom/samsung/vekit/Common/Type/ElementType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ElementType;->ITEM:Lcom/samsung/vekit/Common/Type/ElementType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/ElementType;->LAYER:Lcom/samsung/vekit/Common/Type/ElementType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/ElementType;->LAYERGROUP:Lcom/samsung/vekit/Common/Type/ElementType;

    sget-object v4, Lcom/samsung/vekit/Common/Type/ElementType;->ANIMATION:Lcom/samsung/vekit/Common/Type/ElementType;

    sget-object v5, Lcom/samsung/vekit/Common/Type/ElementType;->MANAGER:Lcom/samsung/vekit/Common/Type/ElementType;

    sget-object v6, Lcom/samsung/vekit/Common/Type/ElementType;->FILTER:Lcom/samsung/vekit/Common/Type/ElementType;

    sget-object v7, Lcom/samsung/vekit/Common/Type/ElementType;->CONTEXT:Lcom/samsung/vekit/Common/Type/ElementType;

    sget-object v8, Lcom/samsung/vekit/Common/Type/ElementType;->CONTROLLER:Lcom/samsung/vekit/Common/Type/ElementType;

    sget-object v9, Lcom/samsung/vekit/Common/Type/ElementType;->ANALYZER:Lcom/samsung/vekit/Common/Type/ElementType;

    filled-new-array/range {v0 .. v9}, [Lcom/samsung/vekit/Common/Type/ElementType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTENT:Lcom/samsung/vekit/Common/Type/ElementType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "ITEM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->ITEM:Lcom/samsung/vekit/Common/Type/ElementType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "LAYER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->LAYER:Lcom/samsung/vekit/Common/Type/ElementType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "LAYERGROUP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->LAYERGROUP:Lcom/samsung/vekit/Common/Type/ElementType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "ANIMATION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->ANIMATION:Lcom/samsung/vekit/Common/Type/ElementType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "MANAGER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->MANAGER:Lcom/samsung/vekit/Common/Type/ElementType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "FILTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->FILTER:Lcom/samsung/vekit/Common/Type/ElementType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "CONTEXT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTEXT:Lcom/samsung/vekit/Common/Type/ElementType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "CONTROLLER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTROLLER:Lcom/samsung/vekit/Common/Type/ElementType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "ANALYZER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->ANALYZER:Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/ElementType;->$values()[Lcom/samsung/vekit/Common/Type/ElementType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ElementType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/ElementType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/ElementType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/ElementType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ElementType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/ElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/ElementType;

    return-object v0
.end method

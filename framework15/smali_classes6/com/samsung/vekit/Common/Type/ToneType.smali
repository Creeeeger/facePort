.class public final enum Lcom/samsung/vekit/Common/Type/ToneType;
.super Ljava/lang/Enum;
.source "ToneType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/ToneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/ToneType;

.field public static final enum blacklist BRIGHTNESS:Lcom/samsung/vekit/Common/Type/ToneType;

.field public static final enum blacklist CONTRAST:Lcom/samsung/vekit/Common/Type/ToneType;

.field public static final enum blacklist DEFINITION:Lcom/samsung/vekit/Common/Type/ToneType;

.field public static final enum blacklist EXPOSURE:Lcom/samsung/vekit/Common/Type/ToneType;

.field public static final enum blacklist HIGHLIGHT:Lcom/samsung/vekit/Common/Type/ToneType;

.field public static final enum blacklist SATURATION:Lcom/samsung/vekit/Common/Type/ToneType;

.field public static final enum blacklist SHADOW:Lcom/samsung/vekit/Common/Type/ToneType;

.field public static final enum blacklist SHARPNESS:Lcom/samsung/vekit/Common/Type/ToneType;

.field public static final enum blacklist TEMPERATURE:Lcom/samsung/vekit/Common/Type/ToneType;

.field public static final enum blacklist TINT:Lcom/samsung/vekit/Common/Type/ToneType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/ToneType;
    .locals 10

    sget-object v0, Lcom/samsung/vekit/Common/Type/ToneType;->BRIGHTNESS:Lcom/samsung/vekit/Common/Type/ToneType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ToneType;->EXPOSURE:Lcom/samsung/vekit/Common/Type/ToneType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/ToneType;->CONTRAST:Lcom/samsung/vekit/Common/Type/ToneType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/ToneType;->SATURATION:Lcom/samsung/vekit/Common/Type/ToneType;

    sget-object v4, Lcom/samsung/vekit/Common/Type/ToneType;->TEMPERATURE:Lcom/samsung/vekit/Common/Type/ToneType;

    sget-object v5, Lcom/samsung/vekit/Common/Type/ToneType;->TINT:Lcom/samsung/vekit/Common/Type/ToneType;

    sget-object v6, Lcom/samsung/vekit/Common/Type/ToneType;->HIGHLIGHT:Lcom/samsung/vekit/Common/Type/ToneType;

    sget-object v7, Lcom/samsung/vekit/Common/Type/ToneType;->SHADOW:Lcom/samsung/vekit/Common/Type/ToneType;

    sget-object v8, Lcom/samsung/vekit/Common/Type/ToneType;->SHARPNESS:Lcom/samsung/vekit/Common/Type/ToneType;

    sget-object v9, Lcom/samsung/vekit/Common/Type/ToneType;->DEFINITION:Lcom/samsung/vekit/Common/Type/ToneType;

    filled-new-array/range {v0 .. v9}, [Lcom/samsung/vekit/Common/Type/ToneType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/ToneType;

    const-string v1, "BRIGHTNESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ToneType;->BRIGHTNESS:Lcom/samsung/vekit/Common/Type/ToneType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ToneType;

    const-string v1, "EXPOSURE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ToneType;->EXPOSURE:Lcom/samsung/vekit/Common/Type/ToneType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ToneType;

    const-string v1, "CONTRAST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ToneType;->CONTRAST:Lcom/samsung/vekit/Common/Type/ToneType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ToneType;

    const-string v1, "SATURATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ToneType;->SATURATION:Lcom/samsung/vekit/Common/Type/ToneType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ToneType;

    const-string v1, "TEMPERATURE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ToneType;->TEMPERATURE:Lcom/samsung/vekit/Common/Type/ToneType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ToneType;

    const-string v1, "TINT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ToneType;->TINT:Lcom/samsung/vekit/Common/Type/ToneType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ToneType;

    const-string v1, "HIGHLIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ToneType;->HIGHLIGHT:Lcom/samsung/vekit/Common/Type/ToneType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ToneType;

    const-string v1, "SHADOW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ToneType;->SHADOW:Lcom/samsung/vekit/Common/Type/ToneType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ToneType;

    const-string v1, "SHARPNESS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ToneType;->SHARPNESS:Lcom/samsung/vekit/Common/Type/ToneType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ToneType;

    const-string v1, "DEFINITION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ToneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ToneType;->DEFINITION:Lcom/samsung/vekit/Common/Type/ToneType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/ToneType;->$values()[Lcom/samsung/vekit/Common/Type/ToneType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/ToneType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ToneType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/ToneType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/ToneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/ToneType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/ToneType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ToneType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ToneType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/ToneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/ToneType;

    return-object v0
.end method

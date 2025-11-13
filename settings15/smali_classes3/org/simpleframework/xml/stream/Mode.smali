.class public final enum Lorg/simpleframework/xml/stream/Mode;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/simpleframework/xml/stream/Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lorg/simpleframework/xml/stream/Mode;

.field public static final enum DATA:Lorg/simpleframework/xml/stream/Mode;

.field public static final enum ESCAPE:Lorg/simpleframework/xml/stream/Mode;

.field public static final enum INHERIT:Lorg/simpleframework/xml/stream/Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/simpleframework/xml/stream/Mode;

    const-string v1, "DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simpleframework/xml/stream/Mode;->DATA:Lorg/simpleframework/xml/stream/Mode;

    new-instance v1, Lorg/simpleframework/xml/stream/Mode;

    const-string v2, "ESCAPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/simpleframework/xml/stream/Mode;->ESCAPE:Lorg/simpleframework/xml/stream/Mode;

    new-instance v2, Lorg/simpleframework/xml/stream/Mode;

    const-string v3, "INHERIT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/simpleframework/xml/stream/Mode;->INHERIT:Lorg/simpleframework/xml/stream/Mode;

    filled-new-array {v0, v1, v2}, [Lorg/simpleframework/xml/stream/Mode;

    move-result-object v0

    sput-object v0, Lorg/simpleframework/xml/stream/Mode;->$VALUES:[Lorg/simpleframework/xml/stream/Mode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Mode;
    .locals 1

    const-class v0, Lorg/simpleframework/xml/stream/Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/stream/Mode;

    return-object p0
.end method

.method public static values()[Lorg/simpleframework/xml/stream/Mode;
    .locals 1

    sget-object v0, Lorg/simpleframework/xml/stream/Mode;->$VALUES:[Lorg/simpleframework/xml/stream/Mode;

    invoke-virtual {v0}, [Lorg/simpleframework/xml/stream/Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/xml/stream/Mode;

    return-object v0
.end method

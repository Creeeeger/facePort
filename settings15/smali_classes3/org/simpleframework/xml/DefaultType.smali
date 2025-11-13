.class public final enum Lorg/simpleframework/xml/DefaultType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/simpleframework/xml/DefaultType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lorg/simpleframework/xml/DefaultType;

.field public static final enum FIELD:Lorg/simpleframework/xml/DefaultType;

.field public static final enum PROPERTY:Lorg/simpleframework/xml/DefaultType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/simpleframework/xml/DefaultType;

    const-string v1, "FIELD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simpleframework/xml/DefaultType;->FIELD:Lorg/simpleframework/xml/DefaultType;

    new-instance v1, Lorg/simpleframework/xml/DefaultType;

    const-string v2, "PROPERTY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/simpleframework/xml/DefaultType;->PROPERTY:Lorg/simpleframework/xml/DefaultType;

    filled-new-array {v0, v1}, [Lorg/simpleframework/xml/DefaultType;

    move-result-object v0

    sput-object v0, Lorg/simpleframework/xml/DefaultType;->$VALUES:[Lorg/simpleframework/xml/DefaultType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/DefaultType;
    .locals 1

    const-class v0, Lorg/simpleframework/xml/DefaultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/DefaultType;

    return-object p0
.end method

.method public static values()[Lorg/simpleframework/xml/DefaultType;
    .locals 1

    sget-object v0, Lorg/simpleframework/xml/DefaultType;->$VALUES:[Lorg/simpleframework/xml/DefaultType;

    invoke-virtual {v0}, [Lorg/simpleframework/xml/DefaultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/xml/DefaultType;

    return-object v0
.end method

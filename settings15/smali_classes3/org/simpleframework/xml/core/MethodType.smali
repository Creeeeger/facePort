.class final enum Lorg/simpleframework/xml/core/MethodType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/simpleframework/xml/core/MethodType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lorg/simpleframework/xml/core/MethodType;

.field public static final enum GET:Lorg/simpleframework/xml/core/MethodType;

.field public static final enum IS:Lorg/simpleframework/xml/core/MethodType;

.field public static final enum NONE:Lorg/simpleframework/xml/core/MethodType;

.field public static final enum SET:Lorg/simpleframework/xml/core/MethodType;


# instance fields
.field private prefix:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/simpleframework/xml/core/MethodType;

    const-string v1, "GET"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    new-instance v1, Lorg/simpleframework/xml/core/MethodType;

    const-string v4, "IS"

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v1, v4, v5, v6}, Lorg/simpleframework/xml/core/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    new-instance v4, Lorg/simpleframework/xml/core/MethodType;

    const-string v5, "SET"

    invoke-direct {v4, v5, v6, v3}, Lorg/simpleframework/xml/core/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    new-instance v5, Lorg/simpleframework/xml/core/MethodType;

    const-string v6, "NONE"

    invoke-direct {v5, v6, v3, v2}, Lorg/simpleframework/xml/core/MethodType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/simpleframework/xml/core/MethodType;->NONE:Lorg/simpleframework/xml/core/MethodType;

    filled-new-array {v0, v1, v4, v5}, [Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    sput-object v0, Lorg/simpleframework/xml/core/MethodType;->$VALUES:[Lorg/simpleframework/xml/core/MethodType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/simpleframework/xml/core/MethodType;->prefix:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    const-class v0, Lorg/simpleframework/xml/core/MethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/core/MethodType;

    return-object p0
.end method

.method public static values()[Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    sget-object v0, Lorg/simpleframework/xml/core/MethodType;->$VALUES:[Lorg/simpleframework/xml/core/MethodType;

    invoke-virtual {v0}, [Lorg/simpleframework/xml/core/MethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/xml/core/MethodType;

    return-object v0
.end method


# virtual methods
.method public final getPrefix()I
    .locals 0

    iget p0, p0, Lorg/simpleframework/xml/core/MethodType;->prefix:I

    return p0
.end method

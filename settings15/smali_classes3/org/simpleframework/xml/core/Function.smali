.class public final Lorg/simpleframework/xml/core/Function;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final contextual:Z

.field public final method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/simpleframework/xml/core/Function;->contextual:Z

    iput-object p1, p0, Lorg/simpleframework/xml/core/Function;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final call(Lorg/simpleframework/xml/core/Source;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p1, p1, Lorg/simpleframework/xml/core/Source;->session:Lorg/simpleframework/xml/core/Session;

    iget-object p1, p1, Lorg/simpleframework/xml/core/Session;->map:Ljava/util/Map;

    iget-boolean v1, p0, Lorg/simpleframework/xml/core/Function;->contextual:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lorg/simpleframework/xml/core/Function;->method:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/simpleframework/xml/core/Function;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

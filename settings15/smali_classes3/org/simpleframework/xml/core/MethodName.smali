.class public final Lorg/simpleframework/xml/core/MethodName;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final method:Ljava/lang/reflect/Method;

.field public final name:Ljava/lang/String;

.field public final type:Lorg/simpleframework/xml/core/MethodType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/MethodName;->method:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lorg/simpleframework/xml/core/MethodName;->type:Lorg/simpleframework/xml/core/MethodType;

    iput-object p3, p0, Lorg/simpleframework/xml/core/MethodName;->name:Ljava/lang/String;

    return-void
.end method

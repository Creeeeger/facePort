.class public final Lorg/simpleframework/xml/core/FieldDetail;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final field:Ljava/lang/reflect/Field;

.field public final list:[Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldDetail;->list:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    iput-object p1, p0, Lorg/simpleframework/xml/core/FieldDetail;->field:Ljava/lang/reflect/Field;

    return-void
.end method

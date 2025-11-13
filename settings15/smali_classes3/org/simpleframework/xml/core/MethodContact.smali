.class public final Lorg/simpleframework/xml/core/MethodContact;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Contact;


# instance fields
.field public final get:Lorg/simpleframework/xml/core/MethodPart;

.field public final label:Ljava/lang/annotation/Annotation;

.field public final name:Ljava/lang/String;

.field public final owner:Ljava/lang/Class;

.field public final set:Lorg/simpleframework/xml/core/MethodPart;

.field public final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->owner:Ljava/lang/Class;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->label:Ljava/lang/annotation/Annotation;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getDependents()[Ljava/lang/Class;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getDependent()Ljava/lang/Class;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->type:Ljava/lang/Class;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    iput-object p1, p0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    invoke-interface {p0}, Lorg/simpleframework/xml/core/MethodPart;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodContact;->label:Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodContact;->label:Ljava/lang/annotation/Annotation;

    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodContact;->label:Ljava/lang/annotation/Annotation;

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final getDeclaringClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodContact;->owner:Ljava/lang/Class;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodContact;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodContact;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public final isReadOnly()Z
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/simpleframework/xml/core/MethodPart;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Lorg/simpleframework/xml/core/MethodException;

    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodContact;->name:Ljava/lang/String;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Property \'%s\' is read only in %s"

    invoke-direct {p1, p2, p0}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/simpleframework/xml/core/MethodContact;->name:Ljava/lang/String;

    const-string v1, "\'"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

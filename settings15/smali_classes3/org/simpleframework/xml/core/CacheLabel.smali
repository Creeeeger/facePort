.class public final Lorg/simpleframework/xml/core/CacheLabel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Label;


# instance fields
.field public final annotation:Ljava/lang/annotation/Annotation;

.field public final attribute:Z

.field public final collection:Z

.field public final contact:Lorg/simpleframework/xml/core/Contact;

.field public final data:Z

.field public final decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

.field public final depend:Lorg/simpleframework/xml/strategy/Type;

.field public final entry:Ljava/lang/String;

.field public final expression:Lorg/simpleframework/xml/core/Expression;

.field public final inline:Z

.field public final key:Ljava/lang/Object;

.field public final label:Lorg/simpleframework/xml/core/Label;

.field public final list:Z

.field public final name:Ljava/lang/String;

.field public final names:[Ljava/lang/String;

.field public final override:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final paths:[Ljava/lang/String;

.field public final required:Z

.field public final text:Z

.field public final type:Ljava/lang/Class;

.field public final union:Z


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Label;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/NamespaceDecorator;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->attribute:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isCollection()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->collection:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->depend:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->required:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getOverride()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->override:Ljava/lang/String;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isTextList()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->list:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->inline:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isUnion()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->union:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->names:[Ljava/lang/String;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->paths:[Ljava/lang/String;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->path:Ljava/lang/String;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->type:Ljava/lang/Class;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->name:Ljava/lang/String;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getEntry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->entry:Ljava/lang/String;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->data:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->text:Z

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheLabel;->key:Ljava/lang/Object;

    iput-object p1, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    return-void
.end method


# virtual methods
.method public final getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->annotation:Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public final getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object p0
.end method

.method public final getConverter(Lorg/simpleframework/xml/core/Source;)Lorg/simpleframework/xml/core/Converter;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Source;)Lorg/simpleframework/xml/core/Converter;

    move-result-object p0

    return-object p0
.end method

.method public final getDecorator()Lorg/simpleframework/xml/core/NamespaceDecorator;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->decorator:Lorg/simpleframework/xml/core/NamespaceDecorator;

    return-object p0
.end method

.method public final getDependent()Lorg/simpleframework/xml/strategy/Type;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->depend:Lorg/simpleframework/xml/strategy/Type;

    return-object p0
.end method

.method public final getEmpty(Lorg/simpleframework/xml/core/Source;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Source;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getEntry()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->entry:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public final getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/core/Label;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->names:[Ljava/lang/String;

    return-object p0
.end method

.method public final getOverride()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->override:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getPaths()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->paths:[Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public final getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {p0, p1}, Lorg/simpleframework/xml/core/Label;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object p0

    return-object p0
.end method

.method public final isAttribute()Z
    .locals 0

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->attribute:Z

    return p0
.end method

.method public final isCollection()Z
    .locals 0

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->collection:Z

    return p0
.end method

.method public final isData()Z
    .locals 0

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->data:Z

    return p0
.end method

.method public final isInline()Z
    .locals 0

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->inline:Z

    return p0
.end method

.method public final isRequired()Z
    .locals 0

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->required:Z

    return p0
.end method

.method public final isText()Z
    .locals 0

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->text:Z

    return p0
.end method

.method public final isTextList()Z
    .locals 0

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->list:Z

    return p0
.end method

.method public final isUnion()Z
    .locals 0

    iget-boolean p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->union:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

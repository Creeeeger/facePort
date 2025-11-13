.class public final Lorg/simpleframework/xml/core/CacheParameter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/core/Parameter;


# instance fields
.field public final annotation:Ljava/lang/annotation/Annotation;

.field public final attribute:Z

.field public final key:Ljava/lang/Object;

.field public final name:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final primitive:Z

.field public final required:Z

.field public final string:Ljava/lang/String;

.field public final text:Z

.field public final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/Label;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lorg/simpleframework/xml/core/CacheParameter;

    iget-object v0, p1, Lorg/simpleframework/xml/core/CacheParameter;->annotation:Ljava/lang/annotation/Annotation;

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheParameter;->annotation:Ljava/lang/annotation/Annotation;

    iget-boolean v0, p1, Lorg/simpleframework/xml/core/CacheParameter;->attribute:Z

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheParameter;->attribute:Z

    iget-boolean v0, p1, Lorg/simpleframework/xml/core/CacheParameter;->primitive:Z

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheParameter;->primitive:Z

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheParameter;->required:Z

    iget-object v0, p1, Lorg/simpleframework/xml/core/CacheParameter;->string:Ljava/lang/String;

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheParameter;->string:Ljava/lang/String;

    iget-boolean v0, p1, Lorg/simpleframework/xml/core/CacheParameter;->text:Z

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/CacheParameter;->text:Z

    iget-object v0, p1, Lorg/simpleframework/xml/core/CacheParameter;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheParameter;->name:Ljava/lang/String;

    iget-object v0, p1, Lorg/simpleframework/xml/core/CacheParameter;->path:Ljava/lang/String;

    iput-object v0, p0, Lorg/simpleframework/xml/core/CacheParameter;->path:Ljava/lang/String;

    iget-object p1, p1, Lorg/simpleframework/xml/core/CacheParameter;->type:Ljava/lang/Class;

    iput-object p1, p0, Lorg/simpleframework/xml/core/CacheParameter;->type:Ljava/lang/Class;

    invoke-interface {p2}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/CacheParameter;->key:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/simpleframework/xml/core/CacheParameter;->string:Ljava/lang/String;

    return-object p0
.end method

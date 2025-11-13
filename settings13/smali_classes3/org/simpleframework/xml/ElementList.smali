.class public interface abstract annotation Lorg/simpleframework/xml/ElementList;
.super Ljava/lang/Object;
.source "ElementList.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/simpleframework/xml/ElementList;
        data = false
        empty = true
        entry = ""
        inline = false
        name = ""
        required = true
        type = V
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract empty()Z
.end method

.method public abstract inline()Z
.end method

.class public interface abstract Lorg/simpleframework/xml/stream/OutputNode;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lorg/simpleframework/xml/stream/Node;


# virtual methods
.method public abstract getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
.end method

.method public abstract getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
.end method

.method public abstract getMode()Lorg/simpleframework/xml/stream/Mode;
.end method

.method public abstract getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract getPrefix(Z)Ljava/lang/String;
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
.end method

.method public abstract setData(Z)V
.end method

.method public abstract setReference(Ljava/lang/String;)V
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method

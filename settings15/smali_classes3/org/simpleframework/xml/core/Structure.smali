.class public final Lorg/simpleframework/xml/core/Structure;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final factory:Lorg/simpleframework/xml/core/ClassInstantiator;

.field public final model:Lorg/simpleframework/xml/core/TreeModel;

.field public final primitive:Z

.field public final version:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/ClassInstantiator;Lorg/simpleframework/xml/core/TreeModel;Lorg/simpleframework/xml/core/Label;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lorg/simpleframework/xml/core/Structure;->primitive:Z

    iput-object p1, p0, Lorg/simpleframework/xml/core/Structure;->factory:Lorg/simpleframework/xml/core/ClassInstantiator;

    iput-object p3, p0, Lorg/simpleframework/xml/core/Structure;->version:Lorg/simpleframework/xml/core/Label;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Structure;->model:Lorg/simpleframework/xml/core/TreeModel;

    return-void
.end method

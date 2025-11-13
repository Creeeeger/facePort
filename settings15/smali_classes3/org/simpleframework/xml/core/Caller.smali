.class public final Lorg/simpleframework/xml/core/Caller;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final commit:Lorg/simpleframework/xml/core/Function;

.field public final complete:Lorg/simpleframework/xml/core/Function;

.field public final context:Lorg/simpleframework/xml/core/Source;

.field public final persist:Lorg/simpleframework/xml/core/Function;

.field public final replace:Lorg/simpleframework/xml/core/Function;

.field public final resolve:Lorg/simpleframework/xml/core/Function;

.field public final validate:Lorg/simpleframework/xml/core/Function;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Source;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getValidate()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Caller;->validate:Lorg/simpleframework/xml/core/Function;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getComplete()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Caller;->complete:Lorg/simpleframework/xml/core/Function;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getReplace()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Caller;->replace:Lorg/simpleframework/xml/core/Function;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getResolve()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Caller;->resolve:Lorg/simpleframework/xml/core/Function;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getPersist()Lorg/simpleframework/xml/core/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Caller;->persist:Lorg/simpleframework/xml/core/Function;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Scanner;->getCommit()Lorg/simpleframework/xml/core/Function;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/Caller;->commit:Lorg/simpleframework/xml/core/Function;

    iput-object p2, p0, Lorg/simpleframework/xml/core/Caller;->context:Lorg/simpleframework/xml/core/Source;

    return-void
.end method

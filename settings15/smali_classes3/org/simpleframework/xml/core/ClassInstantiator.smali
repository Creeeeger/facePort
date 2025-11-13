.class public final Lorg/simpleframework/xml/core/ClassInstantiator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final creators:Ljava/util/List;

.field public final detail:Lorg/simpleframework/xml/core/Detail;

.field public final primary:Lorg/simpleframework/xml/core/SignatureCreator;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/simpleframework/xml/core/SignatureCreator;Lorg/simpleframework/xml/core/Detail;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/SignatureCreator;

    iput-object p3, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->detail:Lorg/simpleframework/xml/core/Detail;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->detail:Lorg/simpleframework/xml/core/Detail;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "creator for %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

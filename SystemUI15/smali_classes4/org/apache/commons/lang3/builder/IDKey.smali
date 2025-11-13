.class public final Lorg/apache/commons/lang3/builder/IDKey;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final id:I

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    iput-object p1, p0, Lorg/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/commons/lang3/builder/IDKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/commons/lang3/builder/IDKey;

    iget v0, p1, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    iget v2, p0, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    iget-object p1, p1, Lorg/apache/commons/lang3/builder/IDKey;->value:Ljava/lang/Object;

    if-ne p0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/lang3/builder/IDKey;->id:I

    return p0
.end method

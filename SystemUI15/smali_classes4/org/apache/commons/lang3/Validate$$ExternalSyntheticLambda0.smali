.class public final synthetic Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The object to build a hash code for must not be null"

    iput-object v0, p0, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Object;

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

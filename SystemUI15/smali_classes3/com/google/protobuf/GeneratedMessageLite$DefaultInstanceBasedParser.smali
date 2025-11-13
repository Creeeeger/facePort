.class public final Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;
.super Lcom/google/protobuf/AbstractParser;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final defaultInstance:Lcom/google/protobuf/GeneratedMessageLite;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/GeneratedMessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->defaultInstance:Lcom/google/protobuf/GeneratedMessageLite;

    return-void
.end method

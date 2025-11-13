.class public final Lcom/google/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/protobuf/MessageInfo;


# instance fields
.field public final checkInitialized:[I

.field public final defaultInstance:Lcom/google/protobuf/MessageLite;

.field public final fields:[Lcom/google/protobuf/FieldInfo;

.field public final messageSetWireFormat:Z

.field public final syntax:Lcom/google/protobuf/ProtoSyntax;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/ProtoSyntax;Z[I[Lcom/google/protobuf/FieldInfo;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/StructuralMessageInfo;->syntax:Lcom/google/protobuf/ProtoSyntax;

    iput-boolean p2, p0, Lcom/google/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    iput-object p3, p0, Lcom/google/protobuf/StructuralMessageInfo;->checkInitialized:[I

    iput-object p4, p0, Lcom/google/protobuf/StructuralMessageInfo;->fields:[Lcom/google/protobuf/FieldInfo;

    const-string p1, "defaultInstance"

    invoke-static {p5, p1}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/google/protobuf/MessageLite;

    iput-object p5, p0, Lcom/google/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/google/protobuf/MessageLite;

    return-void
.end method


# virtual methods
.method public final getDefaultInstance()Lcom/google/protobuf/MessageLite;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/google/protobuf/MessageLite;

    return-object p0
.end method

.method public final getSyntax()Lcom/google/protobuf/ProtoSyntax;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/StructuralMessageInfo;->syntax:Lcom/google/protobuf/ProtoSyntax;

    return-object p0
.end method

.method public final isMessageSetWireFormat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    return p0
.end method

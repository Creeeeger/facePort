.class public final Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/MessageInfo;


# instance fields
.field public final checkInitialized:[I

.field public final defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

.field public final fields:[Landroidx/datastore/preferences/protobuf/FieldInfo;

.field public final messageSetWireFormat:Z

.field public final syntax:Landroidx/datastore/preferences/protobuf/ProtoSyntax;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/ProtoSyntax;Z[I[Landroidx/datastore/preferences/protobuf/FieldInfo;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->syntax:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    iput-boolean p2, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->checkInitialized:[I

    iput-object p4, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->fields:[Landroidx/datastore/preferences/protobuf/FieldInfo;

    const-string p1, "defaultInstance"

    invoke-static {p5, p1}, Landroidx/datastore/preferences/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Landroidx/datastore/preferences/protobuf/MessageLite;

    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-void
.end method


# virtual methods
.method public final getDefaultInstance()Landroidx/datastore/preferences/protobuf/MessageLite;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/MessageLite;

    return-object p0
.end method

.method public final getSyntax()Landroidx/datastore/preferences/protobuf/ProtoSyntax;
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->syntax:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    return-object p0
.end method

.method public final isMessageSetWireFormat()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    return p0
.end method

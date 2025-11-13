.class public final Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final isPacked:Z

.field public final isRepeated:Z

.field public final number:I

.field public final type:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/Internal$EnumLiteMap;ILandroidx/datastore/preferences/protobuf/WireFormat$FieldType;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/Internal$EnumLiteMap;",
            "I",
            "Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    iput-boolean p4, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    iput-boolean p5, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget p0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget p1, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    sub-int/2addr p0, p1

    return p0
.end method

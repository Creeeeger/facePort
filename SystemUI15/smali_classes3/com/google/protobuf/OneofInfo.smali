.class public final Lcom/google/protobuf/OneofInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final caseField:Ljava/lang/reflect/Field;

.field public final valueField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(ILjava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/protobuf/OneofInfo;->caseField:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/google/protobuf/OneofInfo;->valueField:Ljava/lang/reflect/Field;

    return-void
.end method

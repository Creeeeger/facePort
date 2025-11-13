.class public final Landroidx/compose/runtime/KeyInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final key:I

.field public final location:I

.field public final nodes:I

.field public final objectKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/KeyInfo;->key:I

    iput-object p2, p0, Landroidx/compose/runtime/KeyInfo;->objectKey:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/runtime/KeyInfo;->location:I

    iput p4, p0, Landroidx/compose/runtime/KeyInfo;->nodes:I

    return-void
.end method

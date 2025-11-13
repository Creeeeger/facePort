.class public final Landroidx/compose/runtime/KeyInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final key:I

.field public final location:I

.field public final nodes:I

.field public final objectKey:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/compose/runtime/KeyInfo;->key:I

    iput-object p1, p0, Landroidx/compose/runtime/KeyInfo;->objectKey:Ljava/lang/Object;

    iput p3, p0, Landroidx/compose/runtime/KeyInfo;->location:I

    iput p4, p0, Landroidx/compose/runtime/KeyInfo;->nodes:I

    return-void
.end method

.class public final Landroidx/room/util/ForeignKeyWithSequence;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final from:Ljava/lang/String;

.field public final id:I

.field public final sequence:I

.field public final to:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "to"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/util/ForeignKeyWithSequence;->id:I

    iput p2, p0, Landroidx/room/util/ForeignKeyWithSequence;->sequence:I

    iput-object p3, p0, Landroidx/room/util/ForeignKeyWithSequence;->from:Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/util/ForeignKeyWithSequence;->to:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroidx/room/util/ForeignKeyWithSequence;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/room/util/ForeignKeyWithSequence;->id:I

    iget v1, p1, Landroidx/room/util/ForeignKeyWithSequence;->id:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Landroidx/room/util/ForeignKeyWithSequence;->sequence:I

    iget p1, p1, Landroidx/room/util/ForeignKeyWithSequence;->sequence:I

    sub-int v0, p0, p1

    :cond_0
    return v0
.end method

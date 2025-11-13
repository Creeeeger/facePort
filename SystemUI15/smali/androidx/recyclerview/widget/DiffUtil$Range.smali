.class public final Landroidx/recyclerview/widget/DiffUtil$Range;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public newListEnd:I

.field public newListStart:I

.field public oldListEnd:I

.field public oldListStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput p2, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput p3, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput p4, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    return-void
.end method


# virtual methods
.method public final newSize()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget p0, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final oldSize()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget p0, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int/2addr v0, p0

    return v0
.end method

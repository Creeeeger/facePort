.class public final Landroidx/recyclerview/widget/DiffUtil$CenteredArray;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mData:[I

.field public final mMid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mMid:I

    return-void
.end method


# virtual methods
.method public final get(I)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mMid:I

    add-int/2addr p1, v0

    iget-object p0, p0, Landroidx/recyclerview/widget/DiffUtil$CenteredArray;->mData:[I

    aget p0, p0, p1

    return p0
.end method

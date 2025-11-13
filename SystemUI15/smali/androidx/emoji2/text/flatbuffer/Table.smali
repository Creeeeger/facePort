.class public Landroidx/emoji2/text/flatbuffer/Table;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public bb:Ljava/nio/ByteBuffer;

.field public bb_pos:I

.field public vtable_size:I

.field public vtable_start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Landroidx/emoji2/text/flatbuffer/Utf8;->DEFAULT:Landroidx/emoji2/text/flatbuffer/Utf8Safe;

    if-nez p0, :cond_0

    new-instance p0, Landroidx/emoji2/text/flatbuffer/Utf8Safe;

    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;-><init>()V

    sput-object p0, Landroidx/emoji2/text/flatbuffer/Utf8;->DEFAULT:Landroidx/emoji2/text/flatbuffer/Utf8Safe;

    :cond_0
    return-void
.end method


# virtual methods
.method public final __offset(I)I
    .locals 1

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_size:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->bb:Ljava/nio/ByteBuffer;

    iget p0, p0, Landroidx/emoji2/text/flatbuffer/Table;->vtable_start:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

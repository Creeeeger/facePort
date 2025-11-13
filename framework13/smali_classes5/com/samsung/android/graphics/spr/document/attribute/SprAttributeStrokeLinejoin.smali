.class public Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;
.super Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
.source "SprAttributeStrokeLinejoin.java"


# static fields
.field public static blacklist STROKE_LINEJOIN_TYPE_BEVEL:B

.field public static blacklist STROKE_LINEJOIN_TYPE_MITER:B

.field public static blacklist STROKE_LINEJOIN_TYPE_NONE:B

.field public static blacklist STROKE_LINEJOIN_TYPE_ROUND:B


# instance fields
.field public blacklist linejoin:B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 9
    const/4 v0, 0x0

    sput-byte v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_NONE:B

    .line 11
    const/4 v0, 0x1

    sput-byte v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_MITER:B

    .line 13
    const/4 v0, 0x2

    sput-byte v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_ROUND:B

    .line 15
    const/4 v0, 0x3

    sput-byte v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_BEVEL:B

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 20
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 17
    sget-byte v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_MITER:B

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    .line 21
    return-void
.end method

.method public constructor blacklist <init>(B)V
    .locals 1
    .param p1, "linejoin"    # B

    .line 24
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 17
    sget-byte v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_MITER:B

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    .line 25
    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    .line 26
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 17
    sget-byte v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->STROKE_LINEJOIN_TYPE_MITER:B

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    .line 36
    return-void
.end method

.method public blacklist getSPRSize()I
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStrokeLinejoin;->linejoin:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 41
    return-void
.end method

.class public Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;
.super Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
.source "SprAttributeClipPath.java"


# instance fields
.field public blacklist link:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 12
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;->link:I

    .line 13
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "l"    # I

    .line 16
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;->link:I

    .line 17
    iput p1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;->link:I

    .line 18
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

    .line 21
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;->link:I

    .line 22
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 23
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

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;->link:I

    .line 28
    return-void
.end method

.method public blacklist getSPRSize()I
    .locals 1

    .line 37
    const/4 v0, 0x4

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

    .line 32
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeClipPath;->link:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 33
    return-void
.end method

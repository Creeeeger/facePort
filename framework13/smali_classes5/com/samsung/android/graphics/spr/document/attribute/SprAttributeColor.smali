.class public abstract Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;
.super Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
.source "SprAttributeColor.java"


# static fields
.field public static final blacklist TYPE_ARGB:B = 0x1t

.field public static final blacklist TYPE_LINEAR_GRADIENT:B = 0x3t

.field public static final blacklist TYPE_LINK:B = 0x2t

.field public static final blacklist TYPE_NONE:B = 0x0t

.field public static final blacklist TYPE_RADIAL_GRADIENT:B = 0x4t


# instance fields
.field public blacklist color:I

.field public blacklist colorType:B

.field public blacklist gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;


# direct methods
.method public constructor blacklist <init>(B)V
    .locals 2
    .param p1, "type"    # B

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 23
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 30
    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(BBI)V
    .locals 3
    .param p1, "type"    # B
    .param p2, "colorType"    # B
    .param p3, "value"    # I

    .line 35
    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 23
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 37
    iput-byte p2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 39
    packed-switch p2, :pswitch_data_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected stroke type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :pswitch_0
    iput p3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    .line 46
    goto :goto_0

    .line 41
    :pswitch_1
    nop

    .line 51
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor blacklist <init>(BBLcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;)V
    .locals 3
    .param p1, "type"    # B
    .param p2, "colorType"    # B
    .param p3, "gradient"    # Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 23
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 56
    iput-byte p2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 58
    packed-switch p2, :pswitch_data_0

    .line 68
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected stroke type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_1
    iput-object p3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 65
    goto :goto_0

    .line 60
    :pswitch_2
    nop

    .line 70
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public constructor blacklist <init>(BLcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "type"    # B
    .param p2, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 23
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 74
    invoke-virtual {p0, p2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 75
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 156
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    .line 158
    .local v0, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 162
    :cond_0
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 3
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    .line 81
    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown fill type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :pswitch_0
    new-instance v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;

    invoke-direct {v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 97
    goto :goto_0

    .line 92
    :pswitch_1
    new-instance v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;

    invoke-direct {v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    .line 93
    goto :goto_0

    .line 88
    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    .line 89
    goto :goto_0

    .line 83
    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    .line 84
    nop

    .line 102
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getSPRSize()I
    .locals 4

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "size":I
    iget-byte v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    packed-switch v1, :pswitch_data_0

    .line 149
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown fill type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->getSPRSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 146
    .end local v0    # "size":I
    .local v1, "size":I
    goto :goto_0

    .line 139
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :pswitch_1
    const/4 v1, 0x5

    .line 140
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0

    .line 133
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :pswitch_2
    const/4 v1, 0x0

    .line 134
    .end local v0    # "size":I
    .restart local v1    # "size":I
    nop

    .line 151
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 108
    iget-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    packed-switch v0, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown fill type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 121
    goto :goto_0

    .line 115
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 116
    goto :goto_0

    .line 110
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 111
    nop

    .line 126
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

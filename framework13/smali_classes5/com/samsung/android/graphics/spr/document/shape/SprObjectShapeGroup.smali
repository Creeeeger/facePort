.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapeGroup.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SPRObjectShapeGroup"


# instance fields
.field private blacklist mIsInitialized:Z

.field private final blacklist mIsRoot:Z

.field private blacklist mObjectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Z)V
    .locals 1
    .param p1, "root"    # Z

    .line 26
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    .line 32
    return-void
.end method

.method public constructor blacklist <init>(ZLcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "root"    # Z
    .param p2, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    .line 42
    invoke-virtual {p0, p2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(ZLorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "root"    # Z
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 46
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    .line 51
    iput-boolean p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    .line 53
    invoke-virtual {p0, p2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist appendObject(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 212
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 213
    const-string v0, "SPRObjectShapeGroup"

    const-string v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 217
    return-void
.end method

.method public blacklist appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2
    .param p1, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 205
    const-string v0, "SPRObjectShapeGroup"

    const-string v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public bridge synthetic blacklist clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 262
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    .line 263
    .local v0, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    .line 265
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 266
    .local v2, "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    iget-object v3, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v2    # "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_0

    .line 269
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

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-result-object v0

    return-object v0
.end method

.method public blacklist draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 10
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "sx"    # F
    .param p4, "sy"    # F
    .param p5, "alpha"    # F

    .line 304
    const/16 v0, 0x1f

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 306
    iget v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->alpha:F

    mul-float/2addr v0, p5

    .line 308
    .local v0, "curAlpha":F
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 309
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    .line 312
    :cond_0
    const/4 v1, 0x0

    .line 313
    .local v1, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObjectCount()I

    move-result v7

    move v8, v2

    .end local v2    # "i":I
    .local v7, "n":I
    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 314
    invoke-virtual {p0, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v9

    .line 315
    .end local v1    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .local v9, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    if-eqz v9, :cond_1

    .line 316
    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    .line 313
    :cond_1
    add-int/lit8 v8, v8, 0x1

    move-object v1, v9

    goto :goto_0

    .line 320
    .end local v7    # "n":I
    .end local v8    # "i":I
    .end local v9    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .restart local v1    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 321
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 59
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->finalize()V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    .line 63
    return-void
.end method

.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 11
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 68
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v2

    .line 69
    .local v2, "type":B
    const/4 v3, 0x0

    .line 71
    .local v3, "size":I
    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    const/16 v5, 0x3032

    const/16 v6, 0x3030

    if-lt v4, v6, :cond_0

    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    if-lt v4, v5, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v3

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v7

    .line 77
    .local v7, "readSize":J
    sparse-switch v2, :sswitch_data_0

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown element type:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "SPRObjectShapeGroup"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    int-to-long v9, v3

    invoke-virtual {p1, v9, v10}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    goto :goto_1

    .line 103
    :sswitch_0
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;

    invoke-direct {v9, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_1

    .line 79
    :sswitch_1
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v10, 0x0

    invoke-direct {v9, v10, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_1

    .line 99
    :sswitch_2
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    invoke-direct {v9, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    goto :goto_1

    .line 95
    :sswitch_3
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    invoke-direct {v9, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_1

    .line 91
    :sswitch_4
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;

    invoke-direct {v9, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_1

    .line 87
    :sswitch_5
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    invoke-direct {v9, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    goto :goto_1

    .line 83
    :sswitch_6
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    invoke-direct {v9, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    nop

    .line 112
    :goto_1
    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    if-lt v4, v6, :cond_2

    iget-short v4, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    if-lt v4, v5, :cond_2

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v4

    sub-long/2addr v4, v7

    .line 114
    .end local v7    # "readSize":J
    .local v4, "readSize":J
    int-to-long v6, v3

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 115
    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong skip size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 67
    .end local v2    # "type":B
    .end local v3    # "size":I
    .end local v4    # "readSize":J
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 120
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    if-nez v0, :cond_4

    .line 121
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 123
    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x10 -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist fromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_8

    .line 157
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "name":Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    const-string/jumbo v3, "rotation"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 163
    :cond_1
    const-string/jumbo v3, "pivotX"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 165
    :cond_2
    const-string/jumbo v3, "pivotY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 167
    :cond_3
    const-string/jumbo v3, "translateX"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 169
    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 171
    :cond_5
    const-string/jumbo v3, "scaleX"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 173
    :cond_6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    .line 175
    :cond_7
    const-string v3, "alpha"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .end local v2    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 182
    .local v0, "eventType":I
    :goto_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    .line 183
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x2

    const-string v3, "group"

    if-ne v0, v2, :cond_b

    .line 185
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 186
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 187
    :cond_9
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 188
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    invoke-direct {v3, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 189
    :cond_a
    const-string v2, "clip-path"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_3

    .line 191
    :cond_b
    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    .line 192
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 193
    goto :goto_4

    .line 197
    :cond_c
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 198
    .end local v1    # "tag":Ljava/lang/String;
    goto :goto_2

    .line 200
    :cond_d
    :goto_4
    return-void
.end method

.method public blacklist getObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 2
    .param p1, "index"    # I

    .line 253
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 254
    const-string v0, "SPRObjectShapeGroup"

    const-string v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public blacklist getObjectCount()I
    .locals 2

    .line 245
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 246
    const-string v0, "SPRObjectShapeGroup"

    const-string v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getSPRSize()I
    .locals 4

    .line 142
    const/4 v0, 0x4

    .line 143
    .local v0, "size":I
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    .line 144
    .local v2, "object":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->getSPRSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    add-int/2addr v0, v3

    .line 145
    .end local v2    # "object":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    goto :goto_0

    .line 147
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    if-nez v1, :cond_1

    .line 148
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    :cond_1
    return v0
.end method

.method public blacklist getTotalAttributeCount()I
    .locals 4

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "total":I
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 296
    .local v2, "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getTotalAttributeCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 297
    .end local v2    # "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_0

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public blacklist getTotalElementCount()I
    .locals 4

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "total":I
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 286
    .local v2, "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getTotalElementCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 287
    .end local v2    # "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_0

    .line 289
    :cond_0
    return v0
.end method

.method public blacklist getTotalSegmentCount()I
    .locals 4

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "total":I
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 276
    .local v2, "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getTotalSegmentCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 277
    .end local v2    # "child":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_0

    .line 279
    :cond_0
    return v0
.end method

.method public blacklist preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V
    .locals 11
    .param p1, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;
    .param p2, "strokePaint"    # Landroid/graphics/Paint;
    .param p3, "fillPaint"    # Landroid/graphics/Paint;
    .param p4, "isVisibleStroke"    # Z
    .param p5, "isVisibleFill"    # Z
    .param p6, "shadow"    # Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    .line 326
    move-object v0, p0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObjectCount()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 330
    invoke-virtual {p0, v2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_0

    .line 332
    iget-object v6, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->strokePaint:Landroid/graphics/Paint;

    iget-object v7, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->fillPaint:Landroid/graphics/Paint;

    iget-boolean v8, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->isVisibleStroke:Z

    iget-boolean v9, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->isVisibleFill:Z

    iget-object v10, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    move-object v4, v1

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    .line 329
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_1
    return-void
.end method

.method public blacklist removeObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 2
    .param p1, "index"    # I

    .line 236
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 237
    const-string v0, "SPRObjectShapeGroup"

    const-string v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public blacklist removeObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z
    .locals 4
    .param p1, "object"    # Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 220
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 221
    const-string v0, "SPRObjectShapeGroup"

    const-string v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    return v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 226
    .local v1, "obj":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 227
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v2, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->removeObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    const/4 v0, 0x1

    return v0

    .line 231
    .end local v1    # "obj":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    :cond_1
    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    .line 130
    .local v1, "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 131
    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 132
    invoke-virtual {v1, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 133
    .end local v1    # "object":Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    goto :goto_0

    .line 135
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    if-nez v0, :cond_1

    .line 136
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    .line 138
    :cond_1
    return-void
.end method

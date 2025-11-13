.class public final Landroid/content/res/XmlBlock$Parser;
.super Ljava/lang/Object;
.source "XmlBlock.java"

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XmlBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Parser"
.end annotation


# instance fields
.field private final greylist mBlock:Landroid/content/res/XmlBlock;

.field private greylist-max-o mDecNextDepth:Z

.field private greylist-max-o mDepth:I

.field private greylist-max-o mEventType:I

.field greylist-max-r mParseState:J

.field private greylist-max-o mStarted:Z

.field final synthetic blacklist this$0:Landroid/content/res/XmlBlock;


# direct methods
.method constructor blacklist <init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V
    .locals 1
    .param p1, "this$0"    # Landroid/content/res/XmlBlock;
    .param p2, "parseState"    # J
    .param p4, "block"    # Landroid/content/res/XmlBlock;

    .line 97
    iput-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    .line 509
    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 510
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 511
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 98
    iput-wide p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    .line 99
    iput-object p4, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    .line 100
    invoke-static {p4}, Landroid/content/res/XmlBlock;->-$$Nest$fgetmOpenCount(Landroid/content/res/XmlBlock;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p4, v0}, Landroid/content/res/XmlBlock;->-$$Nest$fputmOpenCount(Landroid/content/res/XmlBlock;I)V

    .line 101
    return-void
.end method

.method private blacklist getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 475
    if-eqz p1, :cond_0

    .line 482
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Retrieving a string from the StringPool of an XmlBlock should never fail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 6

    .line 486
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    monitor-enter v0

    .line 487
    :try_start_0
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 488
    invoke-static {v1, v2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeDestroyParseState(J)V

    .line 489
    iput-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    .line 490
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    invoke-static {v1}, Landroid/content/res/XmlBlock;->-$$Nest$mdecOpenCountLocked(Landroid/content/res/XmlBlock;)V

    .line 492
    :cond_0
    monitor-exit v0

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "defineEntityReplacementText() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 496
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    .line 497
    return-void
.end method

.method public whitelist getAttributeBooleanValue(IZ)Z
    .locals 3
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # Z

    .line 406
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 409
    .local v0, "t":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1

    .line 411
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 413
    :cond_1
    return p2
.end method

.method public whitelist getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 354
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 355
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 356
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeBooleanValue(IZ)Z

    move-result v1

    return v1

    .line 358
    :cond_0
    return p3
.end method

.method public whitelist test-api getAttributeCount()I
    .locals 2

    .line 227
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeCount(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public whitelist getAttributeFloatValue(IF)F
    .locals 3
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # F

    .line 445
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 448
    .local v0, "t":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 449
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    .line 450
    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v1

    .line 449
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 452
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "not a float!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .line 387
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 388
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 389
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeFloatValue(IF)F

    move-result v1

    return v1

    .line 391
    :cond_0
    return p3
.end method

.method public whitelist getAttributeIntValue(II)I
    .locals 3
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    .line 425
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 428
    .local v0, "t":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 430
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v1

    return v1

    .line 432
    :cond_0
    return p2
.end method

.method public whitelist getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 370
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 371
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 372
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeIntValue(II)I

    move-result v1

    return v1

    .line 374
    :cond_0
    return p3
.end method

.method public whitelist getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 3
    .param p1, "idx"    # I
    .param p2, "options"    # [Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 396
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 397
    .local v0, "t":I
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v1

    .line 398
    .local v1, "v":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 399
    iget-object v2, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v2, v2, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    .line 400
    invoke-virtual {v2, v1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 399
    invoke-static {v2, p2, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 402
    :cond_0
    return v1
.end method

.method public whitelist getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .line 346
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 347
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 348
    invoke-virtual {p0, v0, p3, p4}, Landroid/content/res/XmlBlock$Parser;->getAttributeListValue(I[Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 350
    :cond_0
    return p4
.end method

.method public whitelist test-api getAttributeName(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 214
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeName(JI)I

    move-result v0

    .line 216
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 217
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getAttributeNameResource(I)I
    .locals 2
    .param p1, "index"    # I

    .line 341
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeResource(JI)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getAttributeNamespace(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 206
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeNamespace(JI)I

    move-result v0

    .line 208
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 209
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, ""

    return-object v1

    .line 210
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 220
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getAttributePrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAttributeResourceValue(II)I
    .locals 3
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    .line 416
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 419
    .local v0, "t":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 420
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v1

    return v1

    .line 422
    :cond_0
    return p2
.end method

.method public whitelist getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 362
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 363
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 364
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(II)I

    move-result v1

    return v1

    .line 366
    :cond_0
    return p3
.end method

.method public whitelist test-api getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 245
    const-string v0, "CDATA"

    return-object v0
.end method

.method public whitelist getAttributeUnsignedIntValue(II)I
    .locals 3
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    .line 435
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v0

    .line 438
    .local v0, "t":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 440
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v1

    return v1

    .line 442
    :cond_0
    return p2
.end method

.method public whitelist getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 379
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 380
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 381
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeUnsignedIntValue(II)I

    move-result v1

    return v1

    .line 383
    :cond_0
    return p3
.end method

.method public whitelist test-api getAttributeValue(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .line 231
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeStringValue(JI)I

    move-result v0

    .line 233
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 236
    :cond_0
    iget-wide v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeDataType(JI)I

    move-result v1

    .line 237
    .local v1, "t":I
    if-eqz v1, :cond_1

    .line 241
    iget-wide v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v2, v3, p1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeData(JI)I

    move-result v2

    .line 242
    .local v2, "v":I
    invoke-static {v1, v2}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 238
    .end local v2    # "v":I
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 254
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 255
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 262
    invoke-virtual {p0, v0}, Landroid/content/res/XmlBlock$Parser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 264
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getClassAttribute()Ljava/lang/String;
    .locals 2

    .line 461
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetClassAttribute(J)I

    move-result v0

    .line 462
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public whitelist test-api getColumnNumber()I
    .locals 1

    .line 160
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api getDepth()I
    .locals 1

    .line 163
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    return v0
.end method

.method public whitelist test-api getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 174
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    return v0
.end method

.method public whitelist test-api getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 118
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 119
    return v1

    .line 121
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    return v1

    .line 124
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIdAttribute()Ljava/lang/String;
    .locals 2

    .line 456
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetIdAttribute(J)I

    move-result v0

    .line 457
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public whitelist getIdAttributeResourceValue(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    .line 467
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getInputEncoding()Ljava/lang/String;
    .locals 1

    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getLineNumber()I
    .locals 2

    .line 171
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetLineNumber(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .locals 2

    .line 201
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeGetName(J)I

    move-result v0

    .line 202
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public whitelist test-api getNamespace()Ljava/lang/String;
    .locals 2

    .line 196
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetNamespace(J)I

    move-result v0

    .line 197
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method public whitelist test-api getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getNamespace() not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getNamespaceCount(I)I
    .locals 2
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 151
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceCount() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 142
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespacePrefix() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 157
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceUri() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final greylist-max-o getPooledString(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I

    .line 501
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v0, v0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPositionDescription()Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binary XML file line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getPrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSourceResId()I
    .locals 2

    .line 105
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetSourceResId(J)I

    move-result v0

    return v0
.end method

.method public whitelist getStyleAttribute()I
    .locals 2

    .line 471
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetStyleAttribute(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getText()Ljava/lang/String;
    .locals 2

    .line 167
    iget-wide v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->-$$Nest$smnativeGetText(J)I

    move-result v0

    .line 168
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/res/XmlBlock$Parser;->getSequenceString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public whitelist test-api getTextCharacters([I)[C
    .locals 5
    .param p1, "holderForStartAndLength"    # [I

    .line 184
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "txt":Ljava/lang/String;
    const/4 v1, 0x0

    .line 186
    .local v1, "chars":[C
    if-eqz v0, :cond_0

    .line 187
    const/4 v2, 0x0

    aput v2, p1, v2

    .line 188
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    aput v4, p1, v3

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    new-array v1, v3, [C

    .line 190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 192
    :cond_0
    return-object v1
.end method

.method public whitelist test-api isAttributeDefault(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isEmptyElementTag()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isWhitespace()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api next()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 268
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    .line 269
    return v1

    .line 271
    :cond_0
    iget-wide v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 272
    return v2

    .line 274
    :cond_1
    invoke-static {v3, v4}, Landroid/content/res/XmlBlock;->nativeNext(J)I

    move-result v0

    .line 275
    .local v0, "ev":I
    iget-boolean v3, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    if-eqz v3, :cond_2

    .line 276
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 277
    iput-boolean v1, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 279
    :cond_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 284
    :pswitch_0
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    goto :goto_0

    .line 281
    :pswitch_1
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 282
    nop

    .line 287
    :goto_0
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 288
    if-ne v0, v2, :cond_3

    .line 293
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    .line 295
    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist test-api nextTag()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 329
    .local v0, "eventType":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 332
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": expected start or end tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 337
    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist test-api nextText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 309
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 310
    .local v0, "eventType":I
    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v0, v2, :cond_1

    .line 311
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 313
    if-ne v0, v3, :cond_0

    .line 318
    return-object v2

    .line 314
    :cond_0
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": event TEXT it must be immediately followed by END_TAG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 319
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    if-ne v0, v3, :cond_2

    .line 320
    const-string v1, ""

    return-object v1

    .line 322
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": parser must be on START_TAG or TEXT to read text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 305
    .end local v0    # "eventType":I
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": parser must be on START_TAG to read next text"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist test-api nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    return v0
.end method

.method public whitelist test-api require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_0

    .line 299
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    .line 300
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    :cond_1
    return-void

    .line 301
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/content/res/XmlBlock$Parser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 109
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 113
    return-void

    .line 115
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "inputEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 136
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setInput(Ljava/io/Reader;)V
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 133
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 127
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setProperty() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

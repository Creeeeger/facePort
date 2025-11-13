.class public final Lcom/google/common/base/Splitter$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public limit:I

.field public next:Ljava/lang/Object;

.field public offset:I

.field public final omitEmptyStrings:Z

.field public state:Lcom/google/common/base/AbstractIterator$State;

.field public final synthetic this$0:Lcom/google/common/base/Splitter$1;

.field public final toSplit:Ljava/lang/CharSequence;

.field public final trimmer:Lcom/google/common/base/CharMatcher;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter$1;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/Splitter$1$1;->this$0:Lcom/google/common/base/Splitter$1;

    sget-object p1, Lcom/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object p1, p0, Lcom/google/common/base/Splitter$1$1;->state:Lcom/google/common/base/AbstractIterator$State;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    iget-object v0, p2, Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;

    iput-object v0, p0, Lcom/google/common/base/Splitter$1$1;->trimmer:Lcom/google/common/base/CharMatcher;

    iput-boolean p1, p0, Lcom/google/common/base/Splitter$1$1;->omitEmptyStrings:Z

    iget p1, p2, Lcom/google/common/base/Splitter;->limit:I

    iput p1, p0, Lcom/google/common/base/Splitter$1$1;->limit:I

    iput-object p3, p0, Lcom/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 9

    iget-object v0, p0, Lcom/google/common/base/Splitter$1$1;->state:Lcom/google/common/base/AbstractIterator$State;

    sget-object v1, Lcom/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/common/base/AbstractIterator$State;

    if-eq v0, v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_a

    iput-object v1, p0, Lcom/google/common/base/Splitter$1$1;->state:Lcom/google/common/base/AbstractIterator$State;

    iget v0, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    sget-object v3, Lcom/google/common/base/AbstractIterator$State;->DONE:Lcom/google/common/base/AbstractIterator$State;

    const/4 v5, -0x1

    if-eq v1, v5, :cond_8

    iget-object v6, p0, Lcom/google/common/base/Splitter$1$1;->this$0:Lcom/google/common/base/Splitter$1;

    iget-object v6, v6, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Lcom/google/common/base/CharMatcher;

    iget-object v7, p0, Lcom/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v5, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    :goto_1
    iget v6, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    if-ne v6, v0, :cond_2

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    iget-object v1, p0, Lcom/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v6, v1, :cond_0

    iput v5, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v0, v1, :cond_3

    iget-object v6, p0, Lcom/google/common/base/Splitter$1$1;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v7, p0, Lcom/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-le v1, v0, :cond_4

    iget-object v6, p0, Lcom/google/common/base/Splitter$1$1;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v7, p0, Lcom/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v8, v1, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    iget-boolean v6, p0, Lcom/google/common/base/Splitter$1$1;->omitEmptyStrings:Z

    if-eqz v6, :cond_5

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    goto :goto_0

    :cond_5
    iget v6, p0, Lcom/google/common/base/Splitter$1$1;->limit:I

    if-ne v6, v2, :cond_6

    iget-object v1, p0, Lcom/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v5, p0, Lcom/google/common/base/Splitter$1$1;->offset:I

    :goto_4
    if-le v1, v0, :cond_7

    iget-object v5, p0, Lcom/google/common/base/Splitter$1$1;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v6, p0, Lcom/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v7, v1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    sub-int/2addr v6, v2

    iput v6, p0, Lcom/google/common/base/Splitter$1$1;->limit:I

    :cond_7
    iget-object v5, p0, Lcom/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v5, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    iput-object v3, p0, Lcom/google/common/base/Splitter$1$1;->state:Lcom/google/common/base/AbstractIterator$State;

    const/4 v0, 0x0

    :goto_5
    iput-object v0, p0, Lcom/google/common/base/Splitter$1$1;->next:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/base/Splitter$1$1;->state:Lcom/google/common/base/AbstractIterator$State;

    if-eq v0, v3, :cond_9

    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/Splitter$1$1;->state:Lcom/google/common/base/AbstractIterator$State;

    goto :goto_6

    :cond_9
    move v2, v4

    :goto_6
    return v2

    :cond_a
    return v4

    :cond_b
    return v2

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/base/Splitter$1$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/Splitter$1$1;->state:Lcom/google/common/base/AbstractIterator$State;

    iget-object v0, p0, Lcom/google/common/base/Splitter$1$1;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/base/Splitter$1$1;->next:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

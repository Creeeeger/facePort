.class Landroid/widget/SpellChecker$SpellParser;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellParser"
.end annotation


# instance fields
.field private blacklist mForceCheckWhenEditingWord:Z

.field private greylist-max-o mRange:Ljava/lang/Object;

.field final synthetic blacklist this$0:Landroid/widget/SpellChecker;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/SpellChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$SpellParser-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method private greylist-max-o removeRangeSpan(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method private greylist-max-o removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I[TT;)V"
        }
    .end annotation

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-le v3, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-ge v4, p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private greylist-max-o setRangeSpan(Landroid/text/Editable;II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    const/16 v1, 0x21

    invoke-interface {p1, v0, p2, p3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public greylist-max-o isFinished()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o parse()V
    .locals 14

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v3, v0, v1, v2}, Landroid/widget/SpellChecker;->-$$Nest$mdetectSentenceBoundary(Landroid/widget/SpellChecker;Ljava/lang/CharSequence;II)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/SpellChecker$SpellParser;->stop()V

    return-void

    :cond_0
    const/4 v6, 0x0

    if-ge v5, v2, :cond_1

    const/4 v6, 0x1

    :cond_1
    move v7, v5

    move v8, v4

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_0
    iget-object v11, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v11}, Landroid/widget/SpellChecker;->-$$Nest$fgetmLength(Landroid/widget/SpellChecker;)I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v11, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v11}, Landroid/widget/SpellChecker;->-$$Nest$fgetmSpellCheckSpans(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;

    move-result-object v11

    aget-object v11, v11, v10

    iget-object v12, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v12}, Landroid/widget/SpellChecker;->-$$Nest$fgetmIds(Landroid/widget/SpellChecker;)[I

    move-result-object v12

    aget v12, v12, v10

    if-ltz v12, :cond_5

    invoke-virtual {v11}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v11}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v0, v11}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    if-lt v13, v8, :cond_5

    if-ge v7, v12, :cond_3

    goto :goto_1

    :cond_3
    if-gt v12, v8, :cond_4

    if-gt v7, v13, :cond_4

    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    invoke-interface {v0, v11}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_5
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    if-gt v7, v8, :cond_7

    invoke-static {}, Landroid/widget/SpellChecker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Trying to spellcheck invalid region, from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    if-eqz v9, :cond_8

    iget-object v10, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v10, v0, v8, v7}, Landroid/widget/SpellChecker;->-$$Nest$maddSpellCheckSpan(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    :cond_8
    :goto_3
    move v4, v7

    if-eqz v6, :cond_9

    const/4 v8, -0x1

    if-eq v4, v8, :cond_9

    if-gt v4, v2, :cond_9

    invoke-direct {p0, v0, v4, v2}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    goto :goto_4

    :cond_9
    invoke-direct {p0, v0}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    :goto_4
    iget-object v8, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    iget-boolean v9, p0, Landroid/widget/SpellChecker$SpellParser;->mForceCheckWhenEditingWord:Z

    invoke-static {v8, v9}, Landroid/widget/SpellChecker;->-$$Nest$mspellCheck(Landroid/widget/SpellChecker;Z)V

    return-void
.end method

.method public blacklist parse(IIZ)V
    .locals 4

    iput-boolean p3, p0, Landroid/widget/SpellChecker$SpellParser;->mForceCheckWhenEditingWord:Z

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-le p2, v0, :cond_0

    invoke-static {}, Landroid/widget/SpellChecker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse invalid region, from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    if-le v1, p1, :cond_1

    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v2}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Editable;

    invoke-direct {p0, v2, p1, v1}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    invoke-virtual {p0}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    :cond_1
    return-void
.end method

.method public greylist-max-o stop()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-$$Nest$fgetmTextView(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SpellChecker$SpellParser;->mForceCheckWhenEditingWord:Z

    return-void
.end method

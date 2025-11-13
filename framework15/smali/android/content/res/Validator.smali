.class public Landroid/content/res/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# instance fields
.field private final blacklist mElements:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/content/res/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    return-void
.end method

.method private blacklist cleanUp()V
    .locals 1

    nop

    :goto_0
    iget-object v0, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Element;

    invoke-virtual {v0}, Landroid/content/res/Element;->recycle()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist validateComponentMetadata(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Element;

    iget-object v1, v0, Landroid/content/res/Element;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "meta-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/res/Element;

    iget-object v1, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Element;

    invoke-virtual {v1, p1}, Landroid/content/res/Element;->validateComponentMetadata(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist validate(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    iget-object v2, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/Element;->shouldValidate(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/content/res/Element;->obtain(Ljava/lang/String;)Landroid/content/res/Element;

    move-result-object v3

    iget-object v4, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Element;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroid/content/res/Element;->hasChild(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_0
    invoke-virtual {v4, v3}, Landroid/content/res/Element;->seen(Landroid/content/res/Element;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-direct {p0}, Landroid/content/res/Validator;->cleanUp()V

    throw v5

    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_2
    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Element;

    invoke-virtual {v2}, Landroid/content/res/Element;->recycle()V

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_5

    invoke-direct {p0}, Landroid/content/res/Validator;->cleanUp()V

    :cond_5
    :goto_1
    return-void
.end method

.method public blacklist validateResStrAttr(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/CharSequence;)V
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    iget-object v1, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Element;

    invoke-virtual {v0, p2, p3}, Landroid/content/res/Element;->validateResStrAttr(ILjava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/Validator;->validateComponentMetadata(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public blacklist validateStrAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    iget-object v1, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/content/res/Validator;->mElements:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Element;

    invoke-virtual {v0, p2, p3}, Landroid/content/res/Element;->validateStrAttr(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Landroid/content/res/Validator;->validateComponentMetadata(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

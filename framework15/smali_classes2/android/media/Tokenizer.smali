.class Landroid/media/Tokenizer;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Tokenizer$DataTokenizer;,
        Landroid/media/Tokenizer$TokenizerPhase;,
        Landroid/media/Tokenizer$TagTokenizer;,
        Landroid/media/Tokenizer$OnTokenListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Tokenizer"


# instance fields
.field private blacklist mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

.field private blacklist mHandledLen:I

.field private blacklist mLine:Ljava/lang/String;

.field private blacklist mListener:Landroid/media/Tokenizer$OnTokenListener;

.field private blacklist mPhase:Landroid/media/Tokenizer$TokenizerPhase;

.field private blacklist mTagTokenizer:Landroid/media/Tokenizer$TokenizerPhase;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataTokenizer(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;
    .locals 0

    iget-object p0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandledLen(Landroid/media/Tokenizer;)I
    .locals 0

    iget p0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLine(Landroid/media/Tokenizer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;
    .locals 0

    iget-object p0, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTagTokenizer(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;
    .locals 0

    iget-object p0, p0, Landroid/media/Tokenizer;->mTagTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHandledLen(Landroid/media/Tokenizer;I)V
    .locals 0

    iput p1, p0, Landroid/media/Tokenizer;->mHandledLen:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhase(Landroid/media/Tokenizer;Landroid/media/Tokenizer$TokenizerPhase;)V
    .locals 0

    iput-object p1, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/Tokenizer$OnTokenListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/Tokenizer$DataTokenizer;

    invoke-direct {v0, p0}, Landroid/media/Tokenizer$DataTokenizer;-><init>(Landroid/media/Tokenizer;)V

    iput-object v0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    new-instance v0, Landroid/media/Tokenizer$TagTokenizer;

    invoke-direct {v0, p0}, Landroid/media/Tokenizer$TagTokenizer;-><init>(Landroid/media/Tokenizer;)V

    iput-object v0, p0, Landroid/media/Tokenizer;->mTagTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    invoke-virtual {p0}, Landroid/media/Tokenizer;->reset()V

    iput-object p1, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    return-void
.end method


# virtual methods
.method blacklist reset()V
    .locals 1

    iget-object v0, p0, Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;

    invoke-interface {v0}, Landroid/media/Tokenizer$TokenizerPhase;->start()Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    return-void
.end method

.method blacklist tokenize(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    iput-object p1, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    :goto_0
    iget v0, p0, Landroid/media/Tokenizer;->mHandledLen:I

    iget-object v1, p0, Landroid/media/Tokenizer;->mLine:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    invoke-interface {v0}, Landroid/media/Tokenizer$TokenizerPhase;->tokenize()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;

    instance-of v0, v0, Landroid/media/Tokenizer$TagTokenizer;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;

    invoke-interface {v0}, Landroid/media/Tokenizer$OnTokenListener;->onLineEnd()V

    :cond_1
    return-void
.end method

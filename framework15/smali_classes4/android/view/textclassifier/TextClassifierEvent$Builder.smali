.class public abstract Landroid/view/textclassifier/TextClassifierEvent$Builder;
.super Ljava/lang/Object;
.source "TextClassifierEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/textclassifier/TextClassifierEvent$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mActionIndices:[I

.field private blacklist mEntityTypes:[Ljava/lang/String;

.field private final blacklist mEventCategory:I

.field private blacklist mEventContext:Landroid/view/textclassifier/TextClassificationContext;

.field private blacklist mEventIndex:I

.field private final blacklist mEventType:I

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mLocale:Landroid/icu/util/ULocale;

.field private blacklist mModelName:Ljava/lang/String;

.field private blacklist mResultId:Ljava/lang/String;

.field private blacklist mScores:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActionIndices(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[I
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mActionIndices:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEntityTypes(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEntityTypes:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventCategory(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventCategory:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventContext(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/view/textclassifier/TextClassificationContext;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventIndex(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventType(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocale(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/icu/util/ULocale;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mLocale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmModelName(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mModelName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultId(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mResultId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScores(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[F
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mScores:[F

    return-object p0
.end method

.method private constructor blacklist <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEntityTypes:[Ljava/lang/String;

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mScores:[F

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mActionIndices:[I

    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventCategory:I

    iput p2, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/view/textclassifier/TextClassifierEvent$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/textclassifier/TextClassifierEvent$Builder;-><init>(II)V

    return-void
.end method


# virtual methods
.method abstract blacklist self()Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public varargs whitelist setActionIndices([I)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TT;"
        }
    .end annotation

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mActionIndices:[I

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mActionIndices:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist setEntityTypes([Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEntityTypes:[Ljava/lang/String;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEntityTypes:[Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setEventContext(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassificationContext;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setEventIndex(I)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mEventIndex:I

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setLocale(Landroid/icu/util/ULocale;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setModelName(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mModelName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setResultId(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mResultId:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist setScores([F)Landroid/view/textclassifier/TextClassifierEvent$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)TT;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mScores:[F

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent$Builder;->mScores:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->self()Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v0

    return-object v0
.end method

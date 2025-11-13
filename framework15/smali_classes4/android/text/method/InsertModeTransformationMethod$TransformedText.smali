.class public Landroid/text/method/InsertModeTransformationMethod$TransformedText;
.super Ljava/lang/Object;
.source "InsertModeTransformationMethod.java"

# interfaces
.implements Landroid/text/method/OffsetMapping;
.implements Landroid/text/Spanned;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/InsertModeTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransformedText"
.end annotation


# instance fields
.field private final blacklist mOriginal:Ljava/lang/CharSequence;

.field private final blacklist mPlaceholder:Ljava/lang/CharSequence;

.field private final blacklist mSpannedOriginal:Landroid/text/Spanned;

.field private final blacklist mSpannedPlaceholder:Landroid/text/Spanned;

.field final synthetic blacklist this$0:Landroid/text/method/InsertModeTransformationMethod;


# direct methods
.method public static synthetic blacklist $r8$lambda$phgDzRUXrz8jvNiuhYcA1J1pMBE(Landroid/text/method/InsertModeTransformationMethod$TransformedText;IILjava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->lambda$getSpans$1(IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/text/method/InsertModeTransformationMethod;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    instance-of v0, p2, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    :goto_0
    iput-object p3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    instance-of v0, p3, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    :goto_1
    return-void
.end method

.method static synthetic blacklist lambda$getSpans$0(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private synthetic blacklist lambda$getSpans$1(IILjava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$smintersect(IIII)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .locals 3

    invoke-virtual {p0}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public blacklist getHighlightEnd()I
    .locals 2

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getHighlightStart()I
    .locals 1

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmStart(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpanEnd(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-gt v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    :cond_1
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSpanFlags(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSpanStart(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    invoke-interface {v1, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    if-ge p2, p1, :cond_0

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    if-eqz v1, :cond_1

    nop

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->transformedToOriginal(II)I

    move-result v2

    nop

    invoke-virtual {p0, p2, v1}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->transformedToOriginal(II)I

    move-result v1

    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedOriginal:Landroid/text/Spanned;

    invoke-interface {v3, v2, v1, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    new-instance v4, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, p2}, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda1;-><init>(Landroid/text/method/InsertModeTransformationMethod$TransformedText;II)V

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/ArrayUtils;->filter([Ljava/lang/Object;Ljava/util/function/IntFunction;Ljava/util/function/Predicate;)[Ljava/lang/Object;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v3}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v3

    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p1, p2, v2, v3}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$smintersect(IIII)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    sub-int v2, p1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v3}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v3

    sub-int v3, p2, v3

    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mSpannedPlaceholder:Landroid/text/Spanned;

    invoke-interface {v4, v2, v3, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    :cond_2
    filled-new-array {v0, v1}, [[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/android/internal/util/ArrayUtils;->concat(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api length()I
    .locals 2

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist nextSpanTransition(IILjava/lang/Class;)I
    .locals 4

    if-gt p2, p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ge p1, v2, :cond_1

    if-ge v2, p2, :cond_1

    move p2, v2

    :cond_1
    if-ge p1, v3, :cond_2

    if-ge v3, p2, :cond_2

    move p2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method public blacklist originalToTransformed(II)I
    .locals 3

    if-gez p1, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string/jumbo v1, "offset"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    return p1

    :cond_1
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    if-ge p1, v0, :cond_2

    return p1

    :cond_2
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public blacklist originalToTransformed(Landroid/text/method/OffsetMapping$TextUpdate;)V
    .locals 2

    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    iget v1, p1, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    iget v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->after:I

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/method/OffsetMapping$TextUpdate;->after:I

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .locals 10

    if-lt p2, p1, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-ne p1, p2, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v1}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v3}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v3

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iget-object v5, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v5}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v5

    sub-int v5, p2, v5

    invoke-static {v5, v4, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    sub-int v6, p1, v0

    iget-object v7, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v7}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v7, p2, v0

    iget-object v8, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v8}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v9, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v4, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v8, v9

    iget-object v4, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v4, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v8}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v2}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v2

    iget-object v3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mOriginal:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist transformedToOriginal(II)I
    .locals 3

    if-gez p1, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->length()I

    move-result v0

    const-string/jumbo v1, "offset"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    if-ge p1, v0, :cond_1

    return p1

    :cond_1
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    iget-object v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->this$0:Landroid/text/method/InsertModeTransformationMethod;

    invoke-static {v0}, Landroid/text/method/InsertModeTransformationMethod;->-$$Nest$fgetmEnd(Landroid/text/method/InsertModeTransformationMethod;)I

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->mPlaceholder:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

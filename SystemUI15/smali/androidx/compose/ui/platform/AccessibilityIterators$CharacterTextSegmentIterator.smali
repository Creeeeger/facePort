.class public final Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;
.super Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;

.field public static instance:Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;


# instance fields
.field public final impl:Ljava/text/BreakIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->Companion:Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    invoke-static {p1}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Locale;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public final following(I)[I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->text:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    if-lt p1, v0, :cond_2

    return-object v1

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    if-nez v0, :cond_5

    move-object v0, v1

    :cond_5
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result p1

    if-ne p1, v2, :cond_3

    return-object v1

    :cond_6
    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    if-nez v0, :cond_7

    move-object v0, v1

    :cond_7
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    if-ne v0, v2, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->getRange(II)[I

    move-result-object p0

    return-object p0
.end method

.method public final preceding(I)[I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->text:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    return-object v1

    :cond_1
    if-gtz p1, :cond_2

    return-object v1

    :cond_2
    if-le p1, v0, :cond_3

    move p1, v0

    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    if-nez v0, :cond_5

    move-object v0, v1

    :cond_5
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p1

    if-ne p1, v2, :cond_3

    return-object v1

    :cond_6
    iget-object v0, p0, Landroidx/compose/ui/platform/AccessibilityIterators$CharacterTextSegmentIterator;->impl:Ljava/text/BreakIterator;

    if-nez v0, :cond_7

    move-object v0, v1

    :cond_7
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    if-ne v0, v2, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0, v0, p1}, Landroidx/compose/ui/platform/AccessibilityIterators$AbstractTextSegmentIterator;->getRange(II)[I

    move-result-object p0

    return-object p0
.end method

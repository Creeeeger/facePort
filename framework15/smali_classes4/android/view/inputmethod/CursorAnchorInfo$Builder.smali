.class public final Landroid/view/inputmethod/CursorAnchorInfo$Builder;
.super Ljava/lang/Object;
.source "CursorAnchorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/CursorAnchorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist LINE_BOUNDS_INITIAL_SIZE:I = 0x4


# instance fields
.field private greylist-max-o mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

.field private greylist-max-o mComposingText:Ljava/lang/CharSequence;

.field private greylist-max-o mComposingTextStart:I

.field private blacklist mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

.field private greylist-max-o mInsertionMarkerBaseline:F

.field private greylist-max-o mInsertionMarkerBottom:F

.field private greylist-max-o mInsertionMarkerFlags:I

.field private greylist-max-o mInsertionMarkerHorizontal:F

.field private greylist-max-o mInsertionMarkerTop:F

.field private greylist-max-o mMatrixInitialized:Z

.field private greylist-max-o mMatrixValues:[F

.field private greylist-max-o mSelectionEnd:I

.field private greylist-max-o mSelectionStart:I

.field private blacklist mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

.field private blacklist mVisibleLineBounds:[F

.field private blacklist mVisibleLineBoundsCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCharacterBoundsArrayBuilder(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmComposingText(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmComposingTextStart(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEditorBoundsInfo(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/EditorBoundsInfo;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerBaseline(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerBottom(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerFlags(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerHorizontal(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsertionMarkerTop(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMatrixInitialized(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMatrixValues(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)[F
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionEnd(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionStart(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextAppearanceInfo(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/TextAppearanceInfo;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisibleLineBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)[F
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisibleLineBoundsCount(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    return p0
.end method

.method public constructor whitelist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    iput-boolean v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    return-void
.end method


# virtual methods
.method public whitelist addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 8

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    invoke-direct {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->append(IFFFFI)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must not be a negative integer."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addVisibleLineBounds(FFFF)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 3

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    array-length v0, v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    add-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    aput p1, v0, v1

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    aput p2, v0, v1

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    aput p3, v0, v1

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    aput p4, v0, v1

    return-object p0
.end method

.method public whitelist build()Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 4

    iget-boolean v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    invoke-virtual {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBounds:[F

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Coordinate transformation matrix is required when positional parameters are specified."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_2
    invoke-static {p0}, Landroid/view/inputmethod/CursorAnchorInfo;->-$$Nest$smcreate(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist clearVisibleLineBounds()Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mVisibleLineBoundsCount:I

    return-object p0
.end method

.method public whitelist reset()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    iput-boolean v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mCharacterBoundsArrayBuilder:Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    invoke-virtual {v1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->reset()V

    :cond_0
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->clearVisibleLineBounds()Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    return-void
.end method

.method public whitelist setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 1

    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingTextStart:I

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mComposingText:Ljava/lang/CharSequence;

    :goto_0
    return-object p0
.end method

.method public whitelist setEditorBoundsInfo(Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    return-object p0
.end method

.method public whitelist setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerHorizontal:F

    iput p2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerTop:F

    iput p3, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBaseline:F

    iput p4, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerBottom:F

    iput p5, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mInsertionMarkerFlags:I

    return-object p0
.end method

.method public whitelist setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    if-nez v0, :cond_0

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mMatrixInitialized:Z

    return-object p0
.end method

.method public whitelist setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionStart:I

    iput p2, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mSelectionEnd:I

    return-object p0
.end method

.method public whitelist setTextAppearanceInfo(Landroid/view/inputmethod/TextAppearanceInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    return-object p0
.end method

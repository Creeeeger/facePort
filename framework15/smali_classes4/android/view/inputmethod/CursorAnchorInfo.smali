.class public final Landroid/view/inputmethod/CursorAnchorInfo;
.super Ljava/lang/Object;
.source "CursorAnchorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/CursorAnchorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_HAS_INVISIBLE_REGION:I = 0x2

.field public static final whitelist FLAG_HAS_VISIBLE_REGION:I = 0x1

.field public static final whitelist FLAG_IS_RTL:I = 0x4


# instance fields
.field private final greylist-max-o mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

.field private final greylist-max-o mComposingText:Ljava/lang/CharSequence;

.field private final greylist-max-o mComposingTextStart:I

.field private final blacklist mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

.field private final greylist-max-o mHashCode:I

.field private final greylist-max-o mInsertionMarkerBaseline:F

.field private final greylist-max-o mInsertionMarkerBottom:F

.field private final greylist-max-o mInsertionMarkerFlags:I

.field private final greylist-max-o mInsertionMarkerHorizontal:F

.field private final greylist-max-o mInsertionMarkerTop:F

.field private final greylist-max-o mMatrixValues:[F

.field private final greylist-max-o mSelectionEnd:I

.field private final greylist-max-o mSelectionStart:I

.field private final blacklist mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

.field private final blacklist mVisibleLineBounds:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreate(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 0

    invoke-static {p0}, Landroid/view/inputmethod/CursorAnchorInfo;->create(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIILjava/lang/CharSequence;IFFFFLandroid/view/inputmethod/SparseRectFArray;Landroid/view/inputmethod/EditorBoundsInfo;[F[FLandroid/view/inputmethod/TextAppearanceInfo;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    move/from16 v2, p2

    iput v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    move/from16 v3, p3

    iput v3, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    move/from16 v5, p5

    iput v5, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    move/from16 v6, p6

    iput v6, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    move/from16 v7, p7

    iput v7, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    move/from16 v8, p8

    iput v8, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    move/from16 v9, p9

    iput v9, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    iget-object v15, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-static {v15}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v15

    mul-int/lit8 v15, v15, 0x1f

    iget-object v1, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v15, v1

    iput v15, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    sget-object v0, Landroid/view/inputmethod/SparseRectFArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/SparseRectFArray;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    sget-object v0, Landroid/view/inputmethod/EditorBoundsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/EditorBoundsInfo;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    sget-object v0, Landroid/view/inputmethod/TextAppearanceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/TextAppearanceInfo;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    return-void
.end method

.method private static greylist-max-o areSameFloatImpl(FF)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    cmpl-float v0, p0, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static blacklist computeMatrixValues(Landroid/graphics/Matrix;Landroid/view/inputmethod/CursorAnchorInfo;)[F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p1, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    const/16 v1, 0x9

    new-array v1, v1, [F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    return-object v1
.end method

.method private static blacklist create(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 18

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmCharacterBoundsArrayBuilder(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmCharacterBoundsArrayBuilder(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->build()Landroid/view/inputmethod/SparseRectFArray;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v11, v0

    :goto_0
    nop

    const/16 v0, 0x9

    new-array v15, v0, [F

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmMatrixInitialized(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmMatrixValues(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v15, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v0, v15}, Landroid/graphics/Matrix;->getValues([F)V

    :goto_1
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmSelectionStart(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v2

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmSelectionEnd(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v3

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmComposingTextStart(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v4

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmComposingText(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmInsertionMarkerFlags(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v6

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmInsertionMarkerHorizontal(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v7

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmInsertionMarkerTop(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v8

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmInsertionMarkerBaseline(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v9

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmInsertionMarkerBottom(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v10

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmEditorBoundsInfo(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmVisibleLineBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)[F

    move-result-object v1

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmVisibleLineBoundsCount(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v13

    invoke-static {v1, v13}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v14

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmTextAppearanceInfo(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/TextAppearanceInfo;

    move-result-object v16

    move-object v1, v0

    move-object v13, v15

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Landroid/view/inputmethod/CursorAnchorInfo;-><init>(IIILjava/lang/CharSequence;IFFFFLandroid/view/inputmethod/SparseRectFArray;Landroid/view/inputmethod/EditorBoundsInfo;[F[FLandroid/view/inputmethod/TextAppearanceInfo;)V

    return-object v0
.end method

.method public static blacklist createForAdditionalParentMatrix(Landroid/view/inputmethod/CursorAnchorInfo;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 18

    move-object/from16 v0, p0

    new-instance v16, Landroid/view/inputmethod/CursorAnchorInfo;

    iget v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    iget v3, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    iget v4, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    iget-object v5, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    iget v6, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    iget v7, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    iget v8, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    iget v9, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    iget v10, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    iget-object v11, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    iget-object v12, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    move-object/from16 v15, p1

    invoke-static {v15, v0}, Landroid/view/inputmethod/CursorAnchorInfo;->computeMatrixValues(Landroid/graphics/Matrix;Landroid/view/inputmethod/CursorAnchorInfo;)[F

    move-result-object v13

    iget-object v14, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    iget-object v1, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Landroid/view/inputmethod/CursorAnchorInfo;-><init>(IIILjava/lang/CharSequence;IFFFFLandroid/view/inputmethod/SparseRectFArray;Landroid/view/inputmethod/EditorBoundsInfo;[F[FLandroid/view/inputmethod/TextAppearanceInfo;)V

    return-object v16
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/view/inputmethod/CursorAnchorInfo;

    if-nez v2, :cond_2

    return v0

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_3

    return v0

    :cond_3
    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    if-ne v3, v4, :cond_10

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    if-eq v3, v4, :cond_4

    goto/16 :goto_3

    :cond_4
    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    if-ne v3, v4, :cond_f

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    invoke-static {v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    invoke-static {v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    invoke-static {v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    invoke-static {v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v0

    :cond_6
    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v0

    :cond_7
    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_8

    return v0

    :cond_8
    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    if-ne v3, v4, :cond_e

    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    array-length v3, v3

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    array-length v4, v4

    if-eq v3, v4, :cond_a

    return v0

    :cond_a
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    array-length v4, v4

    if-ge v3, v4, :cond_c

    iget-object v4, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    aget v4, v4, v3

    iget-object v5, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    aget v5, v5, v3

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_b

    return v0

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_c
    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v0

    :cond_d
    return v1

    :cond_e
    :goto_1
    return v0

    :cond_f
    :goto_2
    return v0

    :cond_10
    :goto_3
    return v0
.end method

.method public whitelist getCharacterBounds(I)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/SparseRectFArray;->get(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCharacterBoundsFlags(I)I
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/SparseRectFArray;->getFlags(II)I

    move-result v0

    return v0
.end method

.method public whitelist getComposingText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getComposingTextStart()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    return v0
.end method

.method public whitelist getEditorBoundsInfo()Landroid/view/inputmethod/EditorBoundsInfo;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    return-object v0
.end method

.method public whitelist getInsertionMarkerBaseline()F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    return v0
.end method

.method public whitelist getInsertionMarkerBottom()F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    return v0
.end method

.method public whitelist getInsertionMarkerFlags()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    return v0
.end method

.method public whitelist getInsertionMarkerHorizontal()F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    return v0
.end method

.method public whitelist getInsertionMarkerTop()F
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    return v0
.end method

.method public whitelist getMatrix()Landroid/graphics/Matrix;
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v0
.end method

.method public whitelist getSelectionEnd()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    return v0
.end method

.method public whitelist getSelectionStart()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    return v0
.end method

.method public whitelist getTextAppearanceInfo()Landroid/view/inputmethod/TextAppearanceInfo;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    return-object v0
.end method

.method public whitelist getVisibleLineBounds()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    add-int/lit8 v4, v1, 0x1

    aget v1, v3, v1

    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    add-int/lit8 v6, v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    add-int/lit8 v7, v6, 0x1

    aget v5, v5, v6

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v7

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CursorAnchorInfo{mHashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSelection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mComposingTextStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mComposingText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInsertionMarkerFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInsertionMarkerHorizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInsertionMarkerTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInsertionMarkerBaseline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInsertionMarkerBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCharacterBoundsArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEditorBoundsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVisibleLineBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo;->getVisibleLineBounds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMatrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTextAppearanceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method

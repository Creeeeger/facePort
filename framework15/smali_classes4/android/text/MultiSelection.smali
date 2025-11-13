.class public Landroid/text/MultiSelection;
.super Ljava/lang/Object;
.source "MultiSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/MultiSelection$START;,
        Landroid/text/MultiSelection$END;
    }
.end annotation


# static fields
.field public static final blacklist CURRENT_SELECTION_END:Ljava/lang/Object;

.field public static final blacklist CURRENT_SELECTION_START:Ljava/lang/Object;

.field private static blacklist mHoveredIcon:I

.field private static blacklist mIsSelecting:Z

.field private static blacklist mIsTextViewHovered:Z

.field private static blacklist mNeedToScroll:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/MultiSelection$START;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/MultiSelection$START;-><init>(Landroid/text/MultiSelection$START-IA;)V

    sput-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    new-instance v0, Landroid/text/MultiSelection$END;

    invoke-direct {v0, v1}, Landroid/text/MultiSelection$END;-><init>(Landroid/text/MultiSelection$END-IA;)V

    sput-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/text/MultiSelection;->mIsSelecting:Z

    sput-boolean v0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    sput-boolean v0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    const/4 v0, -0x1

    sput v0, Landroid/text/MultiSelection;->mHoveredIcon:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist addMultiSelection(Landroid/text/Spannable;II)V
    .locals 3

    if-ltz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/MultiSelection$START;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/MultiSelection$START;-><init>(Landroid/text/MultiSelection$START-IA;)V

    new-instance v2, Landroid/text/MultiSelection$END;

    invoke-direct {v2, v1}, Landroid/text/MultiSelection$END;-><init>(Landroid/text/MultiSelection$END-IA;)V

    move-object v1, v2

    const/16 v2, 0x222

    invoke-interface {p0, v0, p1, p1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/16 v2, 0x22

    invoke-interface {p0, v1, p2, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static final blacklist clearMultiSelection(Landroid/text/Spannable;)V
    .locals 4

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/MultiSelection$START;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v3, Landroid/text/MultiSelection$END;

    invoke-interface {p0, v2, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$END;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v3, v1, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final blacklist getHoveredIcon()I
    .locals 1

    sget v0, Landroid/text/MultiSelection;->mHoveredIcon:I

    return v0
.end method

.method public static final blacklist getIsMultiSelectingText()Z
    .locals 1

    sget-boolean v0, Landroid/text/MultiSelection;->mIsSelecting:Z

    return v0
.end method

.method public static final blacklist getMultiSelectionCount(Landroid/text/Spannable;)I
    .locals 3

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/MultiSelection$START;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    array-length v1, v0

    return v1
.end method

.method public static final blacklist getMultiSelectionEnd(Landroid/text/Spannable;)[I
    .locals 4

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/MultiSelection$END;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$END;

    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final blacklist getMultiSelectionStart(Landroid/text/Spannable;)[I
    .locals 4

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/MultiSelection$START;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final blacklist getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 2

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    sget-object v1, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static final blacklist getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 2

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    sget-object v1, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static final blacklist isNeedToScroll()Z
    .locals 1

    sget-boolean v0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    return v0
.end method

.method public static final blacklist isTextViewHovered()Z
    .locals 1

    sget-boolean v0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    return v0
.end method

.method public static final blacklist removeCurSelection(Landroid/text/Spannable;)V
    .locals 1

    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public static final blacklist removeMultiSelection(Landroid/text/Spannable;II)Z
    .locals 6

    const-class v0, Landroid/text/MultiSelection$START;

    invoke-interface {p0, p1, p1, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    const-class v1, Landroid/text/MultiSelection$END;

    invoke-interface {p0, p2, p2, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$END;

    const/4 v2, 0x1

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    aget-object v3, v0, v4

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ne v3, v5, :cond_1

    aget-object v3, v1, v4

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static final blacklist selectAll(Landroid/text/Spannable;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public static final blacklist setIsMultiSelectingText(Z)V
    .locals 0

    sput-boolean p0, Landroid/text/MultiSelection;->mIsSelecting:Z

    return-void
.end method

.method public static final blacklist setNeedToScroll(Z)V
    .locals 0

    sput-boolean p0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    return-void
.end method

.method public static blacklist setSelection(Landroid/text/Spannable;II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-eq v1, v2, :cond_11

    if-ltz v1, :cond_11

    if-gez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static/range {p0 .. p0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v14

    const/4 v15, 0x0

    if-lez v1, :cond_1

    if-lt v1, v14, :cond_2

    :cond_1
    if-lez v2, :cond_a

    if-ge v2, v14, :cond_a

    :cond_2
    const/4 v5, 0x0

    if-lez v1, :cond_5

    if-ge v1, v14, :cond_5

    invoke-interface/range {p0 .. p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    const/4 v5, 0x1

    :cond_5
    :goto_0
    if-lez v2, :cond_8

    if-ge v2, v14, :cond_8

    invoke-interface {v0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v5

    goto :goto_1

    :cond_6
    if-nez v5, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    const/4 v5, 0x1

    move/from16 v16, v5

    goto :goto_1

    :cond_8
    move/from16 v16, v5

    :goto_1
    if-eqz v16, :cond_a

    new-array v13, v14, [F

    new-array v12, v14, [C

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v0, v15, v14, v12, v15}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v6, v12

    move v8, v14

    move v10, v14

    move-object/from16 v18, v12

    move-object v12, v13

    move-object/from16 v19, v13

    move/from16 v13, v17

    invoke-virtual/range {v5 .. v13}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    :goto_2
    const/16 v6, 0xa

    const/4 v7, 0x0

    if-ge v1, v14, :cond_9

    aget v8, v19, v1

    cmpl-float v8, v8, v7

    if-nez v8, :cond_9

    aget-char v8, v18, v1

    if-eq v8, v6, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    if-ge v2, v14, :cond_a

    aget v8, v19, v2

    cmpl-float v8, v8, v7

    if-nez v8, :cond_a

    aget-char v8, v18, v2

    if-eq v8, v6, :cond_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    if-ne v3, v1, :cond_b

    if-eq v4, v2, :cond_10

    :cond_b
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/text/MultiSelection$START;

    invoke-interface {v0, v15, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/MultiSelection$START;

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/MultiSelection$END;

    invoke-interface {v0, v15, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/MultiSelection$END;

    const/4 v7, 0x0

    :goto_4
    array-length v8, v5

    if-ge v7, v8, :cond_f

    aget-object v8, v5, v7

    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    aget-object v9, v6, v7

    invoke-interface {v0, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    if-gt v8, v1, :cond_c

    if-lt v1, v9, :cond_d

    :cond_c
    if-ge v8, v2, :cond_e

    if-gt v2, v9, :cond_e

    :cond_d
    aget-object v10, v5, v7

    invoke-interface {v0, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v10, v6, v7

    invoke-interface {v0, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_f
    sget-object v7, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    const/16 v8, 0x222

    invoke-interface {v0, v7, v1, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    sget-object v7, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    const/16 v8, 0x22

    invoke-interface {v0, v7, v2, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    return-void

    :cond_11
    :goto_5
    return-void
.end method

.method public static final blacklist setTextViewHovered(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/text/MultiSelection;->setTextViewHovered(ZI)V

    return-void
.end method

.method public static final blacklist setTextViewHovered(ZI)V
    .locals 0

    sput-boolean p0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    sput p1, Landroid/text/MultiSelection;->mHoveredIcon:I

    return-void
.end method

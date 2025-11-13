.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final greylist-max-o COMPOSING:Ljava/lang/Object;

.field private static final greylist-max-o DEBUG:Z = false

.field private static greylist-max-o INVALID_INDEX:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private greylist-max-o mDefaultComposingSpans:[Ljava/lang/Object;

.field greylist-max-o mEditable:Landroid/text/Editable;

.field final blacklist mFallbackMode:Z

.field protected final greylist-max-o mIMM:Landroid/view/inputmethod/InputMethodManager;

.field greylist-max-o mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final greylist-max-o mTargetView:Landroid/view/View;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    .line 307
    const/4 v0, -0x1

    sput v0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;Z)V
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "fullEditor"    # Z

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 82
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 83
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mFallbackMode:Z

    .line 84
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 1
    .param p1, "mgr"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "fullEditor"    # Z

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 76
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mFallbackMode:Z

    .line 77
    return-void
.end method

.method private greylist-max-o ensureDefaultComposingSpans()V
    .locals 7

    .line 837
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 839
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    goto :goto_1

    .line 841
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_2

    .line 842
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ImeFocusController;->getServedView()Landroid/view/View;

    move-result-object v0

    .line 843
    .local v0, "servedView":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .line 844
    .local v0, "context":Landroid/content/Context;
    goto :goto_1

    .line 845
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    const/4 v0, 0x0

    .line 847
    .restart local v0    # "context":Landroid/content/Context;
    :goto_1
    if-eqz v0, :cond_3

    .line 848
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010230

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 849
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 852
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 853
    .local v2, "style":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 854
    if-eqz v2, :cond_3

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_3

    .line 855
    move-object v3, v2

    check-cast v3, Landroid/text/Spanned;

    .line 856
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    .line 855
    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 860
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    .end local v2    # "style":Ljava/lang/CharSequence;
    :cond_3
    return-void
.end method

.method private static greylist-max-o findIndexBackward(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 310
    move v0, p1

    .line 311
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 312
    .local v1, "waitingHighSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 313
    .local v2, "N":I
    if-ltz v0, :cond_9

    if-ge v2, v0, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    if-gez p2, :cond_1

    .line 317
    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3

    .line 319
    :cond_1
    move v3, p2

    .line 321
    .local v3, "remainingCodePoints":I
    :goto_0
    if-nez v3, :cond_2

    .line 322
    return v0

    .line 325
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 326
    if-gez v0, :cond_4

    .line 327
    if-eqz v1, :cond_3

    .line 328
    sget v4, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v4

    .line 330
    :cond_3
    const/4 v4, 0x0

    return v4

    .line 332
    :cond_4
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 333
    .local v4, "c":C
    if-eqz v1, :cond_6

    .line 334
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 335
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 337
    :cond_5
    const/4 v1, 0x0

    .line 338
    add-int/lit8 v3, v3, -0x1

    .line 339
    goto :goto_0

    .line 341
    :cond_6
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_7

    .line 342
    add-int/lit8 v3, v3, -0x1

    .line 343
    goto :goto_0

    .line 345
    :cond_7
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 346
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 348
    :cond_8
    const/4 v1, 0x1

    .line 349
    .end local v4    # "c":C
    goto :goto_0

    .line 314
    .end local v3    # "remainingCodePoints":I
    :cond_9
    :goto_1
    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3
.end method

.method private static greylist-max-o findIndexForward(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 354
    move v0, p1

    .line 355
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 356
    .local v1, "waitingLowSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 357
    .local v2, "N":I
    if-ltz v0, :cond_9

    if-ge v2, v0, :cond_0

    goto :goto_1

    .line 360
    :cond_0
    if-gez p2, :cond_1

    .line 361
    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3

    .line 363
    :cond_1
    move v3, p2

    .line 366
    .local v3, "remainingCodePoints":I
    :goto_0
    if-nez v3, :cond_2

    .line 367
    return v0

    .line 370
    :cond_2
    if-lt v0, v2, :cond_4

    .line 371
    if-eqz v1, :cond_3

    .line 372
    sget v4, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v4

    .line 374
    :cond_3
    return v2

    .line 376
    :cond_4
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 377
    .local v4, "c":C
    if-eqz v1, :cond_6

    .line 378
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 379
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 381
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 382
    const/4 v1, 0x0

    .line 383
    add-int/lit8 v0, v0, 0x1

    .line 384
    goto :goto_0

    .line 386
    :cond_6
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_7

    .line 387
    add-int/lit8 v3, v3, -0x1

    .line 388
    add-int/lit8 v0, v0, 0x1

    .line 389
    goto :goto_0

    .line 391
    :cond_7
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 392
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 394
    :cond_8
    const/4 v1, 0x1

    .line 395
    nop

    .end local v4    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 396
    goto :goto_0

    .line 358
    .end local v3    # "remainingCodePoints":I
    :cond_9
    :goto_1
    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3
.end method

.method public static whitelist getComposingSpanEnd(Landroid/text/Spannable;)I
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .line 134
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static whitelist getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .line 130
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final whitelist removeComposingSpans(Landroid/text/Spannable;)V
    .locals 4
    .param p0, "text"    # Landroid/text/Spannable;

    .line 87
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 88
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "sps":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 90
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 91
    aget-object v2, v0, v1

    .line 92
    .local v2, "o":Ljava/lang/Object;
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 93
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 90
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "composing"    # Z

    .line 864
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 865
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    .line 866
    return-void

    .line 869
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 872
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 873
    .local v1, "a":I
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    .line 877
    .local v2, "b":I
    if-ge v2, v1, :cond_1

    .line 878
    move v3, v1

    .line 879
    .local v3, "tmp":I
    move v1, v2

    .line 880
    move v2, v3

    .line 883
    .end local v3    # "tmp":I
    :cond_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    if-eq v2, v3, :cond_2

    .line 884
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    goto :goto_0

    .line 886
    :cond_2
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 887
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 888
    if-gez v1, :cond_3

    const/4 v1, 0x0

    .line 889
    :cond_3
    if-gez v2, :cond_4

    const/4 v2, 0x0

    .line 890
    :cond_4
    if-ge v2, v1, :cond_5

    .line 891
    move v3, v1

    .line 892
    .restart local v3    # "tmp":I
    move v1, v2

    .line 893
    move v2, v3

    .line 897
    .end local v3    # "tmp":I
    :cond_5
    :goto_0
    if-eqz p3, :cond_9

    .line 898
    const/4 v3, 0x0

    .line 899
    .local v3, "sp":Landroid/text/Spannable;
    instance-of v4, p1, Landroid/text/Spannable;

    if-nez v4, :cond_7

    .line 900
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v4

    .line 901
    move-object p1, v3

    .line 902
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 903
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v4, :cond_8

    .line 904
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v5

    if-ge v4, v6, :cond_6

    .line 905
    aget-object v5, v5, v4

    const/4 v6, 0x0

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v7

    const/16 v8, 0x121

    invoke-interface {v3, v5, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 904
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v4    # "i":I
    :cond_6
    goto :goto_2

    .line 910
    :cond_7
    move-object v3, p1

    check-cast v3, Landroid/text/Spannable;

    .line 912
    :cond_8
    :goto_2
    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 931
    .end local v3    # "sp":Landroid/text/Spannable;
    :cond_9
    if-lez p2, :cond_a

    .line 932
    add-int/lit8 v3, v2, -0x1

    add-int/2addr p2, v3

    goto :goto_3

    .line 934
    :cond_a
    add-int/2addr p2, v1

    .line 936
    :goto_3
    if-gez p2, :cond_b

    const/4 p2, 0x0

    .line 937
    :cond_b
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    if-le p2, v3, :cond_c

    .line 938
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result p2

    .line 939
    :cond_c
    invoke-static {v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 942
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-static {p1, p2, v0, v3}, Landroid/view/inputmethod/SemBaseInputConnectionUtil;->convertAllBrackets(Ljava/lang/CharSequence;ILandroid/text/Editable;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 945
    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 953
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 954
    return-void
.end method

.method private greylist-max-o sendCurrentText()V
    .locals 11

    .line 798
    iget-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mFallbackMode:Z

    if-nez v0, :cond_0

    .line 799
    return-void

    .line 802
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 803
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_5

    .line 804
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 805
    .local v1, "N":I
    if-nez v1, :cond_1

    .line 806
    return-void

    .line 808
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 811
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v3, :cond_2

    .line 812
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 814
    :cond_2
    new-array v3, v2, [C

    .line 815
    .local v3, "chars":[C
    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3, v4}, Landroid/text/Editable;->getChars(II[CI)V

    .line 816
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 817
    .local v2, "events":[Landroid/view/KeyEvent;
    if-eqz v2, :cond_4

    .line 818
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 820
    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 818
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 822
    .end local v4    # "i":I
    :cond_3
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 823
    return-void

    .line 829
    .end local v2    # "events":[Landroid/view/KeyEvent;
    .end local v3    # "chars":[C
    :cond_4
    new-instance v2, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 830
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 831
    .local v2, "event":Landroid/view/KeyEvent;
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 832
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 834
    .end local v1    # "N":I
    .end local v2    # "event":Landroid/view/KeyEvent;
    :cond_5
    return-void
.end method

.method public static whitelist setComposingSpans(Landroid/text/Spannable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;

    .line 100
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 101
    return-void
.end method

.method public static greylist-max-o setComposingSpans(Landroid/text/Spannable;II)V
    .locals 8
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 105
    const-class v0, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, "sps":[Ljava/lang/Object;
    const/16 v1, 0x121

    if-eqz v0, :cond_2

    .line 107
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 108
    aget-object v3, v0, v2

    .line 109
    .local v3, "o":Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    .line 110
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 111
    goto :goto_1

    .line 114
    :cond_0
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 115
    .local v4, "fl":I
    and-int/lit16 v5, v4, 0x133

    if-eq v5, v1, :cond_1

    .line 117
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    and-int/lit8 v7, v4, -0x34

    or-int/lit16 v7, v7, 0x100

    or-int/lit8 v7, v7, 0x21

    invoke-interface {p0, v3, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 107
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "fl":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 125
    .end local v2    # "i":I
    :cond_2
    sget-object v2, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v2, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 127
    return-void
.end method


# virtual methods
.method public whitelist beginBatchEdit()Z
    .locals 1

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearMetaKeyStates(I)Z
    .locals 2
    .param p1, "states"    # I

    .line 192
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 193
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 194
    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 195
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist closeConnection()V
    .locals 1

    .line 182
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->setImeConsumesInput(Z)Z

    .line 184
    return-void
.end method

.method public whitelist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 962
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 963
    .local v0, "description":Landroid/content/ClipDescription;
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getReceiveContentMimeTypes()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 967
    return v2

    .line 969
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 971
    :try_start_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    goto :goto_0

    .line 972
    :catch_0
    move-exception v1

    .line 973
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BaseInputConnection"

    const-string v4, "Can\'t insert content from IME; requestPermission() failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 974
    return v2

    .line 977
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    new-instance v4, Landroid/content/ClipData$Item;

    .line 978
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v1, v3, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 979
    .local v1, "clip":Landroid/content/ClipData;
    new-instance v3, Landroid/view/ContentInfo$Builder;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 980
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getLinkUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ContentInfo$Builder;->setLinkUri(Landroid/net/Uri;)Landroid/view/ContentInfo$Builder;

    move-result-object v3

    .line 981
    invoke-virtual {v3, p3}, Landroid/view/ContentInfo$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/ContentInfo$Builder;

    move-result-object v3

    .line 982
    invoke-virtual {v3, p1}, Landroid/view/ContentInfo$Builder;->setInputContentInfo(Landroid/view/inputmethod/InputContentInfo;)Landroid/view/ContentInfo$Builder;

    move-result-object v3

    .line 983
    invoke-virtual {v3}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v3

    .line 984
    .local v3, "payload":Landroid/view/ContentInfo;
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public whitelist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 220
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist deleteSurroundingText(II)Z
    .locals 8
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 244
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 245
    .local v0, "content":Landroid/text/Editable;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 247
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 249
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 250
    .local v2, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 252
    .local v3, "b":I
    if-le v2, v3, :cond_1

    .line 253
    move v4, v2

    .line 254
    .local v4, "tmp":I
    move v2, v3

    .line 255
    move v3, v4

    .line 259
    .end local v4    # "tmp":I
    :cond_1
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 265
    :cond_2
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 266
    .local v1, "ca":I
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 267
    .local v5, "cb":I
    if-ge v5, v1, :cond_3

    .line 268
    move v6, v1

    .line 269
    .local v6, "tmp":I
    move v1, v5

    .line 270
    move v5, v6

    .line 272
    .end local v6    # "tmp":I
    :cond_3
    if-eq v1, v4, :cond_5

    if-eq v5, v4, :cond_5

    .line 273
    if-ge v1, v2, :cond_4

    move v2, v1

    .line 274
    :cond_4
    if-le v5, v3, :cond_5

    move v3, v5

    .line 277
    :cond_5
    const/4 v4, 0x0

    .line 279
    .local v4, "deleted":I
    if-lez p1, :cond_7

    .line 280
    sub-int v6, v2, p1

    .line 281
    .local v6, "start":I
    if-gez v6, :cond_6

    const/4 v6, 0x0

    .line 283
    :cond_6
    sub-int v7, v2, v6

    .line 284
    .local v7, "numDeleteBefore":I
    if-ltz v2, :cond_7

    if-lez v7, :cond_7

    .line 285
    invoke-interface {v0, v6, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 286
    move v4, v7

    .line 290
    .end local v6    # "start":I
    .end local v7    # "numDeleteBefore":I
    :cond_7
    if-lez p2, :cond_9

    .line 291
    sub-int/2addr v3, v4

    .line 293
    add-int v6, v3, p2

    .line 294
    .local v6, "end":I
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-le v6, v7, :cond_8

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    .line 296
    :cond_8
    sub-int v7, v6, v3

    .line 297
    .local v7, "numDeleteAfter":I
    if-ltz v3, :cond_9

    if-lez v7, :cond_9

    .line 298
    invoke-interface {v0, v3, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 302
    .end local v6    # "end":I
    .end local v7    # "numDeleteAfter":I
    :cond_9
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 304
    const/4 v6, 0x1

    return v6

    .line 260
    .end local v1    # "ca":I
    .end local v4    # "deleted":I
    .end local v5    # "cb":I
    :cond_a
    :goto_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 261
    return v1
.end method

.method public whitelist deleteSurroundingTextInCodePoints(II)Z
    .locals 11
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 414
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 415
    .local v0, "content":Landroid/text/Editable;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 417
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 419
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 420
    .local v2, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 422
    .local v3, "b":I
    if-le v2, v3, :cond_1

    .line 423
    move v4, v2

    .line 424
    .local v4, "tmp":I
    move v2, v3

    .line 425
    move v3, v4

    .line 429
    .end local v4    # "tmp":I
    :cond_1
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 430
    .local v4, "ca":I
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 431
    .local v5, "cb":I
    if-ge v5, v4, :cond_2

    .line 432
    move v6, v4

    .line 433
    .local v6, "tmp":I
    move v4, v5

    .line 434
    move v5, v6

    .line 436
    .end local v6    # "tmp":I
    :cond_2
    const/4 v6, -0x1

    if-eq v4, v6, :cond_4

    if-eq v5, v6, :cond_4

    .line 437
    if-ge v4, v2, :cond_3

    move v2, v4

    .line 438
    :cond_3
    if-le v5, v3, :cond_4

    move v3, v5

    .line 441
    :cond_4
    if-ltz v2, :cond_6

    if-ltz v3, :cond_6

    .line 442
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v0, v2, v6}, Landroid/view/inputmethod/BaseInputConnection;->findIndexBackward(Ljava/lang/CharSequence;II)I

    move-result v6

    .line 443
    .local v6, "start":I
    sget v7, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    if-eq v6, v7, :cond_6

    .line 444
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v3, v1}, Landroid/view/inputmethod/BaseInputConnection;->findIndexForward(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 445
    .local v1, "end":I
    sget v7, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    if-eq v1, v7, :cond_6

    .line 446
    sub-int v7, v2, v6

    .line 447
    .local v7, "numDeleteBefore":I
    if-lez v7, :cond_5

    .line 448
    invoke-interface {v0, v6, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 450
    :cond_5
    sub-int v8, v1, v3

    .line 451
    .local v8, "numDeleteAfter":I
    if-lez v8, :cond_6

    .line 452
    sub-int v9, v3, v7

    sub-int v10, v1, v7

    invoke-interface {v0, v9, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 463
    .end local v1    # "end":I
    .end local v6    # "start":I
    .end local v7    # "numDeleteBefore":I
    .end local v8    # "numDeleteAfter":I
    :cond_6
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 465
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist endBatchEdit()Z
    .locals 1

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist endComposingRegionEditInternal()V
    .locals 0

    .line 174
    return-void
.end method

.method public whitelist finishComposingText()Z
    .locals 2

    .line 475
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 476
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 478
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 480
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 481
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 482
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endComposingRegionEditInternal()V

    .line 484
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getCursorCapsMode(I)I
    .locals 4
    .param p1, "reqModes"    # I

    .line 493
    iget-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mFallbackMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 495
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 496
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_1

    return v1

    .line 498
    :cond_1
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 499
    .local v1, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 501
    .local v2, "b":I
    if-le v1, v2, :cond_2

    .line 502
    move v3, v1

    .line 503
    .local v3, "tmp":I
    move v1, v2

    .line 504
    move v2, v3

    .line 507
    .end local v3    # "tmp":I
    :cond_2
    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    return v3
.end method

.method public whitelist getEditable()Landroid/text/Editable;
    .locals 2

    .line 144
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 146
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 148
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public whitelist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .line 514
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getHandler()Landroid/os/Handler;
    .locals 1

    .line 702
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "flags"    # I

    .line 556
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 557
    .local v0, "content":Landroid/text/Editable;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 559
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 560
    .local v2, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 562
    .local v3, "b":I
    if-le v2, v3, :cond_1

    .line 563
    move v4, v2

    .line 564
    .local v4, "tmp":I
    move v2, v3

    .line 565
    move v3, v4

    .line 568
    .end local v4    # "tmp":I
    :cond_1
    if-eq v2, v3, :cond_4

    if-gez v2, :cond_2

    goto :goto_0

    .line 570
    :cond_2
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_3

    .line 571
    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 573
    :cond_3
    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 568
    :cond_4
    :goto_0
    return-object v1
.end method

.method public whitelist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .locals 10
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "flags"    # I

    .line 619
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 620
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 622
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 626
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-ne v1, v0, :cond_0

    goto :goto_2

    .line 630
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 631
    .local v1, "selStart":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 634
    .local v2, "selEnd":I
    if-ltz v1, :cond_4

    if-gez v2, :cond_1

    goto :goto_1

    .line 638
    :cond_1
    if-le v1, v2, :cond_2

    .line 639
    move v3, v1

    .line 640
    .local v3, "tmp":I
    move v1, v2

    .line 641
    move v2, v3

    .line 644
    .end local v3    # "tmp":I
    :cond_2
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 645
    .local v3, "contentLength":I
    sub-int v4, v1, p1

    .line 646
    .local v4, "startPos":I
    add-int v5, v2, p2

    .line 649
    .local v5, "endPos":I
    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 650
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 653
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_3

    .line 654
    invoke-interface {v0, v4, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "surroundingText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 656
    .end local v6    # "surroundingText":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {v0, v4, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    .line 658
    .restart local v6    # "surroundingText":Ljava/lang/CharSequence;
    :goto_0
    new-instance v7, Landroid/view/inputmethod/SurroundingText;

    sub-int v8, v1, v4

    sub-int v9, v2, v4

    invoke-direct {v7, v6, v8, v9, v4}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    return-object v7

    .line 635
    .end local v3    # "contentLength":I
    .end local v4    # "startPos":I
    .end local v5    # "endPos":I
    .end local v6    # "surroundingText":Ljava/lang/CharSequence;
    :cond_4
    :goto_1
    const/4 v3, 0x0

    return-object v3

    .line 627
    .end local v1    # "selStart":I
    .end local v2    # "selEnd":I
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 582
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 584
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 585
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 587
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 588
    .local v1, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 590
    .local v2, "b":I
    if-le v1, v2, :cond_1

    .line 591
    move v3, v1

    .line 592
    .local v3, "tmp":I
    move v1, v2

    .line 593
    move v2, v3

    .line 597
    .end local v3    # "tmp":I
    :cond_1
    if-gez v2, :cond_2

    .line 598
    const/4 v2, 0x0

    .line 601
    :cond_2
    add-int v3, v2, p1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 602
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int p1, v3, v2

    .line 606
    :cond_3
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_4

    .line 607
    add-int v3, v2, p1

    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 609
    :cond_4
    add-int v3, v2, p1

    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 523
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 525
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 526
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 528
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 529
    .local v1, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 531
    .local v2, "b":I
    if-le v1, v2, :cond_1

    .line 532
    move v3, v1

    .line 533
    .local v3, "tmp":I
    move v1, v2

    .line 534
    move v2, v3

    .line 537
    .end local v3    # "tmp":I
    :cond_1
    if-gtz v1, :cond_2

    .line 538
    const-string v3, ""

    return-object v3

    .line 541
    :cond_2
    if-le p1, v1, :cond_3

    .line 542
    move p1, v1

    .line 545
    :cond_3
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_4

    .line 546
    sub-int v3, v1, p1

    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 548
    :cond_4
    sub-int v3, v1, p1

    invoke-static {v0, v3, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 684
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist performEditorAction(I)Z
    .locals 16
    .param p1, "actionCode"    # I

    .line 666
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 667
    .local v13, "eventTime":J
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x16

    move-object v1, v15

    move-wide v2, v13

    move-wide v4, v13

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v15}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 672
    new-instance v15, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v6, 0x1

    move-object v1, v15

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v15}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 677
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 794
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist requestCursorUpdates(I)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I

    .line 698
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 786
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 787
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setComposingRegion(II)Z
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 717
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 718
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_6

    .line 719
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 720
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 721
    move v1, p1

    .line 722
    .local v1, "a":I
    move v2, p2

    .line 723
    .local v2, "b":I
    if-le v1, v2, :cond_0

    .line 724
    move v3, v1

    .line 725
    .local v3, "tmp":I
    move v1, v2

    .line 726
    move v2, v3

    .line 729
    .end local v3    # "tmp":I
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 730
    .local v3, "length":I
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 731
    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 732
    :cond_2
    if-le v1, v3, :cond_3

    move v1, v3

    .line 733
    :cond_3
    if-le v2, v3, :cond_4

    move v2, v3

    .line 735
    :cond_4
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 736
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    const/16 v5, 0x121

    if-eqz v4, :cond_5

    .line 737
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v7, v6

    if-ge v4, v7, :cond_5

    .line 738
    aget-object v6, v6, v4

    invoke-interface {v0, v6, v1, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 737
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 743
    .end local v4    # "i":I
    :cond_5
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v0, v4, v1, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 747
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 748
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 749
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endComposingRegionEditInternal()V

    .line 751
    .end local v1    # "a":I
    .end local v2    # "b":I
    .end local v3    # "length":I
    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 712
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 713
    return v0
.end method

.method public whitelist setSelection(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 760
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 761
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 762
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 763
    .local v1, "len":I
    const/4 v2, 0x1

    if-gt p1, v1, :cond_3

    if-gt p2, v1, :cond_3

    if-ltz p1, :cond_3

    if-gez p2, :cond_1

    goto :goto_1

    .line 770
    :cond_1
    if-ne p1, p2, :cond_2

    const/16 v3, 0x800

    invoke-static {v0, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 774
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 776
    :cond_2
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 778
    :goto_0
    return v2

    .line 768
    :cond_3
    :goto_1
    return v2
.end method

.method public whitelist takeSnapshot()Landroid/view/inputmethod/TextSnapshot;
    .locals 6

    .line 996
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 997
    .local v0, "content":Landroid/text/Editable;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 998
    return-object v1

    .line 1000
    :cond_0
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 1001
    .local v2, "composingStart":I
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 1002
    .local v3, "composingEnd":I
    if-ge v3, v2, :cond_1

    .line 1003
    move v4, v2

    .line 1004
    .local v4, "tmp":I
    move v2, v3

    .line 1005
    move v3, v4

    .line 1008
    .end local v4    # "tmp":I
    :cond_1
    const/4 v4, 0x1

    const/16 v5, 0x400

    invoke-virtual {p0, v5, v5, v4}, Landroid/view/inputmethod/BaseInputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v4

    .line 1011
    .local v4, "surroundingText":Landroid/view/inputmethod/SurroundingText;
    if-nez v4, :cond_2

    .line 1012
    return-object v1

    .line 1015
    :cond_2
    const/16 v1, 0x7000

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->getCursorCapsMode(I)I

    move-result v1

    .line 1018
    .local v1, "cursorCapsMode":I
    new-instance v5, Landroid/view/inputmethod/TextSnapshot;

    invoke-direct {v5, v4, v2, v3, v1}, Landroid/view/inputmethod/TextSnapshot;-><init>(Landroid/view/inputmethod/SurroundingText;III)V

    return-object v5
.end method

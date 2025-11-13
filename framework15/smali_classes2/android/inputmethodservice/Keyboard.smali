.class public Landroid/inputmethodservice/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/Keyboard$Key;,
        Landroid/inputmethodservice/Keyboard$Row;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist EDGE_BOTTOM:I = 0x8

.field public static final whitelist EDGE_LEFT:I = 0x1

.field public static final whitelist EDGE_RIGHT:I = 0x2

.field public static final whitelist EDGE_TOP:I = 0x4

.field private static final greylist-max-o GRID_HEIGHT:I = 0x5

.field private static final greylist-max-o GRID_SIZE:I = 0x32

.field private static final greylist-max-o GRID_WIDTH:I = 0xa

.field public static final whitelist KEYCODE_ALT:I = -0x6

.field public static final whitelist KEYCODE_CANCEL:I = -0x3

.field public static final whitelist KEYCODE_DELETE:I = -0x5

.field public static final whitelist KEYCODE_DONE:I = -0x4

.field public static final whitelist KEYCODE_MODE_CHANGE:I = -0x2

.field public static final whitelist KEYCODE_SHIFT:I = -0x1

.field private static greylist-max-o SEARCH_DISTANCE:F = 0.0f

.field static final greylist-max-o TAG:Ljava/lang/String; = "Keyboard"

.field private static final greylist-max-o TAG_KEY:Ljava/lang/String; = "Key"

.field private static final greylist-max-o TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final greylist-max-o TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private greylist-max-o mCellHeight:I

.field private greylist-max-o mCellWidth:I

.field private greylist-max-o mDefaultHeight:I

.field private greylist-max-o mDefaultHorizontalGap:I

.field private greylist-max-o mDefaultVerticalGap:I

.field private greylist-max-o mDefaultWidth:I

.field private greylist-max-o mDisplayHeight:I

.field private greylist-max-o mDisplayWidth:I

.field private greylist-max-o mGridNeighbors:[[I

.field private greylist-max-o mKeyHeight:I

.field private greylist-max-o mKeyWidth:I

.field private greylist-max-o mKeyboardMode:I

.field private greylist-max-o mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private greylist mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mProximityThreshold:I

.field private greylist-max-o mShiftKeyIndices:[I

.field private greylist-max-o mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private greylist-max-o mShifted:Z

.field private greylist mTotalHeight:I

.field private greylist mTotalWidth:I

.field private greylist-max-o rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/Keyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDefaultHeight(Landroid/inputmethodservice/Keyboard;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultHorizontalGap(Landroid/inputmethodservice/Keyboard;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultVerticalGap(Landroid/inputmethodservice/Keyboard;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultWidth(Landroid/inputmethodservice/Keyboard;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayHeight(Landroid/inputmethodservice/Keyboard;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayWidth(Landroid/inputmethodservice/Keyboard;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const v0, 0x3fe66666    # 1.8f

    sput v0, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    const/4 v0, -0x1

    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;IIII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    const/4 v0, -0x1

    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    iput p4, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    iput p5, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 10

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput v3, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    new-instance v3, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/inputmethodservice/Keyboard;)V

    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    iput v4, v3, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v4, v3, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    iput v4, v3, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iput v4, v3, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    const/16 v4, 0xc

    iput v4, v3, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    const/4 v4, -0x1

    if-ne p4, v4, :cond_0

    const v4, 0x7fffffff

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    const/4 v5, 0x0

    :goto_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {p3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v2, v4, :cond_1

    iget v7, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    add-int/2addr v7, v0

    add-int/2addr v7, p5

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    if-le v7, v8, :cond_2

    :cond_1
    const/4 v0, 0x0

    iget v7, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    const/4 v2, 0x0

    :cond_2
    new-instance v7, Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {v7, v3}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    iput v0, v7, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iput v1, v7, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    filled-new-array {v6}, [I

    move-result-object v8

    iput-object v8, v7, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    add-int/lit8 v2, v2, 0x1

    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v9, v7, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    iget-object v8, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v3, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v0, v8, :cond_3

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget v5, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v5, v1

    iput v5, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    iget-object v5, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private greylist-max-o computeNearestNeighbors()V
    .locals 10

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    const/16 v0, 0x32

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    mul-int/lit8 v2, v2, 0x5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    iget-object v7, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {v7, v3, v4}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8, v4}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v8, v9, :cond_0

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v3, v8}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-ge v8, v9, :cond_1

    :cond_0
    add-int/lit8 v8, v5, 0x1

    aput v6, v0, v5

    move v5, v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    new-array v6, v5, [I

    const/4 v7, 0x0

    invoke-static {v0, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v8, v4, v8

    mul-int/lit8 v8, v8, 0xa

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v9, v3, v9

    add-int/2addr v8, v9

    aput-object v6, v7, v8

    iget v5, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v4, v5

    goto :goto_1

    :cond_3
    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v3, v4

    goto :goto_0

    :cond_4
    return-void
.end method

.method static greylist-max-o getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    return v1

    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1

    :cond_2
    return p3
.end method

.method private greylist-max-o loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const-string v9, "Keyboard"

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x0

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v12

    move v12, v1

    move v1, v0

    move-object/from16 v23, v6

    move-object v6, v5

    move-object/from16 v5, v23

    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v4, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_c

    const/4 v0, 0x2

    if-ne v4, v0, :cond_9

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Row"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const/16 v17, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v7, v11, v8}, Landroid/inputmethodservice/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;

    move-result-object v14

    move-object v5, v14

    iget-object v14, v7, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v14, v5, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    if-eqz v14, :cond_0

    iget v14, v5, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    iget v3, v7, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v14, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move/from16 v3, v17

    :goto_1
    if-eqz v3, :cond_1

    :try_start_2
    invoke-direct {v7, v8}, Landroid/inputmethodservice/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    move/from16 v16, v3

    move/from16 v20, v10

    move v14, v12

    move/from16 v21, v13

    move/from16 v22, v15

    move v12, v2

    move v10, v4

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move/from16 v16, v3

    move/from16 v20, v10

    move v14, v12

    move/from16 v21, v13

    move v12, v2

    goto/16 :goto_7

    :cond_1
    move/from16 v16, v3

    move/from16 v20, v10

    move v14, v12

    move/from16 v21, v13

    move/from16 v22, v15

    move v12, v2

    move v10, v4

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move/from16 v20, v10

    move v14, v12

    move/from16 v21, v13

    move v12, v2

    goto/16 :goto_7

    :cond_2
    :try_start_3
    const-string v2, "Key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v2, :cond_7

    const/16 v19, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    const/16 v18, 0x1

    move-object v3, v5

    move/from16 v20, v10

    move v10, v4

    move v4, v14

    move/from16 v21, v13

    move-object v13, v5

    move v5, v15

    move/from16 v22, v15

    move-object v15, v6

    move-object/from16 v6, p2

    :try_start_4
    invoke-virtual/range {v1 .. v6}, Landroid/inputmethodservice/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    iget-object v2, v7, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v17

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    :goto_2
    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aput-object v1, v3, v2

    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    iget-object v4, v7, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v2, v7, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v17

    const/4 v3, -0x6

    if-ne v2, v3, :cond_6

    iget-object v2, v7, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    iget-object v2, v13, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v6, v1

    move-object v5, v13

    move/from16 v1, v19

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v6, v1

    move-object v5, v13

    move/from16 v1, v19

    move/from16 v15, v22

    goto/16 :goto_7

    :catch_3
    move-exception v0

    move-object v5, v13

    move-object v6, v15

    move/from16 v1, v19

    move/from16 v15, v22

    goto/16 :goto_7

    :cond_7
    move/from16 v20, v10

    move/from16 v21, v13

    move/from16 v22, v15

    move v10, v4

    move-object v13, v5

    move-object v15, v6

    :try_start_6
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {v7, v11, v8}, Landroid/inputmethodservice/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    :cond_8
    move-object v5, v13

    move-object v6, v15

    :goto_5
    move/from16 v10, v20

    move/from16 v13, v21

    move/from16 v15, v22

    goto/16 :goto_0

    :cond_9
    move/from16 v20, v10

    move/from16 v21, v13

    move/from16 v22, v15

    move v10, v4

    move-object v13, v5

    move-object v15, v6

    const/4 v0, 0x3

    if-ne v10, v0, :cond_b

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    iget v0, v15, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, v2

    add-int/2addr v14, v0

    iget v0, v7, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v14, v0, :cond_b

    iput v14, v7, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v5, v13

    move-object v6, v15

    move/from16 v15, v22

    goto :goto_7

    :cond_a
    if-eqz v12, :cond_b

    const/4 v12, 0x0

    iget v0, v13, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    add-int v2, v22, v0

    :try_start_7
    iget v0, v13, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    add-int/2addr v0, v2

    add-int/lit8 v2, v21, 0x1

    move-object v5, v13

    move-object v6, v15

    move/from16 v10, v20

    move v15, v0

    move v13, v2

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v5, v13

    move-object v6, v15

    move v15, v2

    goto :goto_7

    :cond_b
    :goto_6
    move-object v5, v13

    move-object v6, v15

    move/from16 v10, v20

    move/from16 v13, v21

    move/from16 v15, v22

    goto/16 :goto_0

    :cond_c
    move/from16 v20, v10

    move/from16 v21, v13

    move/from16 v22, v15

    move v10, v4

    move-object v13, v5

    move-object v15, v6

    move/from16 v15, v22

    goto :goto_8

    :catch_6
    move-exception v0

    move/from16 v20, v10

    move/from16 v21, v13

    move/from16 v22, v15

    move-object v13, v5

    move-object v15, v6

    move/from16 v15, v22

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    iget v0, v7, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    sub-int v0, v15, v0

    iput v0, v7, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    return-void
.end method

.method private greylist-max-o parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 5

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    const/16 v2, 0x32

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    const/4 v1, 0x2

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    invoke-static {v0, v1, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    const/4 v1, 0x3

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    int-to-float v1, v1

    sget v2, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private greylist-max-o skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    nop

    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v1, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Row"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    :cond_1
    return-void
.end method


# virtual methods
.method protected whitelist createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 7

    new-instance v6, Landroid/inputmethodservice/Keyboard$Key;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v6
.end method

.method protected whitelist createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;
    .locals 1

    new-instance v0, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public whitelist getHeight()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected whitelist getHorizontalGap()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected whitelist getKeyHeight()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected whitelist getKeyWidth()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public whitelist getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMinWidth()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public whitelist getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getNearestKeys(II)[I
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/inputmethodservice/Keyboard;->computeNearestNeighbors()V

    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v0, p2, v0

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v1, p1, v1

    add-int/2addr v0, v1

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist getShiftKeyIndex()I
    .locals 2

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getShiftKeyIndices()[I
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    return-object v0
.end method

.method protected whitelist getVerticalGap()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public whitelist isShifted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    return v0
.end method

.method final greylist-max-p resize(II)V
    .locals 12

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/Keyboard$Row;

    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_1

    iget-object v7, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    if-lez v6, :cond_0

    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v4, v8

    :cond_0
    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int v6, v4, v5

    if-le v6, p1, :cond_2

    const/4 v6, 0x0

    sub-int v7, p1, v4

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_2

    iget-object v9, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/inputmethodservice/Keyboard$Key;

    iget v10, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iput v6, v9, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v10, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v11, v9, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    return-void
.end method

.method protected whitelist setHorizontalGap(I)V
    .locals 0

    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return-void
.end method

.method protected whitelist setKeyHeight(I)V
    .locals 0

    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return-void
.end method

.method protected whitelist setKeyWidth(I)V
    .locals 0

    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return-void
.end method

.method public whitelist setShifted(Z)Z
    .locals 5

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iput-boolean p1, v4, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method protected whitelist setVerticalGap(I)V
    .locals 0

    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return-void
.end method

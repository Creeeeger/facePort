.class public Landroid/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridLayout$Axis;,
        Landroid/widget/GridLayout$Alignment;,
        Landroid/widget/GridLayout$LayoutParams;,
        Landroid/widget/GridLayout$Spec;,
        Landroid/widget/GridLayout$Interval;,
        Landroid/widget/GridLayout$PackedMap;,
        Landroid/widget/GridLayout$Bounds;,
        Landroid/widget/GridLayout$Assoc;,
        Landroid/widget/GridLayout$MutableInt;,
        Landroid/widget/GridLayout$Arc;,
        Landroid/widget/GridLayout$AlignmentMode;,
        Landroid/widget/GridLayout$Orientation;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALIGNMENT_MODE:I = 0x6

.field public static final whitelist ALIGN_BOUNDS:I = 0x0

.field public static final whitelist ALIGN_MARGINS:I = 0x1

.field public static final whitelist BASELINE:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist BOTTOM:Landroid/widget/GridLayout$Alignment;

.field private static final greylist-max-o CAN_STRETCH:I = 0x2

.field public static final whitelist CENTER:Landroid/widget/GridLayout$Alignment;

.field private static final greylist-max-o COLUMN_COUNT:I = 0x3

.field private static final greylist-max-o COLUMN_ORDER_PRESERVED:I = 0x4

.field private static final greylist-max-o DEFAULT_ALIGNMENT_MODE:I = 0x1

.field static final greylist-max-o DEFAULT_CONTAINER_MARGIN:I = 0x0

.field private static final greylist-max-o DEFAULT_COUNT:I = -0x80000000

.field private static final greylist-max-o DEFAULT_ORDER_PRESERVED:Z = true

.field private static final greylist-max-o DEFAULT_ORIENTATION:I = 0x0

.field private static final greylist-max-o DEFAULT_USE_DEFAULT_MARGINS:Z = false

.field public static final whitelist END:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist FILL:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist HORIZONTAL:I = 0x0

.field private static final greylist-max-o INFLEXIBLE:I = 0x0

.field private static final greylist-max-o LEADING:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist LEFT:Landroid/widget/GridLayout$Alignment;

.field static final greylist-max-o LOG_PRINTER:Landroid/util/Printer;

.field static final greylist-max-o MAX_SIZE:I = 0x186a0

.field static final greylist-max-o NO_PRINTER:Landroid/util/Printer;

.field private static final greylist-max-o ORIENTATION:I = 0x0

.field public static final whitelist RIGHT:Landroid/widget/GridLayout$Alignment;

.field private static final greylist-max-o ROW_COUNT:I = 0x1

.field private static final greylist-max-o ROW_ORDER_PRESERVED:I = 0x2

.field public static final whitelist START:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist TOP:Landroid/widget/GridLayout$Alignment;

.field private static final greylist-max-o TRAILING:Landroid/widget/GridLayout$Alignment;

.field public static final whitelist UNDEFINED:I = -0x80000000

.field static final greylist-max-r UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

.field static final greylist-max-o UNINITIALIZED_HASH:I = 0x0

.field private static final greylist-max-o USE_DEFAULT_MARGINS:I = 0x5

.field public static final whitelist VERTICAL:I = 0x1


# instance fields
.field greylist-max-o mAlignmentMode:I

.field greylist-max-o mDefaultGap:I

.field final greylist-max-o mHorizontalAxis:Landroid/widget/GridLayout$Axis;

.field greylist-max-o mLastLayoutParamsHashCode:I

.field greylist-max-o mOrientation:I

.field greylist-max-o mPrinter:Landroid/util/Printer;

.field greylist-max-o mUseDefaultMargins:Z

.field final greylist-max-o mVerticalAxis:Landroid/widget/GridLayout$Axis;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smhandleInvalidParams(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/LogPrinter;

    const-class v1, Landroid/widget/GridLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    new-instance v0, Landroid/widget/GridLayout$1;

    invoke-direct {v0}, Landroid/widget/GridLayout$1;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    new-instance v0, Landroid/widget/GridLayout$2;

    invoke-direct {v0}, Landroid/widget/GridLayout$2;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    new-instance v0, Landroid/widget/GridLayout$3;

    invoke-direct {v0}, Landroid/widget/GridLayout$3;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    new-instance v0, Landroid/widget/GridLayout$4;

    invoke-direct {v0}, Landroid/widget/GridLayout$4;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sget-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    sget-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    sget-object v0, Landroid/widget/GridLayout;->LEADING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    sget-object v0, Landroid/widget/GridLayout;->TRAILING:Landroid/widget/GridLayout$Alignment;

    sput-object v0, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    sget-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/widget/GridLayout;->createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    sget-object v0, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/widget/GridLayout;->createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    new-instance v0, Landroid/widget/GridLayout$6;

    invoke-direct {v0}, Landroid/widget/GridLayout$6;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    new-instance v0, Landroid/widget/GridLayout$7;

    invoke-direct {v0}, Landroid/widget/GridLayout$7;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    new-instance v0, Landroid/widget/GridLayout$8;

    invoke-direct {v0}, Landroid/widget/GridLayout$8;-><init>()V

    sput-object v0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/widget/GridLayout$Axis;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$Axis-IA;)V

    iput-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    new-instance v0, Landroid/widget/GridLayout$Axis;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/GridLayout$Axis;-><init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$Axis-IA;)V

    iput-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    iput v3, p0, Landroid/widget/GridLayout;->mOrientation:I

    iput-boolean v3, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    iput v1, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    iput v3, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    sget-object v0, Landroid/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    iput-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050167

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout;->mDefaultGap:I

    sget-object v0, Lcom/android/internal/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget-object v6, Lcom/android/internal/R$styleable;->GridLayout:[I

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, v0

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Landroid/widget/GridLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/high16 v2, -0x80000000

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridLayout;->setRowCount(I)V

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/GridLayout;->setOrientation(I)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/GridLayout;->setUseDefaultMargins(Z)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/GridLayout;->setAlignmentMode(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/GridLayout;->setRowOrderPreserved(Z)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static greylist-max-o adjust(II)I
    .locals 2

    add-int v0, p0, p1

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method static greylist-max-o append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static greylist-max-o canStretch(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V
    .locals 8

    if-eqz p2, :cond_0

    const-string v0, "column"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "row"

    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p1, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v1, p1, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_1
    iget-object v2, v1, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget v3, v2, Landroid/widget/GridLayout$Interval;->min:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2

    iget v3, v2, Landroid/widget/GridLayout$Interval;->min:I

    if-gez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " indices must be positive"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    iget-object v3, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    :goto_2
    iget v5, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    if-eq v5, v4, :cond_5

    iget v4, v2, Landroid/widget/GridLayout$Interval;->max:I

    const-string v6, " count"

    if-le v4, v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v4

    if-le v4, v5, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " span mustn\'t exceed the "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static greylist-max-o clip(Landroid/widget/GridLayout$Interval;ZI)I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/widget/GridLayout$Interval;->min:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sub-int v2, p2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private greylist-max-o computeLayoutParamsHashCode()I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout$LayoutParams;

    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {v4}, Landroid/widget/GridLayout$LayoutParams;->hashCode()I

    move-result v6

    add-int/2addr v5, v6

    move v0, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private greylist-max-o consistencyCheck()V
    .locals 2

    iget v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/GridLayout;->validateLayoutParams()V

    invoke-direct {p0}, Landroid/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    invoke-direct {p0}, Landroid/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    const-string v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-direct {p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static greylist-max-o createSwitchingAlignment(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Alignment;
    .locals 1

    new-instance v0, Landroid/widget/GridLayout$5;

    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$5;-><init>(Landroid/widget/GridLayout$Alignment;Landroid/widget/GridLayout$Alignment;)V

    return-object v0
.end method

.method private greylist-max-o drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 17

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getWidth()I

    move-result v4

    sub-int v5, v4, v0

    int-to-float v7, v5

    int-to-float v8, v1

    sub-int v5, v4, v2

    int-to-float v9, v5

    int-to-float v10, v3

    move-object/from16 v6, p1

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    int-to-float v12, v0

    int-to-float v13, v1

    int-to-float v14, v2

    int-to-float v15, v3

    move-object/from16 v11, p1

    move-object/from16 v16, p6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private static greylist-max-o fits([IIII)Z
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    return v1

    :cond_0
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_2

    aget v2, p0, v0

    if-le v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static greylist-max-o getAlignment(IZ)Landroid/widget/GridLayout$Alignment;
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/16 v0, 0x70

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    and-int v2, p0, v0

    shr-int/2addr v2, v1

    sparse-switch v2, :sswitch_data_0

    sget-object v3, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    return-object v3

    :sswitch_0
    sget-object v3, Landroid/widget/GridLayout;->END:Landroid/widget/GridLayout$Alignment;

    return-object v3

    :sswitch_1
    sget-object v3, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    return-object v3

    :sswitch_2
    sget-object v3, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    return-object v3

    :sswitch_3
    if-eqz p1, :cond_2

    sget-object v3, Landroid/widget/GridLayout;->RIGHT:Landroid/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_2
    sget-object v3, Landroid/widget/GridLayout;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    :goto_2
    return-object v3

    :sswitch_4
    if-eqz p1, :cond_3

    sget-object v3, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    goto :goto_3

    :cond_3
    sget-object v3, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    :goto_3
    return-object v3

    :sswitch_5
    sget-object v3, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_4
        0x5 -> :sswitch_3
        0x7 -> :sswitch_2
        0x800003 -> :sswitch_1
        0x800005 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o getDefaultMargin(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I
    .locals 8

    iget-boolean v0, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_0

    :cond_1
    iget-object v0, p2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_0
    if-eqz p3, :cond_2

    iget-object v2, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    :goto_1
    iget-object v3, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    const/4 v4, 0x1

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez p4, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_2

    :cond_4
    move v5, p4

    :goto_2
    if-eqz v5, :cond_5

    iget v6, v3, Landroid/widget/GridLayout$Interval;->min:I

    if-nez v6, :cond_6

    goto :goto_3

    :cond_5
    iget v6, v3, Landroid/widget/GridLayout$Interval;->max:I

    invoke-virtual {v2}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v7

    if-ne v6, v7, :cond_6

    :goto_3
    move v1, v4

    :cond_6
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result v4

    return v4
.end method

.method private greylist-max-o getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/Space;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/widget/GridLayout;->mDefaultGap:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private greylist-max-o getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result v0

    return v0
.end method

.method private greylist-max-o getMargin(Landroid/view/View;ZZ)I
    .locals 6

    iget v0, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v2

    if-eqz p2, :cond_3

    iget-object v3, v2, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object v3, v2, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_2
    iget-object v4, v3, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    if-eqz p3, :cond_4

    iget v4, v4, Landroid/widget/GridLayout$Interval;->min:I

    goto :goto_3

    :cond_4
    iget v4, v4, Landroid/widget/GridLayout$Interval;->max:I

    :goto_3
    aget v5, v1, v4

    return v5
.end method

.method private greylist-max-o getMeasurement(Landroid/view/View;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method private greylist-max-o getTotalMargin(Landroid/view/View;Z)I
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static greylist-max-o handleInvalidParams(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o invalidateStructure()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridLayout;->mLastLayoutParamsHashCode:I

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateStructure()V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    return-void
.end method

.method private greylist-max-o invalidateValues()V
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->invalidateValues()V

    :cond_0
    return-void
.end method

.method static greylist-max-o max2([II)I
    .locals 4

    move v0, p1

    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private greylist-max-o measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 2

    nop

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v0

    invoke-static {p2, v0, p4}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    nop

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    invoke-static {p3, v1, p5}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private greylist-max-o measureChildrenWithMargins(IIZ)V
    .locals 18

    move-object/from16 v6, p0

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v7

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_7

    invoke-virtual {v6, v8}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v6, v9}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v10

    if-eqz p3, :cond_1

    iget v4, v10, Landroid/widget/GridLayout$LayoutParams;->width:I

    iget v5, v10, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_4

    :cond_1
    iget v0, v6, Landroid/widget/GridLayout;->mOrientation:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v11, v0

    if-eqz v11, :cond_3

    iget-object v0, v10, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object v0, v10, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_2
    move-object v12, v0

    invoke-static {v12, v11}, Landroid/widget/GridLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    sget-object v1, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    if-ne v0, v1, :cond_6

    iget-object v13, v12, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    if-eqz v11, :cond_4

    iget-object v0, v6, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_3

    :cond_4
    iget-object v0, v6, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    :goto_3
    move-object v14, v0

    invoke-virtual {v14}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v15

    iget v0, v13, Landroid/widget/GridLayout$Interval;->max:I

    aget v0, v15, v0

    iget v1, v13, Landroid/widget/GridLayout$Interval;->min:I

    aget v1, v15, v1

    sub-int v16, v0, v1

    invoke-direct {v6, v9, v11}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v0

    sub-int v17, v16, v0

    if-eqz v11, :cond_5

    iget v5, v10, Landroid/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_4

    :cond_5
    iget v4, v10, Landroid/widget/GridLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroid/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private static greylist-max-o procrusteanFill([IIII)V
    .locals 3

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method private static greylist-max-o setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V
    .locals 2

    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setRowSpecSpan(Landroid/widget/GridLayout$Interval;)V

    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout$LayoutParams;->setColumnSpecSpan(Landroid/widget/GridLayout$Interval;)V

    return-void
.end method

.method public static whitelist spec(I)Landroid/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/widget/GridLayout;->spec(II)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist spec(IF)Landroid/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/widget/GridLayout;->spec(IIF)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist spec(II)Landroid/widget/GridLayout$Spec;
    .locals 1

    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist spec(IIF)Landroid/widget/GridLayout$Spec;
    .locals 1

    sget-object v0, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0, p2}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;
    .locals 8

    new-instance v7, Landroid/widget/GridLayout$Spec;

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    const/4 v6, 0x0

    move-object v0, v7

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridLayout$Spec;-><init>(ZIILandroid/widget/GridLayout$Alignment;FLandroid/widget/GridLayout$Spec-IA;)V

    return-object v7
.end method

.method public static whitelist spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o validateLayoutParams()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridLayout;->mOrientation:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    goto :goto_1

    :cond_1
    iget-object v3, v0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    :goto_1
    iget v4, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_2

    iget v2, v3, Landroid/widget/GridLayout$Axis;->definedCount:I

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v6, v2, [I

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_e

    invoke-virtual {v0, v7}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/GridLayout$LayoutParams;

    if-eqz v1, :cond_3

    iget-object v10, v9, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_3

    :cond_3
    iget-object v10, v9, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    :goto_3
    iget-object v11, v10, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget-boolean v12, v10, Landroid/widget/GridLayout$Spec;->startDefined:Z

    invoke-virtual {v11}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v13

    if-eqz v12, :cond_4

    iget v4, v11, Landroid/widget/GridLayout$Interval;->min:I

    :cond_4
    if-eqz v1, :cond_5

    iget-object v14, v9, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_4

    :cond_5
    iget-object v14, v9, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    :goto_4
    iget-object v15, v14, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget-boolean v0, v14, Landroid/widget/GridLayout$Spec;->startDefined:Z

    move-object/from16 v16, v3

    invoke-static {v15, v0, v2}, Landroid/widget/GridLayout;->clip(Landroid/widget/GridLayout$Interval;ZI)I

    move-result v3

    if-eqz v0, :cond_6

    iget v5, v15, Landroid/widget/GridLayout$Interval;->min:I

    :cond_6
    if-eqz v2, :cond_c

    if-eqz v12, :cond_8

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v17, v8

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v17, v8

    add-int v8, v5, v3

    invoke-static {v6, v4, v5, v8}, Landroid/widget/GridLayout;->fits([IIII)Z

    move-result v8

    if-nez v8, :cond_b

    if-eqz v0, :cond_9

    add-int/lit8 v4, v4, 0x1

    move/from16 v8, v17

    goto :goto_5

    :cond_9
    add-int v8, v5, v3

    if-gt v8, v2, :cond_a

    add-int/lit8 v5, v5, 0x1

    move/from16 v8, v17

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    add-int/lit8 v4, v4, 0x1

    move/from16 v8, v17

    goto :goto_5

    :cond_b
    :goto_6
    add-int v8, v5, v3

    move/from16 v18, v0

    add-int v0, v4, v13

    invoke-static {v6, v5, v8, v0}, Landroid/widget/GridLayout;->procrusteanFill([IIII)V

    goto :goto_7

    :cond_c
    move/from16 v18, v0

    move/from16 v17, v8

    :goto_7
    if-eqz v1, :cond_d

    invoke-static {v9, v4, v13, v5, v3}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_8

    :cond_d
    invoke-static {v9, v5, v3, v4, v13}, Landroid/widget/GridLayout;->setCellGroup(Landroid/widget/GridLayout$LayoutParams;IIII)V

    :goto_8
    add-int/2addr v5, v3

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v16

    move/from16 v8, v17

    goto :goto_2

    :cond_e
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    instance-of v0, p1, Landroid/widget/GridLayout$LayoutParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V

    invoke-direct {p0, v0, v1}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/widget/GridLayout$LayoutParams;Z)V

    return v2
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/GridLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/GridLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/GridLayout$LayoutParams;
    .locals 2

    sget-boolean v0, Landroid/widget/GridLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/widget/GridLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$LayoutParams;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAlignmentMode()I
    .locals 1

    iget v0, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    return v0
.end method

.method public whitelist getColumnCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method final greylist-max-o getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$LayoutParams;

    return-object v0
.end method

.method greylist-max-o getMargin1(Landroid/view/View;ZZ)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/widget/GridLayout$LayoutParams;->bottomMargin:I

    :goto_0
    nop

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/widget/GridLayout;->getDefaultMargin(Landroid/view/View;Landroid/widget/GridLayout$LayoutParams;ZZ)I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    return v2
.end method

.method final greylist-max-o getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getOrientation()I
    .locals 1

    iget v0, p0, Landroid/widget/GridLayout;->mOrientation:I

    return v0
.end method

.method public greylist-max-o getPrinter()Landroid/util/Printer;
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    return-object v0
.end method

.method public whitelist getRowCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method public whitelist getUseDefaultMargins()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    return v0
.end method

.method public whitelist isColumnOrderPreserved()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method public whitelist isRowOrderPreserved()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method protected greylist-max-o onChildVisibilityChanged(Landroid/view/View;II)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;II)V

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    if-ne p3, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    :cond_1
    return-void
.end method

.method protected greylist-max-o onDebugDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v7, p0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v8, v0

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0x32

    const/16 v1, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v0

    iget v1, v9, Landroid/graphics/Insets;->top:I

    add-int v10, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v0

    iget v1, v9, Landroid/graphics/Insets;->left:I

    add-int v11, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v9, Landroid/graphics/Insets;->right:I

    sub-int v12, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v9, Landroid/graphics/Insets;->bottom:I

    sub-int v13, v0, v1

    iget-object v0, v7, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    iget-object v14, v0, Landroid/widget/GridLayout$Axis;->locations:[I

    if-eqz v14, :cond_1

    const/4 v0, 0x0

    array-length v15, v14

    move v6, v0

    :goto_0
    if-ge v6, v15, :cond_0

    aget v0, v14, v6

    add-int v16, v11, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move v3, v10

    move/from16 v4, v16

    move v5, v13

    move/from16 v17, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridLayout;->drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    add-int/lit8 v6, v17, 0x1

    goto :goto_0

    :cond_0
    move/from16 v17, v6

    :cond_1
    iget-object v0, v7, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    iget-object v15, v0, Landroid/widget/GridLayout$Axis;->locations:[I

    if-eqz v15, :cond_3

    const/4 v0, 0x0

    array-length v6, v15

    move v5, v0

    :goto_1
    if-ge v5, v6, :cond_2

    aget v0, v15, v5

    add-int v16, v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move/from16 v3, v16

    move v4, v12

    move/from16 v17, v5

    move/from16 v5, v16

    move/from16 v18, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridLayout;->drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    add-int/lit8 v5, v17, 0x1

    move/from16 v6, v18

    goto :goto_1

    :cond_2
    move/from16 v17, v5

    move/from16 v18, v6

    :cond_3
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDebugDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected greylist-max-o onDebugDrawMargins(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    new-instance v0, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    nop

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v3}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v6

    invoke-virtual {p0, v2, v3, v5}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v3

    invoke-virtual {p0, v2, v5, v5}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v5

    invoke-virtual {v0, v4, v6, v3, v5}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2, p1, p2}, Landroid/widget/GridLayout$LayoutParams;->onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 45

    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    sub-int v7, p4, p2

    sub-int v8, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v12

    iget-object v0, v6, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    sub-int v1, v7, v9

    sub-int/2addr v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Axis;->layout(I)V

    iget-object v0, v6, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    sub-int v1, v8, v10

    sub-int/2addr v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Axis;->layout(I)V

    iget-object v0, v6, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v13

    iget-object v0, v6, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v14

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v15

    move v5, v0

    :goto_0
    if-ge v5, v15, :cond_4

    invoke-virtual {v6, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    move/from16 v39, v5

    move/from16 v16, v8

    move/from16 v26, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v6, v4}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    iget-object v2, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    iget-object v1, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    iget-object v0, v2, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    move/from16 v16, v8

    iget-object v8, v1, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    move-object/from16 v17, v3

    iget v3, v0, Landroid/widget/GridLayout$Interval;->min:I

    aget v18, v13, v3

    iget v3, v8, Landroid/widget/GridLayout$Interval;->min:I

    aget v19, v14, v3

    iget v3, v0, Landroid/widget/GridLayout$Interval;->max:I

    aget v20, v13, v3

    iget v3, v8, Landroid/widget/GridLayout$Interval;->max:I

    aget v21, v14, v3

    sub-int v22, v20, v18

    sub-int v23, v21, v19

    const/4 v3, 0x1

    move-object/from16 v24, v8

    invoke-direct {v6, v4, v3}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v8

    const/4 v3, 0x0

    move/from16 v26, v12

    invoke-direct {v6, v4, v3}, Landroid/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v12

    move-object/from16 v28, v13

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/widget/GridLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v13

    move-object/from16 v29, v14

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/widget/GridLayout$Spec;->-$$Nest$mgetAbsoluteAlignment(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v14

    iget-object v3, v6, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v3}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/GridLayout$Bounds;

    move-object/from16 v30, v0

    iget-object v0, v6, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis;->getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Bounds;

    move-object/from16 v31, v1

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v25

    sub-int v1, v22, v25

    invoke-virtual {v13, v4, v1}, Landroid/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v25

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v32

    sub-int v1, v23, v32

    invoke-virtual {v14, v4, v1}, Landroid/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v32

    const/4 v1, 0x1

    invoke-direct {v6, v4, v1, v1}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v33

    move-object/from16 v34, v0

    const/4 v0, 0x0

    invoke-direct {v6, v4, v0, v1}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v27

    invoke-direct {v6, v4, v1, v0}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v35

    invoke-direct {v6, v4, v0, v0}, Landroid/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v36

    add-int v37, v33, v35

    add-int v38, v27, v36

    add-int v39, v8, v37

    const/16 v40, 0x1

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v41, v2

    move-object v2, v4

    move-object/from16 v42, v3

    move-object v3, v13

    move-object/from16 v43, v4

    move/from16 v4, v39

    move/from16 v39, v5

    move/from16 v5, v40

    invoke-virtual/range {v0 .. v5}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I

    move-result v40

    add-int v4, v12, v38

    const/4 v5, 0x0

    move-object/from16 v0, v34

    move-object/from16 v2, v43

    move-object v3, v14

    invoke-virtual/range {v0 .. v5}, Landroid/widget/GridLayout$Bounds;->getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I

    move-result v0

    sub-int v1, v22, v37

    invoke-virtual {v13, v2, v8, v1}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v1

    sub-int v3, v23, v38

    invoke-virtual {v14, v2, v12, v3}, Landroid/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v3

    add-int v4, v18, v25

    add-int v4, v4, v40

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->isLayoutRtl()Z

    move-result v5

    if-nez v5, :cond_1

    add-int v5, v9, v33

    add-int/2addr v5, v4

    goto :goto_1

    :cond_1
    sub-int v5, v7, v1

    sub-int/2addr v5, v11

    sub-int v5, v5, v35

    sub-int/2addr v5, v4

    :goto_1
    nop

    add-int v43, v10, v19

    add-int v43, v43, v32

    add-int v43, v43, v0

    move/from16 v44, v0

    add-int v0, v43, v27

    move/from16 v43, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-ne v1, v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    :cond_2
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/view/View;->measure(II)V

    :cond_3
    add-int v4, v5, v1

    add-int v6, v0, v3

    invoke-virtual {v2, v5, v0, v4, v6}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int/lit8 v5, v39, 0x1

    move-object/from16 v6, p0

    move/from16 v8, v16

    move/from16 v12, v26

    move-object/from16 v13, v28

    move-object/from16 v14, v29

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 10

    invoke-direct {p0}, Landroid/widget/GridLayout;->consistencyCheck()V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v2, v0

    invoke-static {p1, v2}, Landroid/widget/GridLayout;->adjust(II)I

    move-result v2

    neg-int v3, v1

    invoke-static {p2, v3}, Landroid/widget/GridLayout;->adjust(II)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    iget v4, p0, Landroid/widget/GridLayout;->mOrientation:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v4, v2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v4

    invoke-direct {p0, v2, v3, v5}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    iget-object v6, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v6, v3}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v4, v3}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    invoke-direct {p0, v2, v3, v5}, Landroid/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    iget-object v4, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v4, v2}, Landroid/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v4

    :goto_0
    add-int v7, v4, v0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v8, v6, v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    nop

    invoke-static {v7, p1, v5}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result v9

    invoke-static {v8, p2, v5}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v9, v5}, Landroid/widget/GridLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected greylist-max-o onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Landroid/widget/GridLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "supplied LayoutParams are of the wrong type"

    invoke-static {v0}, Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    return-void
.end method

.method public whitelist onViewAdded(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    return-void
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    return-void
.end method

.method public whitelist requestLayout()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateValues()V

    return-void
.end method

.method public whitelist setAlignmentMode(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/GridLayout;->mAlignmentMode:I

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setColumnCount(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setColumnOrderPreserved(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->mHorizontalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setOrientation(I)V
    .locals 1

    iget v0, p0, Landroid/widget/GridLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/GridLayout;->mOrientation:I

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public greylist-max-o setPrinter(Landroid/util/Printer;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Landroid/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    return-void
.end method

.method public whitelist setRowCount(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setCount(I)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setRowOrderPreserved(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/GridLayout;->mVerticalAxis:Landroid/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    invoke-direct {p0}, Landroid/widget/GridLayout;->invalidateStructure()V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public whitelist setUseDefaultMargins(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/GridLayout;->mUseDefaultMargins:Z

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.class public Landroid/view/ViewGroup$MarginLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarginLayoutParams"
.end annotation


# static fields
.field public static final greylist-max-o DEFAULT_MARGIN_RELATIVE:I = -0x80000000

.field private static final greylist-max-o DEFAULT_MARGIN_RESOLVED:I = 0x0

.field private static final greylist-max-o LAYOUT_DIRECTION_MASK:I = 0x3

.field private static final greylist-max-o LEFT_MARGIN_UNDEFINED_MASK:I = 0x4

.field private static final greylist-max-o NEED_RESOLUTION_MASK:I = 0x20

.field private static final greylist-max-o RIGHT_MARGIN_UNDEFINED_MASK:I = 0x8

.field private static final greylist-max-o RTL_COMPATIBILITY_MODE_MASK:I = 0x10

.field private static final greylist-max-o UNDEFINED_MARGIN:I = -0x80000000


# instance fields
.field public whitelist bottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist endMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public whitelist leftMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field greylist-max-o mMarginFlags:B
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LAYOUT_DIRECTION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x4
                mask = 0x4
                name = "LEFT_MARGIN_UNDEFINED_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "RIGHT_MARGIN_UNDEFINED_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "RTL_COMPATIBILITY_MODE_MASK"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NEED_RESOLUTION_MASK"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field public whitelist rightMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist startMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public whitelist topMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 8874
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 8734
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8743
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8876
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8877
    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8879
    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8880
    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8881
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 8797
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 8734
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8743
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8799
    sget-object v1, Lcom/android/internal/R$styleable;->ViewGroup_MarginLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 8800
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setBaseAttributes(Landroid/content/res/TypedArray;II)V

    .line 8804
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 8806
    .local v3, "margin":I
    if-ltz v3, :cond_0

    .line 8807
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8808
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8809
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8810
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    .line 8812
    :cond_0
    const/16 v5, 0x9

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 8814
    .local v5, "horizontalMargin":I
    const/16 v6, 0xa

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 8817
    .local v4, "verticalMargin":I
    const/16 v6, 0x8

    const/4 v7, 0x4

    if-ltz v5, :cond_1

    .line 8818
    iput v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8819
    iput v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 8821
    :cond_1
    const/4 v8, 0x3

    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8824
    if-ne v8, v0, :cond_2

    .line 8825
    iget-byte v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/2addr v8, v7

    int-to-byte v8, v8

    iput-byte v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8826
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8828
    :cond_2
    const/4 v8, 0x5

    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8831
    if-ne v8, v0, :cond_3

    .line 8832
    iget-byte v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/2addr v8, v6

    int-to-byte v8, v8

    iput-byte v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8833
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8837
    :cond_3
    :goto_0
    const/4 v8, 0x7

    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8840
    invoke-virtual {v1, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8844
    if-ltz v4, :cond_4

    .line 8845
    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8846
    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 8848
    :cond_4
    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8851
    const/4 v0, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8856
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8857
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8861
    .end local v4    # "verticalMargin":I
    .end local v5    # "horizontalMargin":I
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    .line 8862
    .local v0, "hasRtlSupport":Z
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 8863
    .local v4, "targetSdkVersion":I
    const/16 v5, 0x11

    if-lt v4, v5, :cond_6

    if-nez v0, :cond_7

    .line 8864
    :cond_6
    iget-byte v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8868
    :cond_7
    iget-byte v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/2addr v2, v5

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8870
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8871
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 8903
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8734
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8743
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8905
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8906
    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8908
    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8909
    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8910
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8888
    invoke-direct {p0}, Landroid/view/ViewGroup$LayoutParams;-><init>()V

    .line 8734
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8743
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8889
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 8890
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 8892
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8893
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8894
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8895
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8896
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8897
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8899
    iget-byte v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8900
    return-void
.end method

.method private greylist-max-o doResolveMargins()V
    .locals 4

    .line 9136
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v1, v0, 0x10

    const/16 v2, 0x10

    const/high16 v3, -0x80000000

    if-ne v1, v2, :cond_1

    .line 9139
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v1, v3, :cond_0

    .line 9141
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 9143
    :cond_0
    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v1, v3, :cond_6

    .line 9145
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    .line 9151
    :cond_1
    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 9160
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v1, v3, :cond_4

    .line 9161
    goto :goto_2

    .line 9153
    :pswitch_0
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v1, v3, :cond_2

    .line 9154
    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 9155
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    if-le v1, v3, :cond_3

    .line 9156
    move v2, v1

    goto :goto_1

    :cond_3
    nop

    :goto_1
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 9157
    goto :goto_4

    .line 9161
    :cond_4
    move v1, v2

    :goto_2
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 9162
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-le v1, v3, :cond_5

    .line 9163
    move v2, v1

    goto :goto_3

    :cond_5
    nop

    :goto_3
    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 9167
    :cond_6
    :goto_4
    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 9168
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final greylist-max-o copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8916
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8917
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8918
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8919
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8920
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8921
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8923
    iget-byte v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8924
    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 9199
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 9200
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const-string/jumbo v1, "leftMargin"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9201
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const-string/jumbo v1, "topMargin"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9202
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const-string/jumbo v1, "rightMargin"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9203
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const-string v1, "bottomMargin"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9204
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    const-string/jumbo v1, "startMargin"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9205
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    const-string v1, "endMargin"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9206
    return-void
.end method

.method public whitelist getLayoutDirection()I
    .locals 1

    .line 9115
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public whitelist getMarginEnd()I
    .locals 2

    .line 9063
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    .line 9064
    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 9065
    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    .line 9067
    :cond_1
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    .line 9072
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v0

    .line 9069
    :pswitch_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getMarginStart()I
    .locals 2

    .line 9030
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return v0

    .line 9031
    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 9032
    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    .line 9034
    :cond_1
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    .line 9039
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0

    .line 9036
    :pswitch_0
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o isLayoutRtl()Z
    .locals 2

    .line 9174
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isMarginRelative()Z
    .locals 2

    .line 9085
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public greylist-max-o onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 9182
    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-static {v2}, Landroid/view/View;->isLayoutModeOptical(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 9184
    .local v2, "oi":Landroid/graphics/Insets;
    :goto_0
    nop

    .line 9185
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v2, Landroid/graphics/Insets;->left:I

    add-int v6, v3, v4

    .line 9186
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v2, Landroid/graphics/Insets;->top:I

    add-int v7, v3, v4

    .line 9187
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v2, Landroid/graphics/Insets;->right:I

    sub-int v8, v3, v4

    .line 9188
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v2, Landroid/graphics/Insets;->bottom:I

    sub-int v9, v3, v4

    iget v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 9184
    move-object/from16 v5, p2

    move-object/from16 v14, p3

    invoke-static/range {v5 .. v14}, Landroid/view/ViewGroup;->-$$Nest$smfillDifference(Landroid/graphics/Canvas;IIIIIIIILandroid/graphics/Paint;)V

    .line 9194
    return-void
.end method

.method public whitelist resolveLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 9124
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setLayoutDirection(I)V

    .line 9128
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 9132
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->doResolveMargins()V

    .line 9133
    return-void

    .line 9129
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist semSetMarginsRelative(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 9006
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 9007
    return-void
.end method

.method public whitelist setLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 9095
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 9096
    return-void

    .line 9097
    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v1, v0, 0x3

    if-eq p1, v1, :cond_2

    .line 9098
    and-int/lit8 v0, v0, -0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 9099
    and-int/lit8 v1, p1, 0x3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 9100
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9101
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    goto :goto_0

    .line 9103
    :cond_1
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 9106
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist setMarginEnd(I)V
    .locals 1
    .param p1, "end"    # I

    .line 9051
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 9052
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 9053
    return-void
.end method

.method public whitelist setMarginStart(I)V
    .locals 1
    .param p1, "start"    # I

    .line 9018
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 9019
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 9020
    return-void
.end method

.method public whitelist setMargins(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 8943
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8944
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8945
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 8946
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8947
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8948
    and-int/lit8 v0, v0, -0x9

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8949
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->isMarginRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8950
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    goto :goto_0

    .line 8952
    :cond_0
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8954
    :goto_0
    return-void
.end method

.method public greylist setMarginsRelative(IIII)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 8976
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->startMargin:I

    .line 8977
    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8978
    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->endMargin:I

    .line 8979
    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8980
    iget-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->mMarginFlags:B

    .line 8981
    return-void
.end method

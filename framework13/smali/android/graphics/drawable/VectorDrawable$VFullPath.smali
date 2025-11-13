.class Landroid/graphics/drawable/VectorDrawable$VFullPath;
.super Landroid/graphics/drawable/VectorDrawable$VPath;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VFullPath"
.end annotation


# static fields
.field private static final greylist-max-o FILL_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FILL_ALPHA_INDEX:I = 0x4

.field private static final greylist-max-o FILL_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FILL_COLOR_INDEX:I = 0x3

.field private static final greylist-max-o FILL_TYPE_INDEX:I = 0xb

.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:I = 0x108

.field private static final greylist-max-o STROKE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o STROKE_ALPHA_INDEX:I = 0x2

.field private static final greylist-max-o STROKE_COLOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o STROKE_COLOR_INDEX:I = 0x1

.field private static final greylist-max-o STROKE_LINE_CAP_INDEX:I = 0x8

.field private static final greylist-max-o STROKE_LINE_JOIN_INDEX:I = 0x9

.field private static final greylist-max-o STROKE_MITER_LIMIT_INDEX:I = 0xa

.field private static final greylist-max-o STROKE_WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o STROKE_WIDTH_INDEX:I = 0x0

.field private static final greylist-max-o TOTAL_PROPERTY_COUNT:I = 0xc

.field private static final greylist-max-o TRIM_PATH_END:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TRIM_PATH_END_INDEX:I = 0x6

.field private static final greylist-max-o TRIM_PATH_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TRIM_PATH_OFFSET_INDEX:I = 0x7

.field private static final greylist-max-o TRIM_PATH_START:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VFullPath;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TRIM_PATH_START_INDEX:I = 0x5

.field private static final greylist-max-o sPropertyIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o mFillColors:Landroid/content/res/ComplexColor;

.field private final greylist-max-o mNativePtr:J

.field private greylist-max-o mPropertyData:[B

.field greylist-max-o mStrokeColors:Landroid/content/res/ComplexColor;

.field private greylist-max-o mThemeAttrs:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetFILL_ALPHA()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetFILL_COLOR()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSTROKE_ALPHA()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSTROKE_COLOR()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSTROKE_WIDTH()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTRIM_PATH_END()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTRIM_PATH_OFFSET()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTRIM_PATH_START()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 1838
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$1;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    .line 1853
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;

    const-string/jumbo v1, "strokeWidth"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_WIDTH:Landroid/util/Property;

    .line 1866
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;

    const-string/jumbo v1, "strokeColor"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_COLOR:Landroid/util/Property;

    .line 1879
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;

    const-string/jumbo v1, "strokeAlpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->STROKE_ALPHA:Landroid/util/Property;

    .line 1892
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;

    const-string v1, "fillColor"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_COLOR:Landroid/util/Property;

    .line 1905
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;

    const-string v1, "fillAlpha"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->FILL_ALPHA:Landroid/util/Property;

    .line 1918
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;

    const-string/jumbo v1, "trimPathStart"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_START:Landroid/util/Property;

    .line 1931
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;

    const-string/jumbo v1, "trimPathEnd"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_END:Landroid/util/Property;

    .line 1944
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$9;

    const-string/jumbo v1, "trimPathOffset"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->TRIM_PATH_OFFSET:Landroid/util/Property;

    .line 1957
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath$10;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 2

    .line 1981
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>()V

    .line 1977
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1978
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1982
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateFullPath()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 1983
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .locals 2
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .line 1986
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VPath;)V

    .line 1977
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1978
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1987
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateFullPath(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 1988
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 1989
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 1990
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 1991
    return-void
.end method

.method private greylist-max-o canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z
    .locals 1
    .param p1, "complexColor"    # Landroid/content/res/ComplexColor;

    .line 2234
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 42
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 2072
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x30

    .line 2073
    .local v2, "byteCount":I
    iget-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    if-nez v3, :cond_0

    .line 2076
    new-array v3, v2, [B

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    .line 2081
    :cond_0
    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    iget-object v5, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetFullPathProperties(J[BI)Z

    move-result v3

    .line 2082
    .local v3, "success":Z
    if-eqz v3, :cond_d

    .line 2086
    iget-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPropertyData:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2087
    .local v4, "properties":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2088
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v6

    .line 2089
    .local v6, "strokeWidth":F
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    .line 2090
    .local v8, "strokeColor":I
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v10

    .line 2091
    .local v10, "strokeAlpha":F
    const/16 v11, 0xc

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v12

    .line 2092
    .local v12, "fillColor":I
    const/16 v13, 0x10

    invoke-virtual {v4, v13}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v13

    .line 2093
    .local v13, "fillAlpha":F
    const/16 v14, 0x14

    invoke-virtual {v4, v14}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v14

    .line 2094
    .local v14, "trimPathStart":F
    const/16 v15, 0x18

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v15

    .line 2095
    .local v15, "trimPathEnd":F
    const/16 v7, 0x1c

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v7

    .line 2096
    .local v7, "trimPathOffset":F
    const/16 v9, 0x20

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    .line 2097
    .local v9, "strokeLineCap":I
    const/16 v11, 0x24

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v11

    .line 2098
    .local v11, "strokeLineJoin":I
    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v5

    .line 2099
    .local v5, "strokeMiterLimit":F
    move/from16 v17, v2

    .end local v2    # "byteCount":I
    .local v17, "byteCount":I
    const/16 v2, 0x2c

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 2100
    .local v2, "fillType":I
    const/16 v18, 0x0

    .line 2101
    .local v18, "fillGradient":Landroid/graphics/Shader;
    const/16 v19, 0x0

    .line 2103
    .local v19, "strokeGradient":Landroid/graphics/Shader;
    move/from16 v20, v3

    .end local v3    # "success":Z
    .local v20, "success":Z
    iget v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v21

    or-int v3, v3, v21

    iput v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    .line 2106
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v3

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    .line 2108
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2109
    .local v3, "pathName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2110
    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    .line 2111
    move-object/from16 v21, v3

    move-object/from16 v16, v4

    .end local v3    # "pathName":Ljava/lang/String;
    .end local v4    # "properties":Ljava/nio/ByteBuffer;
    .local v16, "properties":Ljava/nio/ByteBuffer;
    .local v21, "pathName":Ljava/lang/String;
    iget-wide v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move/from16 v22, v8

    .end local v8    # "strokeColor":I
    .local v22, "strokeColor":I
    iget-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathName:Ljava/lang/String;

    invoke-static {v3, v4, v8}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetName(JLjava/lang/String;)V

    goto :goto_0

    .line 2109
    .end local v16    # "properties":Ljava/nio/ByteBuffer;
    .end local v21    # "pathName":Ljava/lang/String;
    .end local v22    # "strokeColor":I
    .restart local v3    # "pathName":Ljava/lang/String;
    .restart local v4    # "properties":Ljava/nio/ByteBuffer;
    .restart local v8    # "strokeColor":I
    :cond_1
    move-object/from16 v21, v3

    move-object/from16 v16, v4

    move/from16 v22, v8

    .line 2114
    .end local v3    # "pathName":Ljava/lang/String;
    .end local v4    # "properties":Ljava/nio/ByteBuffer;
    .end local v8    # "strokeColor":I
    .restart local v16    # "properties":Ljava/nio/ByteBuffer;
    .restart local v21    # "pathName":Ljava/lang/String;
    .restart local v22    # "strokeColor":I
    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2115
    .local v3, "pathString":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 2116
    new-instance v4, Landroid/util/PathParser$PathData;

    invoke-direct {v4, v3}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mPathData:Landroid/util/PathParser$PathData;

    .line 2117
    move v4, v7

    .end local v7    # "trimPathOffset":F
    .local v4, "trimPathOffset":F
    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move/from16 v23, v12

    .end local v12    # "fillColor":I
    .local v23, "fillColor":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v7, v8, v3, v12}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetPathString(JLjava/lang/String;I)V

    goto :goto_1

    .line 2115
    .end local v4    # "trimPathOffset":F
    .end local v23    # "fillColor":I
    .restart local v7    # "trimPathOffset":F
    .restart local v12    # "fillColor":I
    :cond_2
    move v4, v7

    move/from16 v23, v12

    .line 2120
    .end local v7    # "trimPathOffset":F
    .end local v12    # "fillColor":I
    .restart local v4    # "trimPathOffset":F
    .restart local v23    # "fillColor":I
    :goto_1
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v7

    .line 2122
    .local v7, "fillColors":Landroid/content/res/ComplexColor;
    const/4 v8, 0x0

    if-eqz v7, :cond_6

    .line 2125
    instance-of v12, v7, Landroid/content/res/GradientColor;

    if-eqz v12, :cond_3

    .line 2126
    iput-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2127
    move-object v12, v7

    check-cast v12, Landroid/content/res/GradientColor;

    invoke-virtual {v12}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v12

    move-object/from16 v18, v12

    .end local v18    # "fillGradient":Landroid/graphics/Shader;
    .local v12, "fillGradient":Landroid/graphics/Shader;
    goto :goto_3

    .line 2128
    .end local v12    # "fillGradient":Landroid/graphics/Shader;
    .restart local v18    # "fillGradient":Landroid/graphics/Shader;
    :cond_3
    invoke-virtual {v7}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v7}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_2

    .line 2131
    :cond_4
    iput-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    goto :goto_3

    .line 2129
    :cond_5
    :goto_2
    iput-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2133
    :goto_3
    invoke-virtual {v7}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v12

    .end local v23    # "fillColor":I
    .local v12, "fillColor":I
    goto :goto_4

    .line 2122
    .end local v12    # "fillColor":I
    .restart local v23    # "fillColor":I
    :cond_6
    move/from16 v12, v23

    .line 2136
    .end local v23    # "fillColor":I
    .restart local v12    # "fillColor":I
    :goto_4
    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getComplexColor(I)Landroid/content/res/ComplexColor;

    move-result-object v8

    .line 2138
    .local v8, "strokeColors":Landroid/content/res/ComplexColor;
    if-eqz v8, :cond_a

    .line 2141
    move-object/from16 v37, v3

    .end local v3    # "pathString":Ljava/lang/String;
    .local v37, "pathString":Ljava/lang/String;
    instance-of v3, v8, Landroid/content/res/GradientColor;

    if-eqz v3, :cond_7

    .line 2142
    iput-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2143
    move-object v3, v8

    check-cast v3, Landroid/content/res/GradientColor;

    invoke-virtual {v3}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    move-object/from16 v19, v3

    .end local v19    # "strokeGradient":Landroid/graphics/Shader;
    .local v3, "strokeGradient":Landroid/graphics/Shader;
    goto :goto_6

    .line 2144
    .end local v3    # "strokeGradient":Landroid/graphics/Shader;
    .restart local v19    # "strokeGradient":Landroid/graphics/Shader;
    :cond_7
    invoke-virtual {v8}, Landroid/content/res/ComplexColor;->isStateful()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v8}, Landroid/content/res/ComplexColor;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    .line 2147
    :cond_8
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    goto :goto_6

    .line 2145
    :cond_9
    :goto_5
    iput-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2149
    :goto_6
    invoke-virtual {v8}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v3

    .end local v22    # "strokeColor":I
    .local v3, "strokeColor":I
    goto :goto_7

    .line 2138
    .end local v37    # "pathString":Ljava/lang/String;
    .local v3, "pathString":Ljava/lang/String;
    .restart local v22    # "strokeColor":I
    :cond_a
    move-object/from16 v37, v3

    .end local v3    # "pathString":Ljava/lang/String;
    .restart local v37    # "pathString":Ljava/lang/String;
    move/from16 v3, v22

    .line 2152
    .end local v22    # "strokeColor":I
    .local v3, "strokeColor":I
    :goto_7
    move-object/from16 v22, v7

    move-object/from16 v38, v8

    .end local v7    # "fillColors":Landroid/content/res/ComplexColor;
    .end local v8    # "strokeColors":Landroid/content/res/ComplexColor;
    .local v22, "fillColors":Landroid/content/res/ComplexColor;
    .local v38, "strokeColors":Landroid/content/res/ComplexColor;
    iget-wide v7, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 2153
    const-wide/16 v23, 0x0

    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v25

    move/from16 v39, v3

    move-wide/from16 v40, v25

    move/from16 v25, v2

    move-wide/from16 v2, v40

    goto :goto_8

    :cond_b
    move/from16 v25, v2

    move/from16 v39, v3

    move-wide/from16 v2, v23

    .line 2152
    .end local v2    # "fillType":I
    .end local v3    # "strokeColor":I
    .local v25, "fillType":I
    .local v39, "strokeColor":I
    :goto_8
    invoke-static {v7, v8, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathFillGradient(JJ)V

    .line 2154
    iget-wide v2, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    .line 2155
    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v23

    :cond_c
    move-wide/from16 v7, v23

    .line 2154
    invoke-static {v2, v3, v7, v8}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathStrokeGradient(JJ)V

    .line 2157
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 2159
    .end local v13    # "fillAlpha":F
    .local v2, "fillAlpha":F
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2161
    .end local v9    # "strokeLineCap":I
    .local v3, "strokeLineCap":I
    const/16 v7, 0x9

    invoke-virtual {v1, v7, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 2163
    .end local v11    # "strokeLineJoin":I
    .local v7, "strokeLineJoin":I
    const/16 v8, 0xa

    invoke-virtual {v1, v8, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 2165
    const/16 v8, 0xb

    invoke-virtual {v1, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 2167
    .end local v10    # "strokeAlpha":F
    .local v8, "strokeAlpha":F
    const/4 v9, 0x4

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 2169
    const/4 v9, 0x6

    invoke-virtual {v1, v9, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 2171
    .end local v15    # "trimPathEnd":F
    .local v9, "trimPathEnd":F
    const/4 v10, 0x7

    invoke-virtual {v1, v10, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 2173
    const/4 v10, 0x5

    invoke-virtual {v1, v10, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 2175
    .end local v14    # "trimPathStart":F
    .local v10, "trimPathStart":F
    const/16 v11, 0xd

    move/from16 v13, v25

    .end local v25    # "fillType":I
    .local v13, "fillType":I
    invoke-virtual {v1, v11, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 2177
    .end local v13    # "fillType":I
    .local v11, "fillType":I
    iget-wide v13, v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    move-wide/from16 v23, v13

    move/from16 v25, v6

    move/from16 v26, v39

    move/from16 v27, v8

    move/from16 v28, v12

    move/from16 v29, v2

    move/from16 v30, v10

    move/from16 v31, v9

    move/from16 v32, v4

    move/from16 v33, v5

    move/from16 v34, v3

    move/from16 v35, v7

    move/from16 v36, v11

    invoke-static/range {v23 .. v36}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathProperties(JFIFIFFFFFIII)V

    .line 2180
    return-void

    .line 2083
    .end local v4    # "trimPathOffset":F
    .end local v5    # "strokeMiterLimit":F
    .end local v6    # "strokeWidth":F
    .end local v7    # "strokeLineJoin":I
    .end local v8    # "strokeAlpha":F
    .end local v9    # "trimPathEnd":F
    .end local v10    # "trimPathStart":F
    .end local v11    # "fillType":I
    .end local v12    # "fillColor":I
    .end local v16    # "properties":Ljava/nio/ByteBuffer;
    .end local v17    # "byteCount":I
    .end local v18    # "fillGradient":Landroid/graphics/Shader;
    .end local v19    # "strokeGradient":Landroid/graphics/Shader;
    .end local v20    # "success":Z
    .end local v21    # "pathName":Ljava/lang/String;
    .end local v22    # "fillColors":Landroid/content/res/ComplexColor;
    .end local v37    # "pathString":Ljava/lang/String;
    .end local v38    # "strokeColors":Landroid/content/res/ComplexColor;
    .end local v39    # "strokeColor":I
    .local v2, "byteCount":I
    .local v3, "success":Z
    :cond_d
    move/from16 v17, v2

    move/from16 v20, v3

    .end local v2    # "byteCount":I
    .end local v3    # "success":Z
    .restart local v17    # "byteCount":I
    .restart local v20    # "success":Z
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error: inconsistent property count"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 7
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 2200
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    .line 2201
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2202
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 2203
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2209
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    .line 2210
    .local v0, "fillCanApplyTheme":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v1

    .line 2212
    .local v1, "strokeCanApplyTheme":Z
    if-eqz v0, :cond_2

    .line 2213
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v2, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2214
    instance-of v3, v2, Landroid/content/res/GradientColor;

    if-eqz v3, :cond_1

    .line 2215
    iget-wide v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    check-cast v2, Landroid/content/res/GradientColor;

    .line 2216
    invoke-virtual {v2}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v5

    .line 2215
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathFillGradient(JJ)V

    goto :goto_0

    .line 2217
    :cond_1
    instance-of v3, v2, Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    .line 2218
    iget-wide v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-virtual {v2}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v2

    invoke-static {v3, v4, v2}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillColor(JI)V

    .line 2222
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 2223
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-virtual {v2, p1}, Landroid/content/res/ComplexColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2224
    instance-of v3, v2, Landroid/content/res/GradientColor;

    if-eqz v3, :cond_3

    .line 2225
    iget-wide v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    check-cast v2, Landroid/content/res/GradientColor;

    .line 2226
    invoke-virtual {v2}, Landroid/content/res/GradientColor;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v5

    .line 2225
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateFullPathStrokeGradient(JJ)V

    goto :goto_1

    .line 2227
    :cond_3
    instance-of v3, v2, Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_4

    .line 2228
    iget-wide v3, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-virtual {v2}, Landroid/content/res/ComplexColor;->getDefaultColor()I

    move-result v2

    invoke-static {v3, v4, v2}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeColor(JI)V

    .line 2231
    :cond_4
    :goto_1
    return-void
.end method

.method public greylist-max-o canApplyTheme()Z
    .locals 3

    .line 2184
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2185
    return v1

    .line 2188
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v0

    .line 2189
    .local v0, "fillCanApplyTheme":Z
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->canComplexColorApplyTheme(Landroid/content/res/ComplexColor;)Z

    move-result v2

    .line 2190
    .local v2, "strokeCanApplyTheme":Z
    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 2193
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 2191
    :cond_2
    :goto_0
    return v1
.end method

.method greylist-max-o getFillAlpha()F
    .locals 2

    .line 2290
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetFillAlpha(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o getFillColor()I
    .locals 2

    .line 2277
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetFillColor(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o getNativePtr()J
    .locals 2

    .line 2060
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    return-wide v0
.end method

.method greylist-max-o getNativeSize()I
    .locals 1

    .line 2055
    const/16 v0, 0x108

    return v0
.end method

.method greylist-max-o getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1994
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VPath;->getProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    .line 1995
    .local v0, "p":Landroid/util/Property;
    if-eqz v0, :cond_0

    .line 1996
    return-object v0

    .line 1998
    :cond_0
    sget-object v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1999
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Property;

    return-object v1

    .line 2002
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o getPropertyIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 2007
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->sPropertyIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2008
    const/4 v0, -0x1

    return v0

    .line 2010
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method greylist-max-o getStrokeAlpha()F
    .locals 2

    .line 2265
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetStrokeAlpha(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o getStrokeColor()I
    .locals 2

    .line 2240
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetStrokeColor(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o getStrokeWidth()F
    .locals 2

    .line 2253
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetStrokeWidth(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o getTrimPathEnd()F
    .locals 2

    .line 2314
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetTrimPathEnd(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o getTrimPathOffset()F
    .locals 2

    .line 2326
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetTrimPathOffset(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o getTrimPathStart()F
    .locals 2

    .line 2302
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetTrimPathStart(J)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o hasFocusStateSpecified()Z
    .locals 2

    .line 2047
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 2048
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/content/res/ColorStateList;

    .line 2050
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2047
    :goto_0
    return v0
.end method

.method public greylist-max-o inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 2065
    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawablePath:[I

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2067
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 2068
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2069
    return-void
.end method

.method public greylist-max-o isStateful()Z
    .locals 1

    .line 2042
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v0, :cond_0

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

.method public greylist-max-o onStateChange([I)Z
    .locals 7
    .param p1, "stateSet"    # [I

    .line 2016
    const/4 v0, 0x0

    .line 2018
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    instance-of v1, v1, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 2019
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeColor()I

    move-result v1

    .line 2020
    .local v1, "oldStrokeColor":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/ColorStateList;

    .line 2021
    invoke-virtual {v4, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 2022
    .local v4, "newStrokeColor":I
    if-eq v1, v4, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    or-int/2addr v0, v5

    .line 2023
    if-eq v1, v4, :cond_1

    .line 2024
    iget-wide v5, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v5, v6, v4}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeColor(JI)V

    .line 2028
    .end local v1    # "oldStrokeColor":I
    .end local v4    # "newStrokeColor":I
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    if-eqz v1, :cond_3

    instance-of v1, v1, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    .line 2029
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getFillColor()I

    move-result v1

    .line 2030
    .local v1, "oldFillColor":I
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    check-cast v4, Landroid/content/res/ColorStateList;

    invoke-virtual {v4, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 2031
    .local v4, "newFillColor":I
    if-eq v1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    or-int/2addr v0, v2

    .line 2032
    if-eq v1, v4, :cond_3

    .line 2033
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillColor(JI)V

    .line 2037
    .end local v1    # "oldFillColor":I
    .end local v4    # "newFillColor":I
    :cond_3
    return v0
.end method

.method greylist-max-o setFillAlpha(F)V
    .locals 2
    .param p1, "fillAlpha"    # F

    .line 2295
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2296
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillAlpha(JF)V

    .line 2298
    :cond_0
    return-void
.end method

.method greylist-max-o setFillColor(I)V
    .locals 2
    .param p1, "fillColor"    # I

    .line 2282
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mFillColors:Landroid/content/res/ComplexColor;

    .line 2283
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2284
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetFillColor(JI)V

    .line 2286
    :cond_0
    return-void
.end method

.method greylist-max-o setStrokeAlpha(F)V
    .locals 2
    .param p1, "strokeAlpha"    # F

    .line 2270
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2271
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeAlpha(JF)V

    .line 2273
    :cond_0
    return-void
.end method

.method greylist-max-o setStrokeColor(I)V
    .locals 2
    .param p1, "strokeColor"    # I

    .line 2245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mStrokeColors:Landroid/content/res/ComplexColor;

    .line 2246
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2247
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeColor(JI)V

    .line 2249
    :cond_0
    return-void
.end method

.method greylist-max-o setStrokeWidth(F)V
    .locals 2
    .param p1, "strokeWidth"    # F

    .line 2258
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2259
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetStrokeWidth(JF)V

    .line 2261
    :cond_0
    return-void
.end method

.method greylist-max-o setTrimPathEnd(F)V
    .locals 2
    .param p1, "trimPathEnd"    # F

    .line 2319
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2320
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTrimPathEnd(JF)V

    .line 2322
    :cond_0
    return-void
.end method

.method greylist-max-o setTrimPathOffset(F)V
    .locals 2
    .param p1, "trimPathOffset"    # F

    .line 2331
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2332
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTrimPathOffset(JF)V

    .line 2334
    :cond_0
    return-void
.end method

.method greylist-max-o setTrimPathStart(F)V
    .locals 2
    .param p1, "trimPathStart"    # F

    .line 2307
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2308
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTrimPathStart(JF)V

    .line 2310
    :cond_0
    return-void
.end method

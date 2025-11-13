.class public final Landroid/view/DisplayShape;
.super Ljava/lang/Object;
.source "DisplayShape.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayShape$Cache;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayShape;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NONE:Landroid/view/DisplayShape;


# instance fields
.field private final blacklist mDisplayHeight:I

.field public final blacklist mDisplayShapeSpec:Ljava/lang/String;

.field private final blacklist mDisplayWidth:I

.field private final blacklist mOffsetX:I

.field private final blacklist mOffsetY:I

.field private final blacklist mPhysicalPixelDisplaySizeRatio:F

.field private final blacklist mRotation:I

.field private final blacklist mScale:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayHeight(Landroid/view/DisplayShape;)I
    .locals 0

    iget p0, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayWidth(Landroid/view/DisplayShape;)I
    .locals 0

    iget p0, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffsetX(Landroid/view/DisplayShape;)I
    .locals 0

    iget p0, p0, Landroid/view/DisplayShape;->mOffsetX:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOffsetY(Landroid/view/DisplayShape;)I
    .locals 0

    iget p0, p0, Landroid/view/DisplayShape;->mOffsetY:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/DisplayShape;)F
    .locals 0

    iget p0, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRotation(Landroid/view/DisplayShape;)I
    .locals 0

    iget p0, p0, Landroid/view/DisplayShape;->mRotation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScale(Landroid/view/DisplayShape;)F
    .locals 0

    iget p0, p0, Landroid/view/DisplayShape;->mScale:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 7

    new-instance v6, Landroid/view/DisplayShape;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFI)V

    sput-object v6, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    new-instance v0, Landroid/view/DisplayShape$1;

    invoke-direct {v0}, Landroid/view/DisplayShape$1;-><init>()V

    sput-object v0, Landroid/view/DisplayShape;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIFI)V
    .locals 9

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFIIIF)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIFIIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    iput p2, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    iput p3, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    iput p4, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    iput p5, p0, Landroid/view/DisplayShape;->mRotation:I

    iput p6, p0, Landroid/view/DisplayShape;->mOffsetX:I

    iput p7, p0, Landroid/view/DisplayShape;->mOffsetY:I

    iput p8, p0, Landroid/view/DisplayShape;->mScale:F

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIFIIIFLandroid/view/DisplayShape-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFIIIF)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIFILandroid/view/DisplayShape-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFI)V

    return-void
.end method

.method public static blacklist createDefaultDisplayShape(IIZ)Landroid/view/DisplayShape;
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/view/DisplayShape;->createDefaultSpecString(IIZ)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p0, p1}, Landroid/view/DisplayShape;->fromSpecString(Ljava/lang/String;FII)Landroid/view/DisplayShape;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createDefaultSpecString(IIZ)Ljava/lang/String;
    .locals 7

    const-string v0, " Z"

    const-string v1, ","

    if-eqz p2, :cond_0

    int-to-float v2, p0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v4, p1

    div-float/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "M0,"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " A"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " 0 1,1 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " 0 1,1 0,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "M0,0 L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0 L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " L0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static blacklist fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayShape;
    .locals 4

    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->getBuiltInDisplayIsRound(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, p1}, Landroid/view/DisplayShape;->getSpecString(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3, p4, p5}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result v2

    invoke-static {v1, v2, p4, p5}, Landroid/view/DisplayShape;->fromSpecString(Ljava/lang/String;FII)Landroid/view/DisplayShape;

    move-result-object v3

    return-object v3

    :cond_1
    :goto_0
    invoke-static {p4, p5, v0}, Landroid/view/DisplayShape;->createDefaultDisplayShape(IIZ)Landroid/view/DisplayShape;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist fromSpecString(Ljava/lang/String;FII)Landroid/view/DisplayShape;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/view/DisplayShape$Cache;->getDisplayShape(Ljava/lang/String;FII)Landroid/view/DisplayShape;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSpecString(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    const v1, 0x10700da

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const v2, 0x1040374

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/view/DisplayShape;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/view/DisplayShape;

    iget-object v3, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    iget v4, v1, Landroid/view/DisplayShape;->mDisplayWidth:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    iget v4, v1, Landroid/view/DisplayShape;->mDisplayHeight:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    iget v4, v1, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Landroid/view/DisplayShape;->mRotation:I

    iget v4, v1, Landroid/view/DisplayShape;->mRotation:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/view/DisplayShape;->mOffsetX:I

    iget v4, v1, Landroid/view/DisplayShape;->mOffsetX:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/view/DisplayShape;->mOffsetY:I

    iget v4, v1, Landroid/view/DisplayShape;->mOffsetY:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/view/DisplayShape;->mScale:F

    iget v4, v1, Landroid/view/DisplayShape;->mScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public whitelist getPath()Landroid/graphics/Path;
    .locals 1

    invoke-static {p0}, Landroid/view/DisplayShape$Cache;->getPath(Landroid/view/DisplayShape;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget-object v0, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    iget v1, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Landroid/view/DisplayShape;->mRotation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/view/DisplayShape;->mOffsetX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/view/DisplayShape;->mOffsetY:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Landroid/view/DisplayShape;->mScale:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setOffset(II)Landroid/view/DisplayShape;
    .locals 10

    new-instance v9, Landroid/view/DisplayShape;

    iget-object v1, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    iget v2, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    iget v3, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    iget v4, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    iget v5, p0, Landroid/view/DisplayShape;->mRotation:I

    iget v8, p0, Landroid/view/DisplayShape;->mScale:F

    move-object v0, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFIIIF)V

    return-object v9
.end method

.method public blacklist setRotation(I)Landroid/view/DisplayShape;
    .locals 10

    new-instance v9, Landroid/view/DisplayShape;

    iget-object v1, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    iget v2, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    iget v3, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    iget v4, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    iget v6, p0, Landroid/view/DisplayShape;->mOffsetX:I

    iget v7, p0, Landroid/view/DisplayShape;->mOffsetY:I

    iget v8, p0, Landroid/view/DisplayShape;->mScale:F

    move-object v0, v9

    move v5, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFIIIF)V

    return-object v9
.end method

.method public blacklist setScale(F)Landroid/view/DisplayShape;
    .locals 10

    new-instance v9, Landroid/view/DisplayShape;

    iget-object v1, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    iget v2, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    iget v3, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    iget v4, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    iget v5, p0, Landroid/view/DisplayShape;->mRotation:I

    iget v6, p0, Landroid/view/DisplayShape;->mOffsetX:I

    iget v7, p0, Landroid/view/DisplayShape;->mOffsetY:I

    move-object v0, v9

    move v8, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/DisplayShape;-><init>(Ljava/lang/String;IIFIIIF)V

    return-object v9
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayShape{ spec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " physicalPixelDisplaySizeRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayShape;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayShape;->mOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayShape;->mOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DisplayShape;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Landroid/view/DisplayShape;->mDisplayShapeSpec:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/DisplayShape;->mDisplayWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/DisplayShape;->mDisplayHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/DisplayShape;->mPhysicalPixelDisplaySizeRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/DisplayShape;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/DisplayShape;->mOffsetX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/DisplayShape;->mOffsetY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/DisplayShape;->mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

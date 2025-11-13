.class public Landroid/view/InsetsState;
.super Ljava/lang/Object;
.source "InsetsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsState$OnTraverseCallbacks;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

.field private final blacklist mDisplayFrame:Landroid/graphics/Rect;

.field private blacklist mDisplayShape:Landroid/view/DisplayShape;

.field private blacklist mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private final blacklist mRoundedCornerFrame:Landroid/graphics/Rect;

.field private blacklist mRoundedCorners:Landroid/view/RoundedCorners;

.field private final blacklist mSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/InsetsState$1;

    invoke-direct {v0}, Landroid/view/InsetsState$1;-><init>()V

    sput-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {p0, p1}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsState;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsState;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    return-void
.end method

.method private blacklist calculateRelativeCutout(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .locals 6

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v1

    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v5

    if-lt v1, v5, :cond_2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    if-lt v2, v5, :cond_2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v5

    if-lt v3, v5, :cond_2

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v5

    if-lt v4, v5, :cond_2

    sget-object v5, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v5

    :cond_2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object v5

    return-object v5
.end method

.method private blacklist calculateRelativeDisplayShape(Landroid/graphics/Rect;)Landroid/view/DisplayShape;
    .locals 3

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayShape;->setOffset(II)Landroid/view/DisplayShape;

    move-result-object v0

    return-object v0
.end method

.method private blacklist calculateRelativePrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;
    .locals 5

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/PrivacyIndicatorBounds;->inset(IIII)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v4

    return-object v4
.end method

.method private blacklist calculateRelativeRoundedCorners(Landroid/graphics/Rect;)Landroid/view/RoundedCorners;
    .locals 6

    if-nez p1, :cond_0

    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v1, p1, v0}, Landroid/view/RoundedCorners;->insetWithFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/RoundedCorners;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object v1

    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/view/RoundedCorners;->inset(IIII)Landroid/view/RoundedCorners;

    move-result-object v5

    return-object v5
.end method

.method private static blacklist canControlSource(Landroid/graphics/Rect;Landroid/view/InsetsSource;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, v1, Landroid/graphics/Insets;->left:I

    if-eq v5, v3, :cond_1

    iget v5, v1, Landroid/graphics/Insets;->right:I

    if-eq v5, v3, :cond_1

    iget v5, v1, Landroid/graphics/Insets;->top:I

    if-eq v5, v4, :cond_1

    iget v5, v1, Landroid/graphics/Insets;->bottom:I

    if-ne v5, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist clearsCompatInsets(IIII)Z
    .locals 1

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_1

    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7da

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    if-eq p2, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist concatenate([Landroid/graphics/Rect;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 4

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Landroid/graphics/Rect;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private blacklist processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;)V
    .locals 12

    invoke-virtual {p1, p2, p3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v9

    invoke-virtual {p1, p2, p3}, Landroid/view/InsetsSource;->calculateBoundingRects(Landroid/graphics/Rect;Z)[Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v11

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v6, v9

    move-object v7, v10

    move v8, v11

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    const/16 v0, 0x20

    if-ne v11, v0, :cond_0

    const/16 v8, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    :cond_0
    const/4 v0, 0x4

    if-ne v11, v0, :cond_1

    const/16 v8, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    const/16 v8, 0x20

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    const/16 v8, 0x40

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    :cond_1
    return-void
.end method

.method private blacklist processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V
    .locals 3

    invoke-static {p8}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v1, p6}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p2, v0

    if-nez v1, :cond_0

    aput-object p6, p2, v0

    goto :goto_0

    :cond_0
    invoke-static {v1, p6}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v2

    aput-object v2, p2, v0

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    aput-boolean v1, p4, v0

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p6}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result v2

    invoke-virtual {p3, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3
    if-eqz p5, :cond_5

    array-length v1, p7

    if-lez v1, :cond_5

    aget-object v1, p5, v0

    if-nez v1, :cond_4

    aput-object p7, p5, v0

    goto :goto_1

    :cond_4
    invoke-static {v1, p7}, Landroid/view/InsetsState;->concatenate([Landroid/graphics/Rect;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, p5, v0

    :cond_5
    :goto_1
    return-void
.end method

.method public static blacklist traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V
    .locals 8

    invoke-interface {p2, p0, p1}, Landroid/view/InsetsState$OnTraverseCallbacks;->onStart(Landroid/view/InsetsState;Landroid/view/InsetsState;)V

    invoke-virtual {p0}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceIdAt(I)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceIdAt(I)I

    move-result v5

    :goto_1
    if-eq v4, v5, :cond_1

    if-ge v4, v5, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v6

    invoke-interface {p2, v2, v6}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdNotFoundInState2(ILandroid/view/InsetsSource;)V

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceIdAt(I)I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v6

    invoke-interface {p2, v3, v6}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdNotFoundInState1(ILandroid/view/InsetsSource;)V

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceIdAt(I)I

    move-result v5

    goto :goto_1

    :cond_1
    if-ge v2, v0, :cond_3

    if-lt v3, v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v6

    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V

    add-int/lit8 v2, v2, 0x1

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-ge v3, v1, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdNotFoundInState1(ILandroid/view/InsetsSource;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdNotFoundInState2(ILandroid/view/InsetsSource;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-interface {p2, p0, p1}, Landroid/view/InsetsState$OnTraverseCallbacks;->onFinish(Landroid/view/InsetsState;Landroid/view/InsetsState;)V

    return-void
.end method


# virtual methods
.method public blacklist addSource(Landroid/view/InsetsSource;)V
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;II)Landroid/graphics/Insets;
    .locals 5

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSource;

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    and-int/2addr v4, p2

    and-int/2addr v4, p3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1, v2}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;
    .locals 4

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    and-int/2addr v3, p2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p1, p3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;
    .locals 33

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move/from16 v12, p5

    const/16 v0, 0xa

    new-array v11, v0, [Landroid/graphics/Insets;

    new-array v9, v0, [Landroid/graphics/Insets;

    new-array v8, v0, [Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v7, v0, [[Landroid/graphics/Rect;

    new-array v6, v0, [[Landroid/graphics/Rect;

    iget-object v0, v15, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_0
    if-ltz v5, :cond_6

    iget-object v0, v15, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/InsetsSource;

    invoke-virtual/range {v18 .. v18}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/InsetsSource;->getFlags()I

    move-result v19

    and-int/lit8 v19, v19, 0x4

    if-eqz v19, :cond_0

    or-int/2addr v1, v0

    move/from16 v19, v1

    goto :goto_1

    :cond_0
    move/from16 v19, v1

    :goto_1
    nop

    invoke-virtual/range {v18 .. v18}, Landroid/view/InsetsSource;->getFlags()I

    move-result v1

    const/16 v17, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move/from16 v17, v1

    goto :goto_2

    :cond_1
    move/from16 v17, v4

    :goto_2
    invoke-virtual/range {v18 .. v18}, Landroid/view/InsetsSource;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    or-int v1, v3, v0

    move/from16 v20, v1

    goto :goto_3

    :cond_2
    move/from16 v20, v3

    :goto_3
    const/4 v3, 0x0

    move v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v14, v4

    move-object v4, v11

    move/from16 v21, v5

    move-object/from16 v5, p9

    move-object/from16 v29, v6

    move-object v6, v8

    move-object/from16 v30, v7

    invoke-direct/range {v0 .. v7}, Landroid/view/InsetsState;->processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    if-eq v14, v0, :cond_5

    if-eqz v13, :cond_3

    invoke-virtual/range {v18 .. v18}, Landroid/view/InsetsSource;->getId()I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    goto :goto_4

    :cond_3
    move-object/from16 v0, v18

    :goto_4
    nop

    if-nez v0, :cond_4

    move-object v5, v8

    move-object v6, v9

    move-object v7, v11

    move v4, v12

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v5, v8

    move-object/from16 v8, p0

    move-object v6, v9

    move-object v9, v0

    move-object v7, v11

    move v11, v4

    move v4, v12

    move-object v12, v6

    move-object v13, v1

    move v1, v14

    move-object v14, v3

    move-object/from16 v15, v29

    invoke-direct/range {v8 .. v15}, Landroid/view/InsetsState;->processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_5
    move-object v5, v8

    move-object v6, v9

    move-object v7, v11

    move v4, v12

    move v1, v14

    :goto_5
    add-int/lit8 v0, v21, -0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move v12, v4

    move-object v8, v5

    move-object v9, v6

    move-object v11, v7

    move/from16 v4, v17

    move/from16 v1, v19

    move/from16 v3, v20

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move v5, v0

    goto/16 :goto_0

    :cond_6
    move/from16 v21, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v11

    move v0, v12

    move/from16 v8, p4

    and-int/lit16 v9, v8, 0xf0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v11

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v12

    or-int/2addr v11, v12

    const/16 v12, 0x10

    if-ne v9, v12, :cond_7

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v12

    or-int/2addr v11, v12

    :cond_7
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_8

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v12

    not-int v12, v12

    and-int/2addr v11, v12

    :cond_8
    move/from16 v15, p7

    move/from16 v14, p8

    invoke-static {v15, v0, v14, v1}, Landroid/view/InsetsState;->clearsCompatInsets(IIII)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v11, 0x0

    move/from16 v31, v11

    goto :goto_6

    :cond_9
    move/from16 v31, v11

    :goto_6
    new-instance v32, Landroid/view/WindowInsets;

    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativeCutout(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v19

    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativeRoundedCorners(Landroid/graphics/Rect;)Landroid/view/RoundedCorners;

    move-result-object v20

    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativePrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v21

    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativeDisplayShape(Landroid/graphics/Rect;)Landroid/view/DisplayShape;

    move-result-object v22

    move/from16 v13, p6

    and-int/lit16 v11, v13, 0x100

    if-eqz v11, :cond_a

    move/from16 v24, v16

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    move/from16 v24, v11

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v27

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v28

    move-object/from16 v11, v32

    move-object v12, v7

    move-object v13, v6

    move-object v14, v5

    move/from16 v15, p3

    move/from16 v16, v1

    move/from16 v17, v4

    move/from16 v18, v3

    move/from16 v23, v31

    move-object/from16 v25, v30

    move-object/from16 v26, v29

    invoke-direct/range {v11 .. v28}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    return-object v32
.end method

.method public blacklist calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    invoke-static {p1, v2}, Landroid/view/InsetsState;->canControlSource(Landroid/graphics/Rect;Landroid/view/InsetsSource;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    or-int/2addr v0, v3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public blacklist calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;
    .locals 7

    and-int/lit16 v0, p4, 0xf0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    :goto_0
    nop

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iget-object v4, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_3

    iget-object v5, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InsetsSource;

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    move-result v6

    and-int/2addr v6, v1

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    move-result v6

    or-int/2addr v2, v6

    :cond_2
    invoke-virtual {v5, p1}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v3

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    invoke-static {p2, p5, p3, v2}, Landroid/view/InsetsState;->clearsCompatInsets(IIII)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_3

    :cond_4
    move-object v4, v3

    :goto_3
    return-object v4
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "InsetsState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDisplayFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDisplayCutout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mRoundedCorners="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mRoundedCornerFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mPrivacyIndicatorBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDisplayShape="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v4, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsSource;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/view/InsetsSource;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    sget v3, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    if-eqz v2, :cond_0

    const-wide v3, 0x20b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v3

    const-wide v4, 0x10b00000003L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/DisplayCutout;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v0

    return v0
.end method

.method public blacklist equals(Ljava/lang/Object;ZZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_9

    :cond_1
    move-object v4, v1

    check-cast v4, Landroid/view/InsetsState;

    iget-object v5, v0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v6, v4, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v6, v4, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v5, v6}, Landroid/view/DisplayCutout$ParcelableWrapper;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v6, v4, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v5, v6}, Landroid/view/RoundedCorners;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v6, v4, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v6, v4, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v5, v6}, Landroid/view/PrivacyIndicatorBounds;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    iget-object v6, v4, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v5, v6}, Landroid/view/DisplayShape;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object v5, v0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    iget-object v6, v4, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v2

    return v2

    :cond_3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-lt v9, v7, :cond_5

    if-ge v10, v8, :cond_4

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    :goto_1
    const/4 v11, 0x0

    if-ge v9, v7, :cond_6

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/InsetsSource;

    goto :goto_2

    :cond_6
    move-object v12, v11

    :goto_2
    nop

    :goto_3
    if-eqz v12, :cond_a

    if-eqz p2, :cond_7

    invoke-virtual {v12}, Landroid/view/InsetsSource;->getType()I

    move-result v13

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v14

    if-eq v13, v14, :cond_8

    :cond_7
    if-eqz p3, :cond_a

    invoke-virtual {v12}, Landroid/view/InsetsSource;->getType()I

    move-result v13

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v14

    if-ne v13, v14, :cond_a

    invoke-virtual {v12}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v13

    if-nez v13, :cond_a

    :cond_8
    add-int/lit8 v9, v9, 0x1

    if-ge v9, v7, :cond_9

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/InsetsSource;

    goto :goto_4

    :cond_9
    move-object v13, v11

    :goto_4
    move-object v12, v13

    goto :goto_3

    :cond_a
    if-ge v10, v8, :cond_b

    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/InsetsSource;

    goto :goto_5

    :cond_b
    move-object v13, v11

    :goto_5
    nop

    :goto_6
    if-eqz v13, :cond_f

    if-eqz p2, :cond_c

    invoke-virtual {v13}, Landroid/view/InsetsSource;->getType()I

    move-result v14

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v15

    if-eq v14, v15, :cond_d

    :cond_c
    if-eqz p3, :cond_f

    invoke-virtual {v13}, Landroid/view/InsetsSource;->getType()I

    move-result v14

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v15

    if-ne v14, v15, :cond_f

    invoke-virtual {v13}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v14

    if-nez v14, :cond_f

    :cond_d
    add-int/lit8 v10, v10, 0x1

    if-ge v10, v8, :cond_e

    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/InsetsSource;

    goto :goto_7

    :cond_e
    move-object v14, v11

    :goto_7
    move-object v13, v14

    goto :goto_6

    :cond_f
    invoke-static {v12, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    return v3

    :cond_10
    add-int/lit8 v9, v9, 0x1

    nop

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_11
    :goto_8
    return v3

    :cond_12
    :goto_9
    return v3
.end method

.method public blacklist getDisplayCutout()Landroid/view/DisplayCutout;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayCutoutSafe(Landroid/graphics/Rect;)V
    .locals 4

    const v0, -0x186a0

    const v1, 0x186a0

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    if-lez v2, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    if-lez v2, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    :cond_2
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    if-lez v2, :cond_3

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return-void
.end method

.method public blacklist getDisplayFrame()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getDisplayShape()Landroid/view/DisplayShape;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    return-object v0
.end method

.method public blacklist getOrCreateSource(II)Landroid/view/InsetsSource;
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/view/InsetsSource;

    invoke-direct {v1, p1, p2}, Landroid/view/InsetsSource;-><init>(II)V

    move-object v0, v1

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object v0
.end method

.method public blacklist getRoundedCorners()Landroid/view/RoundedCorners;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->contentHashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v4, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v5, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSourceOrDefaultVisible(II)Z
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist peekSource(I)Landroid/view/InsetsSource;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readFromParcel(Landroid/os/Parcel;)V

    sget-object v0, Landroid/view/RoundedCorners;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    sget-object v0, Landroid/view/PrivacyIndicatorBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/PrivacyIndicatorBounds;

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    sget-object v0, Landroid/view/DisplayShape;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    sget-object v3, Landroid/view/InsetsSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSource;

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getId()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public blacklist removeSource(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public blacklist removeSourceAt(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    return-void
.end method

.method public blacklist scale(F)V
    .locals 3

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->scale(F)V

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v0, p1}, Landroid/view/RoundedCorners;->scale(F)Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v0, p1}, Landroid/view/PrivacyIndicatorBounds;->scale(F)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v0, p1}, Landroid/view/DisplayShape;->setScale(F)Landroid/view/DisplayShape;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->scale(F)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist set(Landroid/view/InsetsState;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    return-void
.end method

.method public blacklist set(Landroid/view/InsetsState;I)V
    .locals 4

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    invoke-virtual {p1}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayShape()Landroid/view/DisplayShape;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v1, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public blacklist set(Landroid/view/InsetsState;Z)V
    .locals 6

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    invoke-virtual {p1}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayShape()Landroid/view/DisplayShape;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    iget-object v3, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getId()I

    move-result v4

    if-eqz p2, :cond_0

    new-instance v5, Landroid/view/InsetsSource;

    invoke-direct {v5, v2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    goto :goto_1

    :cond_0
    move-object v5, v2

    :goto_1
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist setDisplayCutout(Landroid/view/DisplayCutout;)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    return-void
.end method

.method public blacklist setDisplayFrame(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setDisplayShape(Landroid/view/DisplayShape;)V
    .locals 0

    iput-object p1, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    return-void
.end method

.method public blacklist setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)V
    .locals 0

    iput-object p1, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-void
.end method

.method public blacklist setRoundedCornerFrame(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setRoundedCorners(Landroid/view/RoundedCorners;)V
    .locals 0

    iput-object p1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-void
.end method

.method public blacklist setSourceVisible(IZ)V
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    :cond_0
    return-void
.end method

.method public blacklist sourceAt(I)Landroid/view/InsetsSource;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    return-object v0
.end method

.method public blacklist sourceIdAt(I)I
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public blacklist sourceSize()I
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSource;

    invoke-virtual {v3}, Landroid/view/InsetsSource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsetsState: {mDisplayFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayCutout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRoundedCorners="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mRoundedCornerFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPrivacyIndicatorBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayShape="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSources= { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.class public Landroid/view/InsetsSource;
.super Ljava/lang/Object;
.source "InsetsSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsSource$Flags;,
        Landroid/view/InsetsSource$InternalInsetsSide;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_ANIMATE_RESIZING:I = 0x8

.field public static final blacklist FLAG_FORCE_CONSUMING:I = 0x4

.field public static final blacklist FLAG_FORCE_CONSUMING_OPAQUE_CAPTION_BAR:I = 0x10

.field public static final blacklist FLAG_INSETS_ROUNDED_CORNER:I = 0x2

.field public static final blacklist FLAG_SUPPRESS_SCRIM:I = 0x1

.field public static final blacklist ID_IME:I

.field public static final blacklist ID_IME_CAPTION_BAR:I

.field private static final blacklist NO_BOUNDING_RECTS:[Landroid/graphics/Rect;

.field static final blacklist SIDE_BOTTOM:I = 0x4

.field static final blacklist SIDE_LEFT:I = 0x1

.field static final blacklist SIDE_NONE:I = 0x0

.field static final blacklist SIDE_RIGHT:I = 0x3

.field static final blacklist SIDE_TOP:I = 0x2

.field static final blacklist SIDE_UNKNOWN:I = 0x5


# instance fields
.field private blacklist mBoundingRects:[Landroid/graphics/Rect;

.field private blacklist mFlags:I

.field private final blacklist mFrame:Landroid/graphics/Rect;

.field private final blacklist mId:I

.field private blacklist mMinimizedInsetHint:Landroid/graphics/Rect;

.field private blacklist mSideHint:I

.field private final blacklist mTmpBoundingRect:Landroid/graphics/Rect;

.field private final blacklist mTmpFrame:Landroid/graphics/Rect;

.field private final blacklist mType:I

.field private blacklist mVisible:Z

.field private blacklist mVisibleFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Landroid/view/InsetsSource;->ID_IME:I

    nop

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v1, v3, v0}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    new-array v0, v2, [Landroid/graphics/Rect;

    sput-object v0, Landroid/view/InsetsSource;->NO_BOUNDING_RECTS:[Landroid/graphics/Rect;

    new-instance v0, Landroid/view/InsetsSource$1;

    invoke-direct {v0}, Landroid/view/InsetsSource$1;-><init>()V

    sput-object v0, Landroid/view/InsetsSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mMinimizedInsetHint:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iput p1, p0, Landroid/view/InsetsSource;->mId:I

    iput p2, p0, Landroid/view/InsetsSource;->mType:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mMinimizedInsetHint:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mType:I

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mMinimizedInsetHint:Landroid/graphics/Rect;

    :cond_1
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsSource;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mMinimizedInsetHint:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/view/InsetsSource;->mId:I

    iput v0, p0, Landroid/view/InsetsSource;->mId:I

    iget v0, p1, Landroid/view/InsetsSource;->mType:I

    iput v0, p0, Landroid/view/InsetsSource;->mType:I

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-boolean v0, p1, Landroid/view/InsetsSource;->mVisible:Z

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    iget-object v0, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, p1, Landroid/view/InsetsSource;->mFlags:I

    iput v0, p0, Landroid/view/InsetsSource;->mFlags:I

    iget v0, p1, Landroid/view/InsetsSource;->mSideHint:I

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    iget-object v0, p1, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-virtual {v0}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    iput-object v1, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/view/InsetsSource;->mMinimizedInsetHint:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mMinimizedInsetHint:Landroid/graphics/Rect;

    :cond_2
    return-void
.end method

.method private blacklist calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;
    .locals 4

    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getId()I

    move-result v0

    sget v1, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v2, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v0, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-static {p2, p1, v0}, Landroid/view/InsetsSource;->getIntersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    :goto_1
    nop

    if-nez v0, :cond_4

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v1

    :cond_4
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v2, v2, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_5
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/view/InsetsSource;->mSideHint:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :pswitch_0
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v2, v2, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :pswitch_1
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v2, v2, v1, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :pswitch_2
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_6
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_7
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v2, v2, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_8
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_b

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_9
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v1, v3, :cond_a

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_a
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v2, v2, v1, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    :cond_b
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist createId(Ljava/lang/Object;II)I
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x800

    if-ge p1, v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const/high16 v1, 0x10000

    rem-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "SUPPRESS_SCRIM"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "INSETS_ROUNDED_CORNER"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "FORCE_CONSUMING"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, "ANIMATE_RESIZING"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, "FORCE_CONSUMING_OPAQUE_CAPTION_BAR"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_4
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getIndex(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x5

    return v0
.end method

.method static blacklist getInsetSide(Landroid/graphics/Insets;)I
    .locals 1

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, p0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/graphics/Insets;->left:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p0, Landroid/graphics/Insets;->top:I

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    iget v0, p0, Landroid/graphics/Insets;->right:I

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    iget v0, p0, Landroid/graphics/Insets;->bottom:I

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    const/4 v0, 0x5

    return v0
.end method

.method private static blacklist getIntersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getType(I)I
    .locals 2

    and-int/lit8 v0, p0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method static blacklist sideToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "BOTTOM"

    return-object v0

    :pswitch_1
    const-string v0, "RIGHT"

    return-object v0

    :pswitch_2
    const-string v0, "TOP"

    return-object v0

    :pswitch_3
    const-string v0, "LEFT"

    return-object v0

    :pswitch_4
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist calculateBoundingRects(Landroid/graphics/Rect;Z)[Landroid/graphics/Rect;
    .locals 13

    if-nez p2, :cond_0

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/view/InsetsSource;->NO_BOUNDING_RECTS:[Landroid/graphics/Rect;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/view/InsetsSource;->NO_BOUNDING_RECTS:[Landroid/graphics/Rect;

    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v3

    if-ne v1, v3, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getId()I

    move-result v8

    sget v9, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v8, v2, v9}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Rect;

    return-object v2

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_7

    aget-object v5, v3, v2

    new-instance v6, Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget v11, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget v12, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Landroid/view/InsetsSource;->NO_BOUNDING_RECTS:[Landroid/graphics/Rect;

    return-object v2

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Rect;

    return-object v2
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, p2}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "InsetsSource id="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSource;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " type="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " frame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const-string v0, " visibleFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const-string v0, " visible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " flags="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    invoke-static {v0}, Landroid/view/InsetsSource;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sideHint="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    invoke-static {v0}, Landroid/view/InsetsSource;->sideToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " boundingRects="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->androidOsBuildVanillaIceCream()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    iget-object v2, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10500000005L

    iget v4, p0, Landroid/view/InsetsSource;->mType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist equals(Ljava/lang/Object;Z)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/InsetsSource;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/InsetsSource;->mMinimizedInsetHint:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/InsetsSource;->mMinimizedInsetHint:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    iget v3, p0, Landroid/view/InsetsSource;->mId:I

    iget v4, v2, Landroid/view/InsetsSource;->mId:I

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget v3, p0, Landroid/view/InsetsSource;->mType:I

    iget v4, v2, Landroid/view/InsetsSource;->mType:I

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    iget-boolean v3, p0, Landroid/view/InsetsSource;->mVisible:Z

    iget-boolean v4, v2, Landroid/view/InsetsSource;->mVisible:Z

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    iget v3, p0, Landroid/view/InsetsSource;->mFlags:I

    iget v4, v2, Landroid/view/InsetsSource;->mFlags:I

    if-eq v3, v4, :cond_6

    return v1

    :cond_6
    iget v3, p0, Landroid/view/InsetsSource;->mSideHint:I

    iget v4, v2, Landroid/view/InsetsSource;->mSideHint:I

    if-eq v3, v4, :cond_7

    return v1

    :cond_7
    if-eqz p2, :cond_8

    iget-boolean v3, p0, Landroid/view/InsetsSource;->mVisible:Z

    if-nez v3, :cond_8

    iget v3, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    if-ne v3, v4, :cond_8

    return v0

    :cond_8
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v3, v2, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-object v3, v2, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    iget-object v1, v2, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_b
    :goto_0
    return v1
.end method

.method public blacklist getBoundingRects()[Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getFlags()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    return v0
.end method

.method public blacklist getFrame()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getId()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsSource;->mId:I

    return v0
.end method

.method public blacklist getMinimizedInsetHint()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSource;->mMinimizedInsetHint:Landroid/graphics/Rect;

    return-object v0
.end method

.method blacklist getSideHint()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    return v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    return v0
.end method

.method public blacklist getVisibleFrame()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist hasFlags(I)Z
    .locals 1

    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 9

    iget v0, p0, Landroid/view/InsetsSource;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    return v0
.end method

.method public blacklist set(Landroid/view/InsetsSource;)V
    .locals 3

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p1, Landroid/view/InsetsSource;->mVisible:Z

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    iget-object v0, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, p1, Landroid/view/InsetsSource;->mFlags:I

    iput v0, p0, Landroid/view/InsetsSource;->mFlags:I

    iget v0, p1, Landroid/view/InsetsSource;->mSideHint:I

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    iget-object v0, p1, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-virtual {v0}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    iput-object v1, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/view/InsetsSource;->mMinimizedInsetHint:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mMinimizedInsetHint:Landroid/graphics/Rect;

    :cond_2
    return-void
.end method

.method public blacklist setBoundingRects([Landroid/graphics/Rect;)Landroid/view/InsetsSource;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/view/InsetsSource;
    .locals 0

    iput p1, p0, Landroid/view/InsetsSource;->mFlags:I

    return-object p0
.end method

.method public blacklist setFlags(II)Landroid/view/InsetsSource;
    .locals 2

    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/InsetsSource;->mFlags:I

    return-object p0
.end method

.method public blacklist setFrame(IIII)Landroid/view/InsetsSource;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-object p0
.end method

.method public blacklist setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public blacklist setMinimizedInsetHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSource;->mMinimizedInsetHint:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public blacklist setVisible(Z)Landroid/view/InsetsSource;
    .locals 0

    iput-boolean p1, p0, Landroid/view/InsetsSource;->mVisible:Z

    return-object p0
.end method

.method public blacklist setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsSource: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSource;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSource;->mFlags:I

    invoke-static {v1}, Landroid/view/InsetsSource;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSideHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSource;->mSideHint:I

    invoke-static {v1}, Landroid/view/InsetsSource;->sideToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBoundingRects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/view/InsetsSource;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/InsetsSource;->mMinimizedInsetHint:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_1
    return-void
.end method

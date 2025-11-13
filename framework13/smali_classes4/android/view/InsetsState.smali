.class public Landroid/view/InsetsState;
.super Ljava/lang/Object;
.source "InsetsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsState$InternalInsetsSide;,
        Landroid/view/InsetsState$InternalInsetsType;
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

.field static final blacklist FIRST_TYPE:I = 0x0

.field static final blacklist ISIDE_BOTTOM:I = 0x3

.field static final blacklist ISIDE_FLOATING:I = 0x4

.field static final blacklist ISIDE_LEFT:I = 0x0

.field static final blacklist ISIDE_RIGHT:I = 0x2

.field static final blacklist ISIDE_TOP:I = 0x1

.field static final blacklist ISIDE_UNKNOWN:I = 0x5

.field public static final blacklist ITYPE_BOTTOM_DISPLAY_CUTOUT:I = 0xe

.field public static final blacklist ITYPE_BOTTOM_GESTURES:I = 0x4

.field public static final blacklist ITYPE_BOTTOM_MANDATORY_GESTURES:I = 0x8

.field public static final blacklist ITYPE_BOTTOM_TAPPABLE_ELEMENT:I = 0x12

.field public static final blacklist ITYPE_CAPTION_BAR:I = 0x2

.field public static final blacklist ITYPE_CLIMATE_BAR:I = 0x14

.field public static final blacklist ITYPE_EXTRA_NAVIGATION_BAR:I = 0x15

.field public static final blacklist ITYPE_IME:I = 0x13

.field public static final blacklist ITYPE_INVALID:I = -0x1

.field public static final blacklist ITYPE_LEFT_DISPLAY_CUTOUT:I = 0xb

.field public static final blacklist ITYPE_LEFT_GESTURES:I = 0x5

.field public static final blacklist ITYPE_LEFT_MANDATORY_GESTURES:I = 0x9

.field public static final blacklist ITYPE_LEFT_TAPPABLE_ELEMENT:I = 0xf

.field public static final blacklist ITYPE_LOCAL_NAVIGATION_BAR_1:I = 0x16

.field public static final blacklist ITYPE_LOCAL_NAVIGATION_BAR_2:I = 0x17

.field public static final blacklist ITYPE_NAVIGATION_BAR:I = 0x1

.field public static final blacklist ITYPE_RIGHT_DISPLAY_CUTOUT:I = 0xd

.field public static final blacklist ITYPE_RIGHT_GESTURES:I = 0x6

.field public static final blacklist ITYPE_RIGHT_MANDATORY_GESTURES:I = 0xa

.field public static final blacklist ITYPE_RIGHT_TAPPABLE_ELEMENT:I = 0x11

.field public static final blacklist ITYPE_SHELF:I = 0x1

.field public static final blacklist ITYPE_STATUS_BAR:I = 0x0

.field public static final blacklist ITYPE_TOP_DISPLAY_CUTOUT:I = 0xc

.field public static final blacklist ITYPE_TOP_GESTURES:I = 0x3

.field public static final blacklist ITYPE_TOP_MANDATORY_GESTURES:I = 0x7

.field public static final blacklist ITYPE_TOP_TAPPABLE_ELEMENT:I = 0x10

.field static final blacklist LAST_TYPE:I = 0x17

.field public static final blacklist POLICY_CONTROL_ITYPES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SIZE:I = 0x18


# instance fields
.field private final blacklist mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

.field private final blacklist mDisplayFrame:Landroid/graphics/Rect;

.field private blacklist mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private final blacklist mRoundedCornerFrame:Landroid/graphics/Rect;

.field private blacklist mRoundedCorners:Landroid/view/RoundedCorners;

.field private final blacklist mSources:[Landroid/view/InsetsSource;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 173
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v0, v1

    .line 172
    invoke-static {v0}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Landroid/view/InsetsState;->POLICY_CONTROL_ITYPES:Landroid/util/ArraySet;

    .line 976
    new-instance v0, Landroid/view/InsetsState$1;

    invoke-direct {v0}, Landroid/view/InsetsState$1;-><init>()V

    sput-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/16 v0, 0x18

    new-array v0, v0, [Landroid/view/InsetsSource;

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 184
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    .line 198
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 201
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 205
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/16 v0, 0x18

    new-array v0, v0, [Landroid/view/InsetsSource;

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 184
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    .line 198
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 201
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 958
    invoke-virtual {p0, p1}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)V

    .line 959
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsState;)V
    .locals 1
    .param p1, "copy"    # Landroid/view/InsetsState;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/16 v0, 0x18

    new-array v0, v0, [Landroid/view/InsetsSource;

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 184
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    .line 198
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 201
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 208
    invoke-virtual {p0, p1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    .line 209
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsState;Z)V
    .locals 1
    .param p1, "copy"    # Landroid/view/InsetsState;
    .param p2, "copySources"    # Z

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/16 v0, 0x18

    new-array v0, v0, [Landroid/view/InsetsSource;

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 184
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    .line 198
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 201
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 212
    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 213
    return-void
.end method

.method private blacklist calculateRelativeCutout(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .locals 6
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 294
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 295
    .local v0, "raw":Landroid/view/DisplayCutout;
    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    return-object v0

    .line 298
    :cond_0
    if-nez p1, :cond_1

    .line 299
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v1

    .line 301
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 302
    .local v1, "insetLeft":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 303
    .local v2, "insetTop":I
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 304
    .local v3, "insetRight":I
    iget-object v4, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 305
    .local v4, "insetBottom":I
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v5

    if-lt v1, v5, :cond_2

    .line 306
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 307
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 308
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 309
    sget-object v5, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v5

    .line 311
    :cond_2
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object v5

    return-object v5
.end method

.method private blacklist calculateRelativePrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;
    .locals 5
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 341
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object v0

    .line 344
    :cond_0
    if-nez p1, :cond_1

    .line 345
    const/4 v0, 0x0

    return-object v0

    .line 347
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 348
    .local v0, "insetLeft":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 349
    .local v1, "insetTop":I
    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 350
    .local v2, "insetRight":I
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 351
    .local v3, "insetBottom":I
    iget-object v4, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/PrivacyIndicatorBounds;->inset(IIII)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v4

    return-object v4
.end method

.method private blacklist calculateRelativeRoundedCorners(Landroid/graphics/Rect;)Landroid/view/RoundedCorners;
    .locals 7
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 315
    if-nez p1, :cond_0

    .line 316
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    return-object v0

    .line 320
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 321
    .local v0, "roundedCornerFrame":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 322
    .local v5, "source":Landroid/view/InsetsSource;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getInsetsRoundedCornerFrame()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 323
    invoke-virtual {v5, v0, v3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v6

    .line 324
    .local v6, "insets":Landroid/graphics/Insets;
    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 321
    .end local v5    # "source":Landroid/view/InsetsSource;
    .end local v6    # "insets":Landroid/graphics/Insets;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 328
    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v1, p1, v0}, Landroid/view/RoundedCorners;->insetWithFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/RoundedCorners;

    move-result-object v1

    return-object v1

    .line 330
    :cond_3
    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 331
    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object v1

    .line 333
    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 334
    .local v1, "insetLeft":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 335
    .local v2, "insetTop":I
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 336
    .local v3, "insetRight":I
    iget-object v4, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 337
    .local v4, "insetBottom":I
    iget-object v5, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/view/RoundedCorners;->inset(IIII)Landroid/view/RoundedCorners;

    move-result-object v5

    return-object v5
.end method

.method private blacklist canControlSide(Landroid/graphics/Rect;I)Z
    .locals 4
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "side"    # I

    .line 438
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 448
    return v0

    .line 446
    :pswitch_0
    return v1

    .line 444
    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 441
    :pswitch_2
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_1

    move v0, v1

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist clearsCompatInsets(III)Z
    .locals 1
    .param p0, "windowType"    # I
    .param p1, "windowFlags"    # I
    .param p2, "windowingMode"    # I

    .line 716
    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_0

    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7da

    if-eq p0, v0, :cond_0

    .line 718
    invoke-static {p2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 716
    :goto_0
    return v0
.end method

.method public static blacklist containsType([II)Z
    .locals 4
    .param p0, "types"    # [I
    .param p1, "type"    # I

    .line 810
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 811
    return v0

    .line 813
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    .line 814
    .local v3, "t":I
    if-ne v3, p1, :cond_1

    .line 815
    const/4 v0, 0x1

    return v0

    .line 813
    .end local v3    # "t":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 818
    :cond_2
    return v0
.end method

.method public static blacklist getDefaultVisibility(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 805
    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static blacklist getInsetSide(Landroid/graphics/Insets;)I
    .locals 1
    .param p0, "insets"    # Landroid/graphics/Insets;

    .line 511
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, p0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    const/4 v0, 0x4

    return v0

    .line 514
    :cond_0
    iget v0, p0, Landroid/graphics/Insets;->left:I

    if-eqz v0, :cond_1

    .line 515
    const/4 v0, 0x0

    return v0

    .line 517
    :cond_1
    iget v0, p0, Landroid/graphics/Insets;->top:I

    if-eqz v0, :cond_2

    .line 518
    const/4 v0, 0x1

    return v0

    .line 520
    :cond_2
    iget v0, p0, Landroid/graphics/Insets;->right:I

    if-eqz v0, :cond_3

    .line 521
    const/4 v0, 0x2

    return v0

    .line 523
    :cond_3
    iget v0, p0, Landroid/graphics/Insets;->bottom:I

    if-eqz v0, :cond_4

    .line 524
    const/4 v0, 0x3

    return v0

    .line 526
    :cond_4
    const/4 v0, 0x5

    return v0
.end method

.method private blacklist processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z)V
    .locals 9
    .param p1, "source"    # Landroid/view/InsetsSource;
    .param p2, "relativeFrame"    # Landroid/graphics/Rect;
    .param p3, "ignoreVisibility"    # Z
    .param p4, "typeInsetsMap"    # [Landroid/graphics/Insets;
    .param p5, "typeSideMap"    # Landroid/util/SparseIntArray;
    .param p6, "typeVisibilityMap"    # [Z

    .line 455
    invoke-virtual {p1, p2, p3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v7

    .line 457
    .local v7, "insets":Landroid/graphics/Insets;
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v8

    .line 458
    .local v8, "type":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, v7

    move v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V

    .line 461
    const/16 v0, 0x20

    if-ne v8, v0, :cond_0

    .line 467
    const/16 v6, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V

    .line 470
    :cond_0
    const/4 v0, 0x4

    if-ne v8, v0, :cond_1

    .line 474
    const/16 v6, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V

    .line 476
    const/16 v6, 0x20

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V

    .line 478
    const/16 v6, 0x40

    invoke-direct/range {v0 .. v6}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V

    .line 481
    :cond_1
    return-void
.end method

.method private blacklist processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[ZLandroid/graphics/Insets;I)V
    .locals 4
    .param p1, "source"    # Landroid/view/InsetsSource;
    .param p2, "typeInsetsMap"    # [Landroid/graphics/Insets;
    .param p3, "typeSideMap"    # Landroid/util/SparseIntArray;
    .param p4, "typeVisibilityMap"    # [Z
    .param p5, "insets"    # Landroid/graphics/Insets;
    .param p6, "type"    # I

    .line 486
    invoke-static {p6}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    .line 487
    .local v0, "index":I
    aget-object v1, p2, v0

    .line 488
    .local v1, "existing":Landroid/graphics/Insets;
    if-nez v1, :cond_0

    .line 489
    aput-object p5, p2, v0

    goto :goto_0

    .line 491
    :cond_0
    invoke-static {v1, p5}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v2

    aput-object v2, p2, v0

    .line 494
    :goto_0
    if-eqz p4, :cond_1

    .line 495
    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    aput-boolean v2, p4, v0

    .line 498
    :cond_1
    if-eqz p3, :cond_2

    .line 499
    invoke-static {p5}, Landroid/view/InsetsState;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v2

    .line 500
    .local v2, "insetSide":I
    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    .line 501
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    invoke-virtual {p3, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 504
    .end local v2    # "insetSide":I
    :cond_2
    return-void
.end method

.method public static blacklist toInternalType(I)Landroid/util/ArraySet;
    .locals 2
    .param p0, "types"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 722
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 723
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 724
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 725
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 728
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 729
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 730
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 731
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 734
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_2
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3

    .line 737
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 738
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 739
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 740
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_3
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_4

    .line 743
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 744
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 745
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 746
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 748
    :cond_4
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_5

    .line 749
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 750
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 751
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 752
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_5
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_6

    .line 755
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 757
    :cond_6
    return-object v0
.end method

.method public static blacklist toPublicType(I)I
    .locals 3
    .param p0, "type"    # I

    .line 766
    packed-switch p0, :pswitch_data_0

    .line 800
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :pswitch_0
    const/16 v0, 0x8

    return v0

    .line 793
    :pswitch_1
    const/16 v0, 0x40

    return v0

    .line 798
    :pswitch_2
    const/16 v0, 0x80

    return v0

    .line 783
    :pswitch_3
    const/16 v0, 0x20

    return v0

    .line 788
    :pswitch_4
    const/16 v0, 0x10

    return v0

    .line 776
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 774
    :pswitch_6
    const/4 v0, 0x2

    return v0

    .line 769
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 848
    packed-switch p0, :pswitch_data_0

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ITYPE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 896
    :pswitch_0
    const-string v0, "ITYPE_LOCAL_NAVIGATION_BAR_2"

    return-object v0

    .line 894
    :pswitch_1
    const-string v0, "ITYPE_LOCAL_NAVIGATION_BAR_1"

    return-object v0

    .line 892
    :pswitch_2
    const-string v0, "ITYPE_EXTRA_NAVIGATION_BAR"

    return-object v0

    .line 890
    :pswitch_3
    const-string v0, "ITYPE_CLIMATE_BAR"

    return-object v0

    .line 888
    :pswitch_4
    const-string v0, "ITYPE_IME"

    return-object v0

    .line 878
    :pswitch_5
    const-string v0, "ITYPE_BOTTOM_TAPPABLE_ELEMENT"

    return-object v0

    .line 876
    :pswitch_6
    const-string v0, "ITYPE_RIGHT_TAPPABLE_ELEMENT"

    return-object v0

    .line 874
    :pswitch_7
    const-string v0, "ITYPE_TOP_TAPPABLE_ELEMENT"

    return-object v0

    .line 872
    :pswitch_8
    const-string v0, "ITYPE_LEFT_TAPPABLE_ELEMENT"

    return-object v0

    .line 886
    :pswitch_9
    const-string v0, "ITYPE_BOTTOM_DISPLAY_CUTOUT"

    return-object v0

    .line 884
    :pswitch_a
    const-string v0, "ITYPE_RIGHT_DISPLAY_CUTOUT"

    return-object v0

    .line 882
    :pswitch_b
    const-string v0, "ITYPE_TOP_DISPLAY_CUTOUT"

    return-object v0

    .line 880
    :pswitch_c
    const-string v0, "ITYPE_LEFT_DISPLAY_CUTOUT"

    return-object v0

    .line 870
    :pswitch_d
    const-string v0, "ITYPE_RIGHT_MANDATORY_GESTURES"

    return-object v0

    .line 868
    :pswitch_e
    const-string v0, "ITYPE_LEFT_MANDATORY_GESTURES"

    return-object v0

    .line 866
    :pswitch_f
    const-string v0, "ITYPE_BOTTOM_MANDATORY_GESTURES"

    return-object v0

    .line 864
    :pswitch_10
    const-string v0, "ITYPE_TOP_MANDATORY_GESTURES"

    return-object v0

    .line 862
    :pswitch_11
    const-string v0, "ITYPE_RIGHT_GESTURES"

    return-object v0

    .line 860
    :pswitch_12
    const-string v0, "ITYPE_LEFT_GESTURES"

    return-object v0

    .line 858
    :pswitch_13
    const-string v0, "ITYPE_BOTTOM_GESTURES"

    return-object v0

    .line 856
    :pswitch_14
    const-string v0, "ITYPE_TOP_GESTURES"

    return-object v0

    .line 854
    :pswitch_15
    const-string v0, "ITYPE_CAPTION_BAR"

    return-object v0

    .line 852
    :pswitch_16
    const-string v0, "ITYPE_NAVIGATION_BAR"

    return-object v0

    .line 850
    :pswitch_17
    const-string v0, "ITYPE_STATUS_BAR"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist addSource(Landroid/view/InsetsSource;)V
    .locals 2
    .param p1, "source"    # Landroid/view/InsetsSource;

    .line 712
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    aput-object p1, v0, v1

    .line 713
    return-void
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;ILandroid/view/InsetsVisibilities;)Landroid/graphics/Insets;
    .locals 5
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "types"    # I
    .param p3, "overrideVisibilities"    # Landroid/view/InsetsVisibilities;

    .line 372
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 373
    .local v0, "insets":Landroid/graphics/Insets;
    const/4 v1, 0x0

    .local v1, "type":I
    :goto_0
    const/16 v2, 0x17

    if-gt v1, v2, :cond_3

    .line 374
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v2, v2, v1

    .line 375
    .local v2, "source":Landroid/view/InsetsSource;
    if-nez v2, :cond_0

    .line 376
    goto :goto_1

    .line 378
    :cond_0
    invoke-static {v1}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    .line 379
    .local v3, "publicType":I
    and-int v4, v3, p2

    if-nez v4, :cond_1

    .line 380
    goto :goto_1

    .line 382
    :cond_1
    invoke-virtual {p3, v1}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 383
    goto :goto_1

    .line 385
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 373
    .end local v2    # "source":Landroid/view/InsetsSource;
    .end local v3    # "publicType":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v1    # "type":I
    :cond_3
    return-object v0
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;
    .locals 5
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "types"    # I
    .param p3, "ignoreVisibility"    # Z

    .line 355
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 356
    .local v0, "insets":Landroid/graphics/Insets;
    const/4 v1, 0x0

    .local v1, "type":I
    :goto_0
    const/16 v2, 0x17

    if-gt v1, v2, :cond_2

    .line 357
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v2, v2, v1

    .line 358
    .local v2, "source":Landroid/view/InsetsSource;
    if-nez v2, :cond_0

    .line 359
    goto :goto_1

    .line 361
    :cond_0
    invoke-static {v1}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    .line 362
    .local v3, "publicType":I
    and-int v4, v3, p2

    if-nez v4, :cond_1

    .line 363
    goto :goto_1

    .line 365
    :cond_1
    invoke-virtual {v2, p1, p3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 356
    .end local v2    # "source":Landroid/view/InsetsSource;
    .end local v3    # "publicType":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "type":I
    :cond_2
    return-object v0
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;
    .locals 26
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "ignoringVisibilityState"    # Landroid/view/InsetsState;
    .param p3, "isScreenRound"    # Z
    .param p4, "alwaysConsumeSystemBars"    # Z
    .param p5, "legacySoftInputMode"    # I
    .param p6, "legacyWindowFlags"    # I
    .param p7, "legacySystemUiFlags"    # I
    .param p8, "windowType"    # I
    .param p9, "windowingMode"    # I
    .param p10, "typeSideMap"    # Landroid/util/SparseIntArray;

    .line 229
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p6

    move/from16 v3, p9

    const/16 v4, 0x9

    new-array v15, v4, [Landroid/graphics/Insets;

    .line 230
    .local v15, "typeInsetsMap":[Landroid/graphics/Insets;
    new-array v14, v4, [Landroid/graphics/Insets;

    .line 231
    .local v14, "typeMaxInsetsMap":[Landroid/graphics/Insets;
    new-array v4, v4, [Z

    .line 232
    .local v4, "typeVisibilityMap":[Z
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 233
    .local v7, "relativeFrame":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v21, v5

    .line 234
    .local v21, "relativeFrameMax":Landroid/graphics/Rect;
    const/4 v5, 0x0

    move v12, v5

    .local v12, "type":I
    :goto_0
    const/16 v5, 0x17

    const/16 v6, 0x10

    if-gt v12, v5, :cond_6

    .line 235
    move-object/from16 v13, p0

    iget-object v5, v13, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v16, v5, v12

    .line 236
    .local v16, "source":Landroid/view/InsetsSource;
    if-nez v16, :cond_0

    .line 237
    invoke-static {v12}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v5

    invoke-static {v5}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v5

    .line 238
    .local v5, "index":I
    aget-object v6, v15, v5

    if-nez v6, :cond_5

    .line 239
    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    aput-object v6, v15, v5

    goto :goto_2

    .line 244
    .end local v5    # "index":I
    :cond_0
    const/4 v5, 0x5

    const/16 v8, 0x80

    if-ne v3, v5, :cond_1

    .line 246
    invoke-virtual/range {v16 .. v16}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    invoke-static {v5}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 247
    goto :goto_2

    .line 250
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 251
    invoke-virtual/range {v16 .. v16}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    invoke-static {v5}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v5

    if-eq v5, v8, :cond_5

    .line 252
    invoke-virtual/range {v16 .. v16}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    .line 251
    invoke-static {v5}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 253
    goto :goto_2

    .line 256
    :cond_2
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, v16

    move-object v9, v15

    move-object/from16 v10, p10

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/InsetsState;->processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z)V

    .line 261
    invoke-virtual/range {v16 .. v16}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    const/16 v6, 0x13

    if-eq v5, v6, :cond_5

    .line 262
    if-eqz v1, :cond_3

    .line 263
    invoke-virtual {v1, v12}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v5

    goto :goto_1

    .line 264
    :cond_3
    move-object/from16 v5, v16

    :goto_1
    nop

    .line 265
    .local v5, "ignoringVisibilitySource":Landroid/view/InsetsSource;
    if-nez v5, :cond_4

    .line 266
    goto :goto_2

    .line 268
    :cond_4
    const/16 v22, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, v5

    move-object/from16 v23, v14

    invoke-direct/range {v19 .. v25}, Landroid/view/InsetsState;->processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z)V

    .line 234
    .end local v5    # "ignoringVisibilitySource":Landroid/view/InsetsSource;
    .end local v16    # "source":Landroid/view/InsetsSource;
    :cond_5
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v13, p0

    .line 273
    .end local v12    # "type":I
    move/from16 v5, p5

    and-int/lit16 v12, v5, 0xf0

    .line 275
    .local v12, "softInputAdjustMode":I
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v8

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v9

    or-int/2addr v8, v9

    .line 276
    .local v8, "compatInsetsTypes":I
    if-ne v12, v6, :cond_7

    .line 277
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    or-int/2addr v8, v6

    .line 279
    :cond_7
    and-int/lit16 v6, v2, 0x400

    if-eqz v6, :cond_8

    .line 280
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    not-int v6, v6

    and-int/2addr v8, v6

    .line 282
    :cond_8
    move/from16 v6, p8

    invoke-static {v6, v2, v3}, Landroid/view/InsetsState;->clearsCompatInsets(III)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 283
    const/4 v8, 0x0

    move/from16 v19, v8

    goto :goto_3

    .line 282
    :cond_9
    move/from16 v19, v8

    .line 286
    .end local v8    # "compatInsetsTypes":I
    .local v19, "compatInsetsTypes":I
    :goto_3
    new-instance v20, Landroid/view/WindowInsets;

    .line 287
    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativeCutout(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v16

    .line 288
    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativeRoundedCorners(Landroid/graphics/Rect;)Landroid/view/RoundedCorners;

    move-result-object v17

    .line 289
    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativePrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v18

    move/from16 v11, p7

    and-int/lit16 v8, v11, 0x100

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    :goto_4
    move/from16 v22, v8

    move-object/from16 v8, v20

    move-object v9, v15

    move-object v10, v14

    move-object v11, v4

    move/from16 v23, v12

    .end local v12    # "softInputAdjustMode":I
    .local v23, "softInputAdjustMode":I
    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v24, v14

    .end local v14    # "typeMaxInsetsMap":[Landroid/graphics/Insets;
    .local v24, "typeMaxInsetsMap":[Landroid/graphics/Insets;
    move-object/from16 v14, v16

    move-object/from16 v25, v15

    .end local v15    # "typeInsetsMap":[Landroid/graphics/Insets;
    .local v25, "typeInsetsMap":[Landroid/graphics/Insets;
    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v22

    invoke-direct/range {v8 .. v18}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZZLandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;IZ)V

    .line 286
    return-object v20
.end method

.method public blacklist calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I
    .locals 4
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "blocked":I
    const/4 v1, 0x0

    .local v1, "type":I
    :goto_0
    const/16 v2, 0x17

    if-gt v1, v2, :cond_2

    .line 425
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v2, v2, v1

    .line 426
    .local v2, "source":Landroid/view/InsetsSource;
    if-nez v2, :cond_0

    .line 427
    goto :goto_1

    .line 429
    :cond_0
    nop

    .line 430
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v3

    .line 429
    invoke-static {v3}, Landroid/view/InsetsState;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/view/InsetsState;->canControlSide(Landroid/graphics/Rect;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 431
    invoke-static {v1}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v3

    or-int/2addr v0, v3

    .line 424
    .end local v2    # "source":Landroid/view/InsetsSource;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    .end local v1    # "type":I
    :cond_2
    return v0
.end method

.method public blacklist calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;
    .locals 7
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "windowType"    # I
    .param p3, "windowingMode"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 392
    invoke-static {p2, p5, p3}, Landroid/view/InsetsState;->clearsCompatInsets(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0

    .line 395
    :cond_0
    and-int/lit16 v0, p4, 0xf0

    .line 396
    .local v0, "softInputAdjustMode":I
    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 397
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 398
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    :goto_0
    nop

    .line 399
    .local v1, "visibleInsetsTypes":I
    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 400
    .local v2, "insets":Landroid/graphics/Insets;
    const/4 v3, 0x0

    .local v3, "type":I
    :goto_1
    const/16 v4, 0x17

    if-gt v3, v4, :cond_4

    .line 401
    iget-object v4, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v4, v4, v3

    .line 402
    .local v4, "source":Landroid/view/InsetsSource;
    if-nez v4, :cond_2

    .line 403
    goto :goto_2

    .line 405
    :cond_2
    invoke-static {v3}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v5

    .line 406
    .local v5, "publicType":I
    and-int v6, v5, v1

    if-nez v6, :cond_3

    .line 407
    goto :goto_2

    .line 409
    :cond_3
    invoke-virtual {v4, p1}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v2

    .line 400
    .end local v4    # "source":Landroid/view/InsetsSource;
    .end local v5    # "publicType":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 411
    .end local v3    # "type":I
    :cond_4
    return-object v2
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 963
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "newPrefix":Ljava/lang/String;
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

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mDisplayFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mDisplayCutout="

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

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mRoundedCorners="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mRoundedCornerFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mPrivacyIndicatorBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x18

    if-ge v2, v3, :cond_1

    .line 830
    iget-object v3, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v3, v3, v2

    .line 831
    .local v3, "source":Landroid/view/InsetsSource;
    if-nez v3, :cond_0

    goto :goto_1

    .line 832
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/view/InsetsSource;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 829
    .end local v3    # "source":Landroid/view/InsetsSource;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 834
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 837
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 838
    .local v0, "token":J
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    .line 839
    .local v2, "source":Landroid/view/InsetsSource;
    if-eqz v2, :cond_0

    .line 840
    const-wide v3, 0x20b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 842
    :cond_0
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 843
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v3

    const-wide v4, 0x10b00000003L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/DisplayCutout;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 844
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 845
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 904
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v0

    return v0
.end method

.method public blacklist equals(Ljava/lang/Object;ZZ)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "excludingCaptionInsets"    # Z
    .param p3, "excludeInvisibleImeFrames"    # Z

    .line 920
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 921
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 923
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/InsetsState;

    .line 925
    .local v2, "state":Landroid/view/InsetsState;
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v4, v2, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 926
    invoke-virtual {v3, v4}, Landroid/view/DisplayCutout$ParcelableWrapper;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v4, v2, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 927
    invoke-virtual {v3, v4}, Landroid/view/RoundedCorners;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    .line 928
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v4, v2, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 929
    invoke-virtual {v3, v4}, Landroid/view/PrivacyIndicatorBounds;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 932
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x18

    if-ge v3, v4, :cond_8

    .line 933
    if-eqz p2, :cond_3

    .line 934
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 936
    :cond_3
    iget-object v4, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v4, v4, v3

    .line 937
    .local v4, "source":Landroid/view/InsetsSource;
    iget-object v5, v2, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v5, v5, v3

    .line 938
    .local v5, "otherSource":Landroid/view/InsetsSource;
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    .line 939
    goto :goto_1

    .line 941
    :cond_4
    if-eqz v4, :cond_7

    if-nez v5, :cond_5

    goto :goto_2

    .line 944
    :cond_5
    invoke-virtual {v5, v4, p3}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_6

    .line 945
    return v1

    .line 932
    .end local v4    # "source":Landroid/view/InsetsSource;
    .end local v5    # "otherSource":Landroid/view/InsetsSource;
    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 942
    .restart local v4    # "source":Landroid/view/InsetsSource;
    .restart local v5    # "otherSource":Landroid/view/InsetsSource;
    :cond_7
    :goto_2
    return v1

    .line 948
    .end local v3    # "i":I
    .end local v4    # "source":Landroid/view/InsetsSource;
    .end local v5    # "otherSource":Landroid/view/InsetsSource;
    :cond_8
    return v0

    .line 930
    :cond_9
    :goto_3
    return v1

    .line 921
    .end local v2    # "state":Landroid/view/InsetsState;
    :cond_a
    :goto_4
    return v1
.end method

.method public blacklist getDisplayCutout()Landroid/view/DisplayCutout;
    .locals 1

    .line 569
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayCutoutSafe(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 573
    const v0, -0x186a0

    const v1, 0x186a0

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 575
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 576
    .local v0, "cutout":Landroid/view/DisplayCutout;
    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 577
    .local v1, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 578
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    if-lez v2, :cond_0

    .line 579
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 581
    :cond_0
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    if-lez v2, :cond_1

    .line 582
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 584
    :cond_1
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    if-lez v2, :cond_2

    .line 585
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 587
    :cond_2
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    if-lez v2, :cond_3

    .line 588
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 591
    :cond_3
    return-void
.end method

.method public blacklist getDisplayFrame()Landroid/graphics/Rect;
    .locals 1

    .line 561
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;
    .locals 1

    .line 615
    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object v0
.end method

.method public blacklist getRoundedCorners()Landroid/view/RoundedCorners;
    .locals 1

    .line 598
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object v0
.end method

.method public blacklist getSource(I)Landroid/view/InsetsSource;
    .locals 2
    .param p1, "type"    # I

    .line 530
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v0, v0, p1

    .line 531
    .local v0, "source":Landroid/view/InsetsSource;
    if-eqz v0, :cond_0

    .line 532
    return-object v0

    .line 534
    :cond_0
    new-instance v1, Landroid/view/InsetsSource;

    invoke-direct {v1, p1}, Landroid/view/InsetsSource;-><init>(I)V

    move-object v0, v1

    .line 535
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aput-object v0, v1, p1

    .line 536
    return-object v0
.end method

.method public blacklist getSourceOrDefaultVisibility(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 552
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v0, v0, p1

    .line 553
    .local v0, "source":Landroid/view/InsetsSource;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 953
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist peekSource(I)Landroid/view/InsetsSource;
    .locals 1
    .param p1, "type"    # I

    .line 540
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 988
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 989
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readFromParcel(Landroid/os/Parcel;)V

    .line 990
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    sget-object v1, Landroid/view/InsetsSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 991
    sget-object v0, Landroid/view/RoundedCorners;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 992
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 993
    sget-object v0, Landroid/view/PrivacyIndicatorBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/PrivacyIndicatorBounds;

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 994
    return-void
.end method

.method public blacklist removeSource(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 626
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 627
    const/4 v0, 0x0

    return v0

    .line 629
    :cond_0
    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 630
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist scale(F)V
    .locals 3
    .param p1, "scale"    # F

    .line 652
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 653
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->scale(F)V

    .line 654
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v0, p1}, Landroid/view/RoundedCorners;->scale(F)Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 655
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 656
    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v0, p1}, Landroid/view/PrivacyIndicatorBounds;->scale(F)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 657
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 658
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v1, v1, v0

    .line 659
    .local v1, "source":Landroid/view/InsetsSource;
    if-eqz v1, :cond_0

    .line 660
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 661
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 662
    .local v2, "visibleFrame":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    .line 663
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 657
    .end local v1    # "source":Landroid/view/InsetsSource;
    .end local v2    # "visibleFrame":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 667
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public blacklist set(Landroid/view/InsetsState;)V
    .locals 1
    .param p1, "other"    # Landroid/view/InsetsState;

    .line 670
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 671
    return-void
.end method

.method public blacklist set(Landroid/view/InsetsState;I)V
    .locals 5
    .param p1, "other"    # Landroid/view/InsetsState;
    .param p2, "types"    # I

    .line 699
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 700
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    .line 701
    invoke-virtual {p1}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 702
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 703
    invoke-virtual {p1}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 704
    invoke-static {p2}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 705
    .local v0, "t":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 706
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 707
    .local v2, "type":I
    iget-object v3, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    iget-object v4, p1, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 705
    .end local v2    # "type":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 709
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist set(Landroid/view/InsetsState;Z)V
    .locals 5
    .param p1, "other"    # Landroid/view/InsetsState;
    .param p2, "copySources"    # Z

    .line 674
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 675
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    .line 676
    invoke-virtual {p1}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 677
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 678
    invoke-virtual {p1}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 679
    const/16 v0, 0x18

    if-eqz p2, :cond_2

    .line 680
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 681
    iget-object v2, p1, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v2, v2, v1

    .line 682
    .local v2, "source":Landroid/view/InsetsSource;
    iget-object v3, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    if-eqz v2, :cond_0

    new-instance v4, Landroid/view/InsetsSource;

    invoke-direct {v4, v2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    aput-object v4, v3, v1

    .line 680
    .end local v2    # "source":Landroid/view/InsetsSource;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_3

    .line 685
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 686
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    iget-object v3, p1, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 689
    .end local v1    # "i":I
    :cond_3
    :goto_3
    return-void
.end method

.method public blacklist setDisplayCutout(Landroid/view/DisplayCutout;)V
    .locals 1
    .param p1, "cutout"    # Landroid/view/DisplayCutout;

    .line 565
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 566
    return-void
.end method

.method public blacklist setDisplayFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 557
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 558
    return-void
.end method

.method public blacklist setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)V
    .locals 0
    .param p1, "bounds"    # Landroid/view/PrivacyIndicatorBounds;

    .line 611
    iput-object p1, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 612
    return-void
.end method

.method public blacklist setRoundedCornerFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 607
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 608
    return-void
.end method

.method public blacklist setRoundedCorners(Landroid/view/RoundedCorners;)V
    .locals 0
    .param p1, "roundedCorners"    # Landroid/view/RoundedCorners;

    .line 594
    iput-object p1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 595
    return-void
.end method

.method public blacklist setSourceVisible(IZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "visible"    # Z

    .line 640
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v0, v0, p1

    .line 641
    .local v0, "source":Landroid/view/InsetsSource;
    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0, p2}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 644
    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 998
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 999
    .local v0, "joiner":Ljava/util/StringJoiner;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    .line 1000
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    aget-object v2, v2, v1

    .line 1001
    .local v2, "source":Landroid/view/InsetsSource;
    if-eqz v2, :cond_0

    .line 1002
    invoke-virtual {v2}, Landroid/view/InsetsSource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 999
    .end local v2    # "source":Landroid/view/InsetsSource;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1005
    .end local v1    # "i":I
    :cond_1
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
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 968
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 969
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 970
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:[Landroid/view/InsetsSource;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 971
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 972
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 973
    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 974
    return-void
.end method

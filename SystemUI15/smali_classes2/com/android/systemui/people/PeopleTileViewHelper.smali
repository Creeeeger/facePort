.class public final Lcom/android/systemui/people/PeopleTileViewHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

.field public static final DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

.field public static final DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

.field public static final MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final mAppWidgetId:I

.field public final mContext:Landroid/content/Context;

.field public final mDensity:F

.field public final mHeight:I

.field public mIntegerFormat:Ljava/text/NumberFormat;

.field public final mIsLeftToRight:Z

.field public final mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

.field public final mLayoutSize:I

.field public mLocale:Ljava/util/Locale;

.field public final mMediumVerticalPadding:I

.field public final mTile:Landroid/app/people/PeopleSpaceTile;

.field public final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[!][!]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[?][?]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[!?][!?]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "![?].*|.*[?]!"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IIILcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    iput-object p6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    iput p3, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mAppWidgetId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    iput p4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    iput p5, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    const p1, 0x7f070ecb

    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p6, 0x2

    if-lt p5, p1, :cond_0

    const p1, 0x7f070ecd

    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p1

    if-lt p4, p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f070ecc

    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p1

    if-lt p5, p1, :cond_1

    const p1, 0x7f070ece

    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p1

    if-lt p4, p1, :cond_1

    const p1, 0x7f070087

    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p1

    const/4 p4, 0x4

    add-int/2addr p1, p4

    const v0, 0x7f070ab3

    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result v0

    add-int/2addr v0, p1

    sub-int/2addr p5, v0

    invoke-static {p5, p6}, Ljava/lang/Math;->floorDiv(II)I

    move-result p1

    const/16 p5, 0x10

    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mMediumVerticalPadding:I

    move p6, p3

    goto :goto_0

    :cond_1
    move p6, p2

    :goto_0
    iput p6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    if-nez p1, :cond_2

    move p2, p3

    :cond_2
    iput-boolean p2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    return-void
.end method

.method public static createRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILandroid/os/Bundle;Lcom/android/systemui/people/widget/PeopleTileKey;)Landroid/widget/RemoteViews;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const-string v1, "appWidgetSizes"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v0

    float-to-int v0, v2

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "appWidgetMinWidth"

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "appWidgetMaxHeight"

    invoke-virtual {p3, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Landroid/util/SizeF;

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-direct {v5, v3, v4}, Landroid/util/SizeF;-><init>(FF)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "appWidgetMaxWidth"

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "appWidgetMinHeight"

    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    new-instance v0, Landroid/util/SizeF;

    int-to-float v1, v1

    int-to-float p3, p3

    invoke-direct {v0, v1, p3}, Landroid/util/SizeF;-><init>(FF)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILcom/android/systemui/people/widget/PeopleTileKey;)V

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    new-instance p1, Landroid/widget/RemoteViews;

    invoke-direct {p1, p0}, Landroid/widget/RemoteViews;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public static getPersonIconBitmap(Landroid/content/Context;IZLandroid/graphics/drawable/Icon;Ljava/lang/String;IZZ)Landroid/graphics/Bitmap;
    .locals 14

    move-object v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p3, :cond_0

    const v2, 0x7f080824

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static {v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Lcom/android/systemui/people/PeopleStoryIconFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v4

    move v5, p1

    invoke-direct {v2, p0, v3, v4, p1}, Lcom/android/systemui/people/PeopleStoryIconFactory;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/util/IconDrawableFactory;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    invoke-direct {v5, v0, v3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;

    :try_start_0
    iget-object v3, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual {v3, v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v6, v3

    goto :goto_1

    :catch_0
    iget-object v3, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :goto_1
    iget v7, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconBitmapSize:I

    iget v8, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mImportantConversationColor:I

    iget v10, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconSize:F

    iget v11, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mDensity:F

    iget v12, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mAccentColor:I

    move-object v4, v0

    move/from16 v9, p6

    move/from16 v13, p2

    invoke-direct/range {v4 .. v13}, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;-><init>(Landroidx/core/graphics/drawable/RoundedBitmapDrawable;Landroid/graphics/drawable/Drawable;IIZFFIZ)V

    if-eqz p7, :cond_1

    invoke-static {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    invoke-static {v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getNotificationPolicyState()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    return v0

    :cond_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->isImportantConversation()Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    and-int/lit8 v2, v1, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    return v0

    :cond_3
    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_5

    :cond_4
    return v0

    :cond_5
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->canBypassDnd()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0a0404

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void

    :cond_0
    const v0, 0x7f0a0401

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0a0402

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0a0403

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method public static setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0a0945

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void

    :cond_0
    const v0, 0x7f0a093f

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0a0940

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0a0941

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0a0942

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0a0943

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f0a0944

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method


# virtual methods
.method public final createDndRemoteViews()Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;
    .locals 21

    move-object/from16 v1, p0

    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v8, 0x1

    iget v3, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    if-eq v3, v8, :cond_1

    if-eq v3, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    move-result v4

    goto :goto_0

    :cond_0
    const v4, 0x7f0d029e

    goto :goto_0

    :cond_1
    const v4, 0x7f0d029d

    :goto_0
    invoke-direct {v7, v0, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v0, 0x7f070088

    invoke-virtual {v1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v0

    const v4, 0x7f070959

    invoke-virtual {v1, v4}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v4

    iget-object v5, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f130d99

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0a0d19

    invoke-virtual {v7, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-ne v3, v2, :cond_2

    const v9, 0x7f070234

    goto :goto_1

    :cond_2
    const v9, 0x7f070235

    :goto_1
    iget-object v10, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v6, v11, v10}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    invoke-virtual {v1, v9}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result v10

    const-string/jumbo v12, "setMaxLines"

    const/16 v13, 0x10

    iget v14, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    if-ne v3, v8, :cond_3

    sub-int/2addr v14, v13

    div-int/2addr v14, v10

    invoke-virtual {v7, v6, v12, v14}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_8

    :cond_3
    int-to-float v13, v13

    iget v15, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    mul-float/2addr v13, v15

    float-to-int v13, v13

    const/16 v8, 0xe

    int-to-float v8, v8

    mul-float/2addr v8, v15

    float-to-int v8, v8

    if-nez v3, :cond_4

    const v16, 0x7f070ec8

    :goto_2
    move/from16 v6, v16

    goto :goto_3

    :cond_4
    const v16, 0x7f070633

    goto :goto_2

    :goto_3
    invoke-virtual {v1, v6}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v6

    add-int/lit8 v14, v14, -0x20

    sub-int/2addr v14, v6

    const v11, 0x7f070c77

    invoke-virtual {v1, v11}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v11

    iget v2, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    move/from16 v18, v6

    add-int/lit8 v6, v2, -0x20

    sub-int v0, v14, v0

    const/16 v17, 0x2

    mul-int/lit8 v11, v11, 0x2

    move/from16 v19, v8

    sub-int v8, v0, v11

    move/from16 v20, v13

    :try_start_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v13, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v13, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const v9, 0x10301ad

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    int-to-float v6, v6

    mul-float/2addr v6, v15

    float-to-int v6, v6

    const/4 v13, 0x0

    invoke-static {v5, v13, v9, v0, v6}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v6, "Could not create static layout: "

    const-string v9, "PeopleTileView"

    invoke-static {v6, v0, v9}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_5

    const v0, 0x7fffffff

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v15

    float-to-int v0, v0

    :goto_5
    const v9, 0x7f0a0902

    if-gt v0, v8, :cond_6

    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    sub-int/2addr v14, v0

    sub-int/2addr v14, v11

    const v1, 0x7f0a0d19

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    div-int/2addr v8, v10

    invoke-virtual {v7, v1, v12, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v7, v9, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    add-int/lit8 v2, v2, -0x20

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, v15

    float-to-int v1, v1

    invoke-static {v0, v1, v4}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    const/high16 v2, 0x1020000

    move-object v1, v7

    move/from16 v3, v20

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v8, v18

    move/from16 v6, v20

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    int-to-float v1, v8

    const/4 v2, 0x1

    invoke-virtual {v7, v9, v1, v2}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    invoke-virtual {v7, v9, v1, v2}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    :goto_6
    const/4 v1, 0x0

    goto :goto_7

    :cond_6
    if-eqz v3, :cond_7

    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0d029a

    invoke-direct {v7, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :cond_7
    invoke-virtual {v1, v7}, Lcom/android/systemui/people/PeopleTileViewHelper;->getMaxAvatarSize(Landroid/widget/RemoteViews;)I

    move-result v0

    const v1, 0x7f0a0705

    const/16 v2, 0x8

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0a07af

    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v7, v9, v5}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_6

    :goto_7
    invoke-virtual {v7, v9, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f080a9e

    invoke-virtual {v7, v9, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_8
    new-instance v1, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;

    invoke-direct {v1, v7, v0}, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;-><init>(Landroid/widget/RemoteViews;I)V

    return-object v1
.end method

.method public final createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    move-result v6

    goto :goto_0

    :cond_0
    const v6, 0x7f0d0295

    goto :goto_0

    :cond_1
    const v6, 0x7f0d0297

    :goto_0
    invoke-direct {v2, v3, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const v7, 0x7f1301cc

    const v8, 0x7f13143f

    const v9, 0x7f130706

    const-string v10, ""

    if-eqz v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move-object v3, v10

    goto :goto_1

    :pswitch_0
    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f1313f1    # 1.9550006E38f

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_1
    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f130b16

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_2
    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_3
    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_4
    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_5
    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f130ce6

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_6
    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f1301ae

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_7
    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f130250

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPredefinedIconVisible(Landroid/widget/RemoteViews;)V

    const v6, 0x7f0a0d19

    invoke-virtual {v2, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result v11

    if-ne v11, v12, :cond_4

    :cond_3
    sget-object v11, Lcom/android/systemui/people/EmojiHelper;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v11, "\ud83c\udf82"

    invoke-static {v2, v11}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v11

    const-string/jumbo v13, "setTextColor"

    const/4 v14, 0x0

    const v15, 0x7f0a07af

    if-eqz v11, :cond_6

    const v7, 0x7f0a0a59

    invoke-virtual {v2, v7, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v7, 0x7f0a0c1c

    invoke-virtual {v2, v7, v11}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    if-ne v1, v4, :cond_5

    const/16 v3, 0x50

    const v7, 0x7f0a02d1

    const-string/jumbo v14, "setGravity"

    invoke-virtual {v2, v7, v14, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {v2, v15, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x1010036

    invoke-virtual {v2, v6, v13, v3}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    goto :goto_2

    :cond_5
    if-ne v1, v5, :cond_7

    invoke-virtual {v2, v6, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v15, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    const v3, 0x1010038

    invoke-virtual {v2, v6, v13, v3}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    invoke-virtual {v0, v2, v14}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    :cond_7
    :goto_2
    const v3, 0x7f070083

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    const v3, 0x7f080a85

    goto :goto_3

    :pswitch_8
    const v3, 0x7f080934

    goto :goto_3

    :pswitch_9
    const v3, 0x7f08097c

    goto :goto_3

    :pswitch_a
    const v3, 0x7f080a8b

    goto :goto_3

    :pswitch_b
    const v3, 0x7f080b48

    goto :goto_3

    :pswitch_c
    const v3, 0x7f080a5c

    goto :goto_3

    :pswitch_d
    const v3, 0x7f080a7e

    goto :goto_3

    :pswitch_e
    const v3, 0x7f080859

    goto :goto_3

    :pswitch_f
    const v3, 0x7f080849

    :goto_3
    const v7, 0x7f0a0902

    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v3}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_4

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    move-result v12

    packed-switch v12, :pswitch_data_2

    goto :goto_4

    :pswitch_10
    iget-object v8, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f1313f2    # 1.9550008E38f

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v9, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :pswitch_11
    iget-object v8, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f130b17

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v9, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :pswitch_12
    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :pswitch_13
    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :pswitch_14
    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f1301cc

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :pswitch_15
    iget-object v8, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f130ce7

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v9, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :pswitch_16
    iget-object v8, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f1301af

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v9, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :pswitch_17
    iget-object v8, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f130251

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v9, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_4
    iget-object v3, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {v0, v10}, [Ljava/lang/Object;

    move-result-object v0

    const v8, 0x7f130ce5

    invoke-virtual {v3, v8, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_c

    if-eq v1, v5, :cond_a

    if-eq v1, v4, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v2, v6, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_6

    :cond_a
    if-nez v11, :cond_b

    goto :goto_5

    :cond_b
    move v6, v15

    :goto_5
    invoke-virtual {v2, v6, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :goto_6
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public getDoubleEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    sget-object p0, Lcom/android/systemui/people/EmojiHelper;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x2

    const/4 v2, 0x0

    if-ge p0, p1, :cond_1

    return-object v2

    :cond_1
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p0, p1, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method public getDoublePunctuation(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "!?"

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const-string v1, "!"

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    sget-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const-string v2, "?"

    if-nez v0, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    if-ge p0, p1, :cond_4

    return-object v2

    :cond_4
    return-object v1
.end method

.method public final getLayoutSmallByHeight()I
    .locals 1

    const v0, 0x7f070ecc

    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    if-lt p0, v0, :cond_0

    const p0, 0x7f0d029a

    return p0

    :cond_0
    const p0, 0x7f0d029b

    return p0
.end method

.method public final getLineHeightFromResource(I)I
    .locals 2

    :try_start_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const p1, 0x10301ad

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not create text view: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PeopleTileView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f070235

    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    return p0
.end method

.method public final getMaxAvatarSize(Landroid/widget/RemoteViews;)I
    .locals 6

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p1

    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v1

    const v2, 0x7f0d0296

    const v3, 0x7f07095a

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    return p0

    :cond_0
    const v2, 0x7f0d0297

    if-ne p1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    return p0

    :cond_1
    const v0, 0x7f0d029a

    iget v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    iget v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    if-ne p1, v0, :cond_2

    const v0, 0x7f070ab4

    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result v0

    const/16 v1, 0x12

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    sub-int v0, v4, v0

    add-int/lit8 v1, v2, -0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_2
    const v0, 0x7f0d029b

    if-ne p1, v0, :cond_3

    add-int/lit8 v0, v4, -0xa

    add-int/lit8 v1, v2, -0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_3
    const v0, 0x7f0d0294

    const v5, 0x7f070234

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x3e

    sub-int/2addr v4, p1

    invoke-virtual {p0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_4
    const v0, 0x7f0d0295

    if-ne p1, v0, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x4c

    sub-int/2addr v4, p1

    invoke-virtual {p0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_5
    const v0, 0x7f0d0292

    if-ne p1, v0, :cond_6

    const p1, 0x7f070ab1

    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1c

    invoke-virtual {p0, v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2a

    sub-int/2addr v4, v0

    add-int/lit8 v2, v2, -0x1c

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-static {p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createDndRemoteViews()Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;

    move-result-object p1

    iget v1, p1, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;->mAvatarSize:I

    :cond_7
    const p1, 0x7f070959

    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final getSizeInDp(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public getViews()Landroid/widget/RemoteViews;
    .locals 23

    move-object/from16 v1, p0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    const/16 v7, 0x8

    const-string v8, "PeopleTileView"

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->isPackageSuspended()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->isUserQuieted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_14

    :cond_0
    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-static {v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createDndRemoteViews()Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;->mRemoteViews:Landroid/widget/RemoteViews;

    :cond_1
    :goto_0
    move-object v6, v0

    goto/16 :goto_16

    :cond_2
    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getNotificationCategory()Ljava/lang/String;

    move-result-object v0

    const-string v9, "missed_call"

    invoke-static {v0, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const v9, 0x7f130ce4

    const v11, 0x7f0a0902

    const v12, 0x7f0a0d19

    const v13, 0x7f070081

    const-string/jumbo v14, "setTextColor"

    const v15, 0x7f0a0705

    if-eqz v0, :cond_7

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v10, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eq v5, v3, :cond_4

    if-eq v5, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    move-result v16

    :goto_1
    move/from16 v6, v16

    goto :goto_2

    :cond_3
    const v16, 0x7f0d0295

    goto :goto_1

    :cond_4
    const v6, 0x7f0d0297

    :goto_2
    invoke-direct {v0, v10, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPredefinedIconVisible(Landroid/widget/RemoteViews;)V

    invoke-virtual {v0, v12, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v0, v15, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v1, v0, v4}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    iget-object v6, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v6}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v10, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v10}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v15, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    filled-new-array {v10, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v15, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_5

    move v9, v11

    goto :goto_3

    :cond_5
    move v9, v12

    :goto_3
    invoke-virtual {v0, v9, v6}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    const v6, 0x1010543

    invoke-virtual {v0, v12, v14, v6}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    const-string/jumbo v9, "setColorFilter"

    invoke-virtual {v0, v11, v9, v6}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    const v6, 0x7f080a87

    invoke-virtual {v0, v11, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-ne v5, v2, :cond_6

    const-string/jumbo v5, "setGravity"

    const/16 v6, 0x50

    const v9, 0x7f0a02d1

    invoke-virtual {v0, v9, v5, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v5, 0x7f070632

    invoke-virtual {v0, v11, v5}, Landroid/widget/RemoteViews;->setViewLayoutHeightDimen(II)V

    invoke-virtual {v0, v11, v5}, Landroid/widget/RemoteViews;->setViewLayoutWidthDimen(II)V

    :cond_6
    invoke-virtual {v1, v0, v13}, Lcom/android/systemui/people/PeopleTileViewHelper;->setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eq v5, v3, :cond_9

    if-eq v5, v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    move-result v10

    goto :goto_4

    :cond_8
    const v10, 0x7f0d0294

    goto :goto_4

    :cond_9
    const v10, 0x7f0d0297

    :goto_4
    invoke-direct {v6, v0, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Lcom/android/systemui/people/PeopleTileViewHelper;->setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getNotificationSender()Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getNotificationDataUri()Landroid/net/Uri;

    move-result-object v0

    const v13, 0x7f0a051f

    if-eqz v0, :cond_a

    iget-object v9, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v14}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    const v15, 0x7f130ce3

    invoke-virtual {v9, v15, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v13, v9}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    invoke-virtual {v6, v13, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v6, v12, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :try_start_0
    iget-object v14, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14, v0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    new-instance v14, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda4;

    invoke-direct {v14, v1}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/people/PeopleTileViewHelper;)V

    invoke-static {v0, v14}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v13, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    const-string v14, "Could not decode image: "

    invoke-static {v14, v0, v8}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {v6, v12, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v6, v12, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v6, v13, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_8

    :cond_a
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {v1, v6, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v10, :cond_b

    move-object v15, v10

    goto :goto_5

    :cond_b
    iget-object v15, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v15}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v15

    :goto_5
    iget-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    filled-new-array {v15, v0}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v4, v9, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-nez v5, :cond_c

    move v9, v11

    goto :goto_6

    :cond_c
    move v9, v12

    :goto_6
    invoke-virtual {v6, v9, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getDoubleEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {v6, v4}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-static {v6, v4}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    invoke-virtual {v1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getDoublePunctuation(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v6, v4}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    invoke-static {v6, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    :goto_7
    const v0, 0x1010036

    invoke-virtual {v6, v12, v14, v0}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v12, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-ne v5, v2, :cond_e

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070030

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v18, 0x7f0a07af

    const/16 v19, 0x0

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v22}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_e
    invoke-virtual {v6, v13, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v0, 0x7f0809b2

    invoke-virtual {v6, v11, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_8
    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getMessagesCount()I

    move-result v0

    if-le v0, v3, :cond_14

    if-ne v5, v3, :cond_11

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0700c0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    if-eqz v4, :cond_f

    const/16 v19, 0x0

    goto :goto_9

    :cond_f
    move/from16 v19, v0

    :goto_9
    if-eqz v4, :cond_10

    move/from16 v21, v0

    goto :goto_a

    :cond_10
    const/16 v21, 0x0

    :goto_a
    const/16 v22, 0x0

    const v18, 0x7f0a07af

    const/16 v20, 0x0

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v22}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_11
    const v4, 0x7f0a0705

    const/4 v9, 0x0

    invoke-virtual {v6, v4, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getMessagesCount()I

    move-result v0

    const/4 v4, 0x6

    if-lt v0, v4, :cond_12

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v9, 0x7f130c0a

    invoke-virtual {v0, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    const v4, 0x7f0a0705

    goto :goto_c

    :cond_12
    iget-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    iget-object v9, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4, v9}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    iput-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mLocale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mIntegerFormat:Ljava/text/NumberFormat;

    :cond_13
    iget-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mIntegerFormat:Ljava/text/NumberFormat;

    int-to-long v12, v0

    invoke-virtual {v4, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :goto_c
    invoke-virtual {v6, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-nez v5, :cond_14

    invoke-virtual {v6, v11, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_14
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v4, 0x7f0a0c98

    if-nez v0, :cond_15

    const/4 v9, 0x0

    invoke-virtual {v6, v4, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v6, v4, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_d
    const v4, 0x7f070081

    goto :goto_e

    :cond_15
    const/4 v9, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_d

    :goto_e
    invoke-virtual {v1, v6, v4}, Lcom/android/systemui/people/PeopleTileViewHelper;->setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V

    goto/16 :goto_16

    :cond_16
    move v9, v4

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_17

    new-array v0, v9, [Landroid/app/people/ConversationStatus;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_17
    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/people/PeopleTileViewHelper;)V

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_f
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/people/ConversationStatus;

    goto :goto_10

    :cond_18
    iget-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v4}, Landroid/app/people/PeopleSpaceTile;->getBirthdayText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    new-instance v4, Landroid/app/people/ConversationStatus$Builder;

    iget-object v6, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v6}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Landroid/app/people/ConversationStatus$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Landroid/app/people/ConversationStatus$Builder;->build()Landroid/app/people/ConversationStatus;

    move-result-object v4

    goto :goto_10

    :cond_19
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_1a

    invoke-virtual {v1, v4}, Lcom/android/systemui/people/PeopleTileViewHelper;->createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto/16 :goto_0

    :cond_1a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {v4}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/people/ConversationStatus;

    invoke-virtual {v1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto/16 :goto_0

    :cond_1b
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eq v5, v3, :cond_1d

    if-eq v5, v2, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    move-result v6

    goto :goto_11

    :cond_1c
    const v6, 0x7f0d0292

    goto :goto_11

    :cond_1d
    const v6, 0x7f0d0296

    :goto_11
    invoke-direct {v0, v4, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v4, 0x7f0a07af

    const-string/jumbo v6, "setMaxLines"

    invoke-virtual {v0, v4, v6, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    if-nez v5, :cond_1e

    const/4 v9, 0x0

    invoke-virtual {v0, v4, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v0, v11, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v9, 0x7f0a0705

    invoke-virtual {v0, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_1e
    iget-object v9, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v9}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_1f

    iget-object v9, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v9}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_1f
    iget-object v9, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v10}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_20

    const-string v9, "Could not get valid last interaction"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    const/4 v9, 0x0

    goto :goto_13

    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-static {v12, v13}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Duration;->toDays()J

    move-result-wide v11

    const-wide/16 v13, 0x1

    cmp-long v11, v11, v13

    if-gtz v11, :cond_21

    goto :goto_12

    :cond_21
    invoke-virtual {v10}, Ljava/time/Duration;->toDays()J

    move-result-wide v11

    const-wide/16 v13, 0x7

    cmp-long v11, v11, v13

    if-gez v11, :cond_22

    invoke-virtual {v10}, Ljava/time/Duration;->toDays()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f1304d8

    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_13

    :cond_22
    invoke-virtual {v10}, Ljava/time/Duration;->toDays()J

    move-result-wide v11

    cmp-long v11, v11, v13

    if-nez v11, :cond_23

    const v10, 0x7f130d65

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_13

    :cond_23
    invoke-virtual {v10}, Ljava/time/Duration;->toDays()J

    move-result-wide v11

    const-wide/16 v13, 0xe

    cmp-long v11, v11, v13

    if-gez v11, :cond_24

    const v10, 0x7f130d7e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_13

    :cond_24
    invoke-virtual {v10}, Ljava/time/Duration;->toDays()J

    move-result-wide v10

    cmp-long v10, v10, v13

    if-nez v10, :cond_25

    const v10, 0x7f1313dd

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_13

    :cond_25
    const v10, 0x7f130d7f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_13
    const v10, 0x7f0a05eb

    if-eqz v9, :cond_26

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v0, v10, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_26
    invoke-virtual {v0, v10, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-ne v5, v3, :cond_1

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v6, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_27
    :goto_14
    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->isUserQuieted()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d029f

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_15

    :cond_28
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d029c

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_15
    iget-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f080872

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static {v4}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    const v5, 0x7f0a0505

    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :goto_16
    invoke-virtual {v1, v6}, Lcom/android/systemui/people/PeopleTileViewHelper;->getMaxAvatarSize(Landroid/widget/RemoteViews;)I

    move-result v0

    :try_start_1
    iget-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    if-nez v4, :cond_29

    goto/16 :goto_1e

    :cond_29
    invoke-virtual {v4}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v4

    const v5, 0x7f0a0130

    if-eqz v4, :cond_2a

    iget-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v4}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v9, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;

    const/4 v15, 0x0

    invoke-direct {v9, v15}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v4, v9}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v6, v5, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f070082

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f130da9

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :goto_17
    move v9, v4

    goto :goto_18

    :catch_1
    move-exception v0

    goto/16 :goto_1d

    :cond_2a
    const/4 v15, 0x0

    :cond_2b
    invoke-virtual {v6, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070080

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_17

    :goto_18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-nez v4, :cond_2c

    move v4, v3

    goto :goto_19

    :cond_2c
    move v4, v15

    :goto_19
    if-eqz v4, :cond_2d

    move v11, v9

    goto :goto_1a

    :cond_2d
    move v11, v15

    :goto_1a
    if-eqz v4, :cond_2e

    move v13, v15

    goto :goto_1b

    :cond_2e
    move v13, v9

    :goto_1b
    const/4 v12, 0x0

    const/4 v14, 0x0

    const v10, 0x7f0a08a5

    move-object v9, v6

    invoke-virtual/range {v9 .. v14}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    iget-object v4, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v4}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2f

    invoke-virtual {v4}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_1c

    :cond_2f
    move v3, v15

    :goto_1c
    iget-object v9, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile;->getUserIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    move-result-object v13

    sget-object v4, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    invoke-virtual {v2}, Landroid/app/people/PeopleSpaceTile;->isImportantConversation()Z

    move-result v15

    invoke-static {v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z

    move-result v16

    move v10, v0

    move v11, v3

    invoke-static/range {v9 .. v16}, Lcom/android/systemui/people/PeopleTileViewHelper;->getPersonIconBitmap(Landroid/content/Context;IZLandroid/graphics/drawable/Icon;Ljava/lang/String;IZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const v2, 0x7f0a08d8

    invoke-virtual {v6, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    if-eqz v3, :cond_30

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v3}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f130ce7

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_1e

    :cond_30
    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1e

    :goto_1d
    const-string v2, "Failed to set common fields: "

    invoke-static {v2, v0, v8}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1e
    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-static {v0}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    if-nez v2, :cond_31

    goto :goto_21

    :cond_31
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/people/widget/LaunchConversationActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0x50808000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "extra_tile_id"

    iget-object v4, v0, Lcom/android/systemui/people/widget/PeopleTileKey;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_package_name"

    iget-object v4, v0, Lcom/android/systemui/people/widget/PeopleTileKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_user_handle"

    new-instance v4, Landroid/os/UserHandle;

    iget v0, v0, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    if-eqz v0, :cond_32

    const-string v3, "extra_notification_key"

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1f

    :catch_2
    move-exception v0

    goto :goto_20

    :cond_32
    :goto_1f
    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    iget v1, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mAppWidgetId:I

    const/high16 v3, 0xa000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/high16 v1, 0x1020000

    invoke-virtual {v6, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_21

    :goto_20
    const-string v1, "Failed to add launch intents: "

    invoke-static {v1, v0, v8}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_33
    :goto_21
    return-object v6
.end method

.method public final setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0709a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-boolean p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move v4, p2

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    if-eqz p0, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p2

    :goto_1
    const v3, 0x7f0a06fa

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    return-void
.end method

.method public final setMaxLines(Landroid/widget/RemoteViews;Z)V
    .locals 7

    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v2, 0x7f070ab2

    invoke-virtual {p0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result v2

    const v3, 0x7f070234

    goto :goto_0

    :cond_0
    const v2, 0x7f070ab3

    invoke-virtual {p0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result v2

    const v3, 0x7f070235

    :goto_0
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    const v5, 0x7f0d0295

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    if-eq v0, v6, :cond_4

    if-eq v0, v1, :cond_2

    const/4 v0, -0x1

    goto :goto_3

    :cond_2
    if-eqz v4, :cond_3

    const/16 v0, 0x4c

    goto :goto_2

    :cond_3
    const/16 v0, 0x3e

    :goto_2
    const v4, 0x7f07095a

    invoke-virtual {p0, v4}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v0

    sub-int v0, v5, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0xc

    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mMediumVerticalPadding:I

    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    sub-int v0, v5, v0

    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->floorDiv(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-eqz p2, :cond_5

    add-int/lit8 p0, p0, -0x1

    :cond_5
    const p2, 0x7f0a0d19

    const-string/jumbo v0, "setMaxLines"

    invoke-virtual {p1, p2, v0, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public final setPredefinedIconVisible(Landroid/widget/RemoteViews;)V
    .locals 8

    const v0, 0x7f0a0902

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700c1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    if-eqz p0, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    if-eqz p0, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    const v3, 0x7f0a07af

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_2
    return-void
.end method

.method public final setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 13

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getDoubleEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-static {p1, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    invoke-static {p1, v4}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getDoublePunctuation(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v4}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    invoke-static {p1, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    :goto_0
    const v7, 0x7f0a0902

    invoke-virtual {p1, v7, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    const v1, 0x7f0a0d19

    invoke-virtual {p1, v1, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    const v8, 0x7f0a07af

    invoke-virtual {p1, v8, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    const v2, 0x7f0a051f

    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v1, v8}, Landroid/widget/RemoteViews;->setAccessibilityTraversalAfter(II)V

    iget v9, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-nez v9, :cond_1

    invoke-virtual {p1, v7, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v8, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v7, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v1, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0a0c98

    invoke-virtual {p1, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v2, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0a0a59

    invoke-virtual {p1, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    const/4 v1, 0x1

    if-ne v9, v1, :cond_2

    iget v12, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v12

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v5, v1

    iget v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mMediumVerticalPadding:I

    int-to-float v1, v1

    mul-float/2addr v1, v12

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v6, v1

    const v2, 0x7f0a02d1

    move-object v1, p1

    move v3, v5

    move v4, v6

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v2, 0x7f0a07af

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0709a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v12

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    if-le v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070958

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v8, v10, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :cond_2
    const/4 v1, 0x2

    if-ne v9, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v2, 0x7f0a07af

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    const/16 v1, 0x30

    const v2, 0x7f0a02d1

    const-string/jumbo v3, "setGravity"

    invoke-virtual {p1, v2, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_3
    const v1, 0x7f070ec8

    invoke-virtual {p1, v7, v1}, Landroid/widget/RemoteViews;->setViewLayoutHeightDimen(II)V

    invoke-virtual {p1, v7, v1}, Landroid/widget/RemoteViews;->setViewLayoutWidthDimen(II)V

    const v1, 0x7f0a0705

    invoke-virtual {p1, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v1}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_4
    return-object p1
.end method

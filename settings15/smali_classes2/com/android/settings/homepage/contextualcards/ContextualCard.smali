.class public Lcom/android/settings/homepage/contextualcards/ContextualCard;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

.field public final mCardType:I

.field public final mCategory:I

.field public final mHasInlineAction:Z

.field public final mIconDrawable:Landroid/graphics/drawable/Drawable;

.field public final mIsLargeCard:Z

.field public final mIsPendingDismiss:Z

.field public final mName:Ljava/lang/String;

.field public final mRankingScore:D

.field public final mSlice:Landroidx/slice/Slice;

.field public final mSliceUri:Ljava/lang/String;

.field public final mSummaryText:Ljava/lang/String;

.field public final mTitleText:Ljava/lang/String;

.field public final mViewType:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mName:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    iput v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mCardType:I

    const-string v2, "score"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    iput-wide v2, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mRankingScore:D

    const-string v2, "slice_uri"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSliceUri:Ljava/lang/String;

    const-string v2, "category"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    iput v2, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mCategory:I

    const-string v2, "package_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v2, "app_version"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    const-string p1, ""

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryText:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mTitleText:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsLargeCard:Z

    iput-boolean p1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIsLargeCard:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const v1, 0x7f0d01e8

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    iput v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    iput v1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mViewType:I

    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsPendingDismiss:Z

    iput-boolean p1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIsPendingDismiss:Z

    iput-boolean p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mHasInlineAction:Z

    iput-boolean p1, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mHasInlineAction:Z

    iput-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSlice:Landroidx/slice/Slice;

    iput-object v2, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSlice:Landroidx/slice/Slice;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    iget v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mCardType:I

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    iget-wide v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mRankingScore:D

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSliceUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    iget v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mCategory:I

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mTitleText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleText:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSummaryText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryText:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIsLargeCard:Z

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsLargeCard:Z

    iget v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mViewType:I

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    iget-boolean v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mIsPendingDismiss:Z

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsPendingDismiss:Z

    iget-boolean v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mHasInlineAction:Z

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mHasInlineAction:Z

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->mSlice:Landroidx/slice/Slice;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSlice:Landroidx/slice/Slice;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public getCardType()I
    .locals 0

    iget p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

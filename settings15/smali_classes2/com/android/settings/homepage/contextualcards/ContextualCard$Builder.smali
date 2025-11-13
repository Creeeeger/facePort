.class public Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAppVersion:J

.field public mCardType:I

.field public mCategory:I

.field public mHasInlineAction:Z

.field public mIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mIsLargeCard:Z

.field public mIsPendingDismiss:Z

.field public mName:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mRankingScore:D

.field public mSlice:Landroidx/slice/Slice;

.field public mSliceUri:Ljava/lang/String;

.field public mSummaryText:Ljava/lang/String;

.field public mTitleText:Ljava/lang/String;

.field public mViewType:I


# virtual methods
.method public build()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)V

    return-object v0
.end method

.class public final Lcom/android/settings/slices/SliceData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mFragmentClassName:Ljava/lang/String;

.field public final mHighlightMenuRes:I

.field public final mIconResource:I

.field public final mIsPublicSlice:Z

.field public final mKey:Ljava/lang/String;

.field public final mKeywords:Ljava/lang/String;

.field public final mPreferenceController:Ljava/lang/String;

.field public final mScreenTitle:Ljava/lang/CharSequence;

.field public final mSliceType:I

.field public final mSummary:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;

.field public final mUnavailableSliceSubtitle:Ljava/lang/String;

.field public final mUri:Landroid/net/Uri;

.field public final mUserRestriction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/slices/SliceData$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/settings/slices/SliceData$Builder;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settings/slices/SliceData$Builder;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mTitle:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settings/slices/SliceData$Builder;->mSummary:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mSummary:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settings/slices/SliceData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mScreenTitle:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/settings/slices/SliceData$Builder;->mKeywords:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mKeywords:Ljava/lang/String;

    iget v0, p1, Lcom/android/settings/slices/SliceData$Builder;->mIconResource:I

    iput v0, p0, Lcom/android/settings/slices/SliceData;->mIconResource:I

    iget-object v0, p1, Lcom/android/settings/slices/SliceData$Builder;->mFragmentClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mFragmentClassName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settings/slices/SliceData$Builder;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mUri:Landroid/net/Uri;

    iget-object v0, p1, Lcom/android/settings/slices/SliceData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mPreferenceController:Ljava/lang/String;

    iget v0, p1, Lcom/android/settings/slices/SliceData$Builder;->mSliceType:I

    iput v0, p0, Lcom/android/settings/slices/SliceData;->mSliceType:I

    iget-object v0, p1, Lcom/android/settings/slices/SliceData$Builder;->mUnavailableSliceSubtitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/slices/SliceData;->mUnavailableSliceSubtitle:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/settings/slices/SliceData$Builder;->mIsPublicSlice:Z

    iput-boolean v0, p0, Lcom/android/settings/slices/SliceData;->mIsPublicSlice:Z

    iget v0, p1, Lcom/android/settings/slices/SliceData$Builder;->mHighlightMenuRes:I

    iput v0, p0, Lcom/android/settings/slices/SliceData;->mHighlightMenuRes:I

    iget-object p1, p1, Lcom/android/settings/slices/SliceData$Builder;->mUserRestriction:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/slices/SliceData;->mUserRestriction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/settings/slices/SliceData;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/android/settings/slices/SliceData;

    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/slices/SliceData;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

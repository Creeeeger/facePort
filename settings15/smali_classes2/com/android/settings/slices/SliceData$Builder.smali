.class public final Lcom/android/settings/slices/SliceData$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mFragmentClassName:Ljava/lang/String;

.field public mHighlightMenuRes:I

.field public mIconResource:I

.field public mIsPublicSlice:Z

.field public mKey:Ljava/lang/String;

.field public mKeywords:Ljava/lang/String;

.field public mPrefControllerClassName:Ljava/lang/String;

.field public mScreenTitle:Ljava/lang/CharSequence;

.field public mSliceType:I

.field public mSummary:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mUnavailableSliceSubtitle:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field public mUserRestriction:Ljava/lang/String;


# virtual methods
.method public final build()Lcom/android/settings/slices/SliceData;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/slices/SliceData$Builder;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/slices/SliceData$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/slices/SliceData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/slices/SliceData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings/slices/SliceData$Builder;->mHighlightMenuRes:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Highlight menu key res is empty: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/slices/SliceData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    const-string v2, "SliceData"

    invoke-static {v0, v1, v2}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/android/settings/slices/SliceData;

    invoke-direct {v0, p0}, Lcom/android/settings/slices/SliceData;-><init>(Lcom/android/settings/slices/SliceData$Builder;)V

    return-object v0

    :cond_1
    new-instance p0, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;

    const-string v0, "Preference Controller cannot be empty"

    invoke-direct {p0, v0}, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;

    const-string v0, "Fragment Name cannot be empty"

    invoke-direct {p0, v0}, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;

    const-string v0, "Title cannot be empty"

    invoke-direct {p0, v0}, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;

    const-string v0, "Key cannot be empty"

    invoke-direct {p0, v0}, Lcom/android/settings/slices/SliceData$InvalidSliceDataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

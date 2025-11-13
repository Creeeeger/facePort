.class public final Landroid/view/inputmethod/DeleteRangeGesture$Builder;
.super Ljava/lang/Object;
.source "DeleteRangeGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/DeleteRangeGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mEndArea:Landroid/graphics/RectF;

.field private blacklist mFallbackText:Ljava/lang/String;

.field private blacklist mGranularity:I

.field private blacklist mStartArea:Landroid/graphics/RectF;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/inputmethod/DeleteRangeGesture;
    .locals 7

    iget-object v0, p0, Landroid/view/inputmethod/DeleteRangeGesture$Builder;->mStartArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/DeleteRangeGesture$Builder;->mStartArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/DeleteRangeGesture$Builder;->mEndArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/inputmethod/DeleteRangeGesture$Builder;->mEndArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/view/inputmethod/DeleteRangeGesture$Builder;->mGranularity:I

    if-lez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/DeleteRangeGesture;

    iget v2, p0, Landroid/view/inputmethod/DeleteRangeGesture$Builder;->mGranularity:I

    iget-object v3, p0, Landroid/view/inputmethod/DeleteRangeGesture$Builder;->mStartArea:Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/view/inputmethod/DeleteRangeGesture$Builder;->mEndArea:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/view/inputmethod/DeleteRangeGesture$Builder;->mFallbackText:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/DeleteRangeGesture;-><init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;Landroid/view/inputmethod/DeleteRangeGesture-IA;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Deletion granularity must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Deletion area must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setDeletionEndArea(Landroid/graphics/RectF;)Landroid/view/inputmethod/DeleteRangeGesture$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/DeleteRangeGesture$Builder;->mEndArea:Landroid/graphics/RectF;

    return-object p0
.end method

.method public whitelist setDeletionStartArea(Landroid/graphics/RectF;)Landroid/view/inputmethod/DeleteRangeGesture$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/DeleteRangeGesture$Builder;->mStartArea:Landroid/graphics/RectF;

    return-object p0
.end method

.method public whitelist setFallbackText(Ljava/lang/String;)Landroid/view/inputmethod/DeleteRangeGesture$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/inputmethod/DeleteRangeGesture$Builder;->mFallbackText:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setGranularity(I)Landroid/view/inputmethod/DeleteRangeGesture$Builder;
    .locals 0

    iput p1, p0, Landroid/view/inputmethod/DeleteRangeGesture$Builder;->mGranularity:I

    return-object p0
.end method

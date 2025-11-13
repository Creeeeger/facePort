.class public final Landroid/window/TaskFragmentAnimationParams$Builder;
.super Ljava/lang/Object;
.source "TaskFragmentAnimationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentAnimationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAnimationBackgroundColor:I

.field private blacklist mChangeAnimationResId:I

.field private blacklist mCloseAnimationResId:I

.field private blacklist mOpenAnimationResId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mAnimationBackgroundColor:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mOpenAnimationResId:I

    iput v0, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mChangeAnimationResId:I

    iput v0, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mCloseAnimationResId:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/TaskFragmentAnimationParams;
    .locals 7

    new-instance v6, Landroid/window/TaskFragmentAnimationParams;

    iget v1, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mAnimationBackgroundColor:I

    iget v2, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mOpenAnimationResId:I

    iget v3, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mChangeAnimationResId:I

    iget v4, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mCloseAnimationResId:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/window/TaskFragmentAnimationParams;-><init>(IIIILandroid/window/TaskFragmentAnimationParams-IA;)V

    return-object v6
.end method

.method public blacklist setAnimationBackgroundColor(I)Landroid/window/TaskFragmentAnimationParams$Builder;
    .locals 0

    iput p1, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mAnimationBackgroundColor:I

    return-object p0
.end method

.method public blacklist setChangeAnimationResId(I)Landroid/window/TaskFragmentAnimationParams$Builder;
    .locals 0

    iput p1, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mChangeAnimationResId:I

    return-object p0
.end method

.method public blacklist setCloseAnimationResId(I)Landroid/window/TaskFragmentAnimationParams$Builder;
    .locals 0

    iput p1, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mCloseAnimationResId:I

    return-object p0
.end method

.method public blacklist setOpenAnimationResId(I)Landroid/window/TaskFragmentAnimationParams$Builder;
    .locals 0

    iput p1, p0, Landroid/window/TaskFragmentAnimationParams$Builder;->mOpenAnimationResId:I

    return-object p0
.end method

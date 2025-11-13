.class public final Landroidx/fragment/app/Fragment$AnimationInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mEnterAnim:I

.field public mExitAnim:I

.field public mFocusedView:Landroid/view/View;

.field public mIsPop:Z

.field public mNextTransition:I

.field public mPopEnterAnim:I

.field public mPopExitAnim:I

.field public mPostOnViewCreatedAlpha:F

.field public final mReenterTransition:Ljava/lang/Object;

.field public final mReturnTransition:Ljava/lang/Object;

.field public final mSharedElementReturnTransition:Ljava/lang/Object;

.field public mSharedElementSourceNames:Ljava/util/ArrayList;

.field public mSharedElementTargetNames:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPostOnViewCreatedAlpha:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mFocusedView:Landroid/view/View;

    return-void
.end method

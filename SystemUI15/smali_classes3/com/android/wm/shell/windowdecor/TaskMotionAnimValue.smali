.class public final Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimType:I

.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

.field public final mStartBounds:Landroid/graphics/Rect;

.field public final mTargetScale:F

.field public final mTaskSurface:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(ILcom/android/wm/shell/windowdecor/FreeformStashState;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mAnimType:I

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mTaskSurface:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mStartBounds:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mEndBounds:Landroid/graphics/Rect;

    iput p6, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimValue;->mTargetScale:F

    return-void
.end method

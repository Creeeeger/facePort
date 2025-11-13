.class public final Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final mTargetDisplaySize:Landroid/graphics/Point;

.field public final mTargetRotation:I

.field public final mView:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method private constructor <init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;IILandroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mView:Landroid/view/View;

    iput p4, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mTargetRotation:I

    iput-object p5, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mTargetDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;IILandroid/graphics/Point;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;IILandroid/graphics/Point;)V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget v0, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mTargetRotation:I

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget v2, v1, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lcom/android/systemui/ScreenDecorations;->mDisplaySize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mTargetDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->this$0:Lcom/android/systemui/ScreenDecorations;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/ScreenDecorations;->mPendingConfigChange:Z

    invoke-virtual {v0}, Lcom/android/systemui/ScreenDecorations;->updateConfiguration()V

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$RestartingPreDrawListener;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

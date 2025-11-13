.class public final Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mFreeformOutline:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

.field public final mLayoutId:I

.field public final mNamePrefix:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V
    .locals 2

    const-string v0, "Freeform Outline"

    const v1, 0x7f0d0375

    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->mNamePrefix:Ljava/lang/String;

    iput p3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->mLayoutId:I

    return-void
.end method


# virtual methods
.method public final calculateElevation()F
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->dexCompatEnabled:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const v0, 0x7f070f8e

    goto :goto_0

    :cond_1
    const v0, 0x7f070f94

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_1
    return v1
.end method

.method public final getFreeformOutlineFrame()Landroid/graphics/Rect;
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getFreeformThickness$3()I

    move-result p0

    new-instance v1, Landroid/graphics/Rect;

    neg-int v2, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, p0

    invoke-direct {v1, v2, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public final getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final updateOutlineView(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "uimode"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v4, :cond_2

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v2, v3}, Landroid/app/UiModeManager;->getPackageNightMode(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const v2, 0x7f081023

    goto :goto_3

    :cond_5
    :goto_2
    const v2, 0x7f081022

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getFreeformThickness$3()I

    move-result v2

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsDexDockingEnabled:Z

    if-eqz v2, :cond_6

    const p0, -0xb1b1b2

    iput p0, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokeColor:I

    iput v4, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mRadius:I

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setElevation(F)V

    goto :goto_5

    :cond_6
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070f93

    invoke-static {v2, v3}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mRadius:I

    iget v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionColor:I

    sget-boolean v2, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->DEBUG:Z

    if-eqz v2, :cond_7

    const/high16 v1, 0x66ff0000

    iput v1, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokeColor:I

    goto :goto_4

    :cond_7
    iput v1, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mStrokeColor:I

    :goto_4
    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->calculateElevation()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setElevation(F)V

    :goto_5
    if-eqz p1, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_8
    :goto_6
    return-void
.end method

.class public final Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDefaultAspectRatio:F

.field public mDefaultStackGravity:I

.field public mMaxAspectRatio:F

.field public mMinAspectRatio:F

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public final mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

.field public final mPipKeepClearAlgorithm:Lcom/android/wm/shell/common/pip/PipKeepClearAlgorithmInterface;

.field public final mSizeSpecSource:Lcom/android/wm/shell/common/pip/SizeSpecSource;

.field public final mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;Lcom/android/wm/shell/common/pip/PipKeepClearAlgorithmInterface;Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;Lcom/android/wm/shell/common/pip/SizeSpecSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-object p3, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    iput-object p4, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mPipKeepClearAlgorithm:Lcom/android/wm/shell/common/pip/PipKeepClearAlgorithmInterface;

    iput-object p5, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    iput-object p6, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSizeSpecSource:Lcom/android/wm/shell/common/pip/SizeSpecSource;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    iget p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setAspectRatio(F)V

    return-void
.end method

.method public static getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 3

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sub-int/2addr p0, p3

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static getValidSourceHintRect(Landroid/app/PictureInPictureParams;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static isSourceRectHintValidForEnterPip(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "isSourceRectHintValidForEnterPip=false, hint(%s) does not match destination(%s) aspect ratio"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v2, 0x3a6b2a4bc29739b7L    # 2.7429860944004433E-27

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "isSourceRectHintValidForEnterPip=false, hint(%s) is smaller than destination(%s)"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v2, -0x2f7ade66a3e5c422L    # -7.829859716018324E79

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return v0

    :cond_6
    :goto_1
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_7

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "isSourceRectHintValidForEnterPip=false, empty hint"

    const/4 v6, 0x0

    const-wide v2, 0x2b6a7809fad3a55L

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return v0
.end method


# virtual methods
.method public final adjustNormalBoundsToFitMenu(Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 6

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v2, v5, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iget-object v5, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    cmpl-float p1, v1, v2

    if-lez p1, :cond_4

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p2, p1

    iget v1, v5, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p1, p2

    iget v1, v5, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-float p2, p1

    iget v1, v5, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p1, p2

    iget v1, v5, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_2
    invoke-virtual {v0, v3, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget p1, v5, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    invoke-virtual {p0, p1, v0, v4, v4}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(FLandroid/graphics/Rect;ZZ)V

    return-object v0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    const-string v0, "  "

    invoke-static {p2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipBoundsAlgorithm"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDefaultAspectRatio="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMinAspectRatio="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMaxAspectRatio="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDefaultStackGravity="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mDefaultStackGravity:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mSnapAlgorithm"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getDefaultBounds()Landroid/graphics/Rect;
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;
    .locals 8

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    iget-object v1, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {v7, v3, v3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, v7, v2}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, p0, p1}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    return-object v7

    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    iget v4, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    iget-object v5, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSizeSpecSource:Lcom/android/wm/shell/common/pip/SizeSpecSource;

    check-cast v5, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getDefaultSize(F)Landroid/util/Size;

    move-result-object v4

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v7, v3, v3, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, v7, v2}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, p0, p1}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mDefaultStackGravity:I

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-boolean p1, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mIsImeShowing:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mImeHeight:I

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mIsShelfShowing:Z

    if-eqz v4, :cond_3

    iget v3, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mShelfHeight:I

    :cond_3
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v4, 0x0

    move-object v3, p2

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    :goto_1
    return-object v7
.end method

.method public final getEntryDestinationBounds()Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBoundsIgnoringKeepClearAreas()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v3, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mRestrictedKeepClearAreas:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getUnrestrictedKeepClearAreas()Ljava/util/Set;

    move-result-object v2

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mPipKeepClearAlgorithm:Lcom/android/wm/shell/common/pip/PipKeepClearAlgorithmInterface;

    check-cast p0, Lcom/android/wm/shell/common/pip/PhonePipKeepClearAlgorithm;

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/android/wm/shell/common/pip/PhonePipKeepClearAlgorithm;->findUnoccludedPosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getEntryDestinationBoundsIgnoringKeepClearAreas()Landroid/graphics/Rect;
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v1, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipReentryState:Lcom/android/wm/shell/common/pip/PipBoundsState$PipReentryState;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v1, :cond_0

    new-instance v3, Landroid/util/Size;

    iget-object v4, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/wm/shell/common/pip/PipBoundsState$PipReentryState;->mBoundsScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v6, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iget v4, v1, Lcom/android/wm/shell/common/pip/PipBoundsState$PipReentryState;->mSnapFraction:F

    invoke-virtual {p0, v4, v3}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getDefaultBounds(FLandroid/util/Size;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v4, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSizeSpecSource:Lcom/android/wm/shell/common/pip/SizeSpecSource;

    check-cast v4, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;

    iget v4, v4, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mDefaultMinWidth:I

    if-le v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_2

    invoke-virtual {p0, v0, v4, v3, v1}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(FLandroid/graphics/Rect;ZZ)V

    :cond_2
    return-object v4
.end method

.method public final getInsetBounds(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getInsetBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getMinimalSize(Landroid/content/pm/ActivityInfo;)Landroid/util/Size;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    if-lez v1, :cond_1

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    if-lez v1, :cond_1

    new-instance v0, Landroid/util/Size;

    iget v1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSizeSpecSource:Lcom/android/wm/shell/common/pip/SizeSpecSource;

    invoke-interface {p0}, Lcom/android/wm/shell/common/pip/SizeSpecSource;->getOverrideMinEdgeSize()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    invoke-interface {p0}, Lcom/android/wm/shell/common/pip/SizeSpecSource;->getOverrideMinEdgeSize()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-boolean p2, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mIsImeShowing:Z

    if-eqz p2, :cond_0

    iget p0, p0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mImeHeight:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, v0, v0, p0}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-object v0
.end method

.method public final reloadResources(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070226

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mDefaultAspectRatio:F

    const v0, 0x7f0b001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mDefaultStackGravity:I

    const v0, 0x1050100

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    const v0, 0x10500ff

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    return-void
.end method

.method public final transformBoundsToAspectRatio(FLandroid/graphics/Rect;ZZ)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget v2, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    iget-object v3, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    invoke-virtual {v3, v2, p2, v1}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSizeSpecSource:Lcom/android/wm/shell/common/pip/SizeSpecSource;

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    check-cast v2, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getDefaultSize(F)Landroid/util/Size;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p3, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p3, p4, v3}, Landroid/util/Size;-><init>(II)V

    check-cast v2, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;

    invoke-virtual {v2, p1, p3}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getSizeForAspectRatio(FLandroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p4

    int-to-float p4, p4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p4, v2

    sub-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr p4, v3

    float-to-int p4, p4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    add-int/2addr p1, p4

    invoke-virtual {p2, p3, p4, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p2, v0}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p2, p0, v1}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    return-void
.end method

.class public Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;
.super Landroid/widget/FrameLayout;
.source "RemoteComposeCanvas.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;
    }
.end annotation


# static fields
.field static final blacklist USE_VIEW_AREA_CLICK:Z = true

.field private static final blacklist sScaleOutput:[F


# instance fields
.field blacklist mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

.field blacklist mActionDownPoint:Landroid/graphics/Point;

.field private blacklist mCount:I

.field blacklist mDebug:Z

.field blacklist mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

.field blacklist mInActionDown:Z

.field blacklist mTheme:I

.field private blacklist mTime:J


# direct methods
.method public static synthetic blacklist $r8$lambda$LTBJtXLfBvrwwYwk9OTMY2Qysy4(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->lambda$onViewAttachedToWindow$0(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->sScaleOutput:[F

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    const/4 v0, -0x3

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    const/4 v0, -0x3

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    const/4 v0, -0x3

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mInActionDown:Z

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:Z

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mActionDownPoint:Landroid/graphics/Point;

    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setBackgroundColor(I)V

    invoke-virtual {p0, p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic blacklist lambda$addClickListener$1(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;ILjava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;->click(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onViewAttachedToWindow$0(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->performClick(I)V

    return-void
.end method


# virtual methods
.method public blacklist addClickListener(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$ClickCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addClickListener(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickCallbacks;)V

    return-void
.end method

.method public blacklist getTheme()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    return v0
.end method

.method public blacklist measureDimension(II)I
    .locals 3

    move v0, p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v2

    goto :goto_0

    :sswitch_1
    move v0, p2

    goto :goto_0

    :sswitch_2
    invoke-static {v2, p2}, Ljava/lang/Integer;->min(II)I

    move-result v0

    nop

    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->setDebug(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->useCanvas(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mWidth:F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mHeight:F

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mCount:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTime:J

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->needsRepaint()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    :cond_2
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getWidth()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->measureDimension(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getHeight()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->measureDimension(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setMeasuredDimension(II)V

    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onViewAttachedToWindow(Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getClickAreas()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->removeAllViews()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    new-instance v9, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:Z

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getId()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getContentDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getMetadata()Ljava/lang/String;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;-><init>(Landroid/content/Context;ZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->width()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->height()F

    move-result v5

    float-to-int v5, v5

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getLeft()F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->getTop()F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    new-instance v7, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    invoke-virtual {v3, v7}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public whitelist onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->removeAllViews()V

    return-void
.end method

.method public whitelist performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public blacklist setDebug(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;

    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDebug:Z

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/player/platform/ClickAreaView;->setDebug(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    :cond_2
    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mARContext:Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mDocument:Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;->getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->invalidate()V

    return-void
.end method

.method public blacklist setTheme(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/RemoteComposeCanvas;->mTheme:I

    return-void
.end method

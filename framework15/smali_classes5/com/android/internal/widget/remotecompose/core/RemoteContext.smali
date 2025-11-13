.class public abstract Lcom/android/internal/widget/remotecompose/core/RemoteContext;
.super Ljava/lang/Object;
.source "RemoteContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;
    }
.end annotation


# static fields
.field public static final blacklist FLOAT_CALENDAR_MONTH:F

.field public static final blacklist FLOAT_COMPONENT_HEIGHT:F

.field public static final blacklist FLOAT_COMPONENT_WIDTH:F

.field public static final blacklist FLOAT_CONTINUOUS_SEC:F

.field public static final blacklist FLOAT_TIME_IN_HR:F

.field public static final blacklist FLOAT_TIME_IN_MIN:F

.field public static final blacklist FLOAT_TIME_IN_SEC:F

.field public static final blacklist FLOAT_WINDOW_HEIGHT:F

.field public static final blacklist FLOAT_WINDOW_WIDTH:F

.field public static final blacklist ID_CALENDAR_MONTH:I = 0x9

.field public static final blacklist ID_COMPONENT_HEIGHT:I = 0x8

.field public static final blacklist ID_COMPONENT_WIDTH:I = 0x7

.field public static final blacklist ID_CONTINUOUS_SEC:I = 0x1

.field public static final blacklist ID_TIME_IN_HR:I = 0x4

.field public static final blacklist ID_TIME_IN_MIN:I = 0x3

.field public static final blacklist ID_TIME_IN_SEC:I = 0x2

.field public static final blacklist ID_WINDOW_HEIGHT:I = 0x6

.field public static final blacklist ID_WINDOW_WIDTH:I = 0x5


# instance fields
.field blacklist mDebug:Z

.field protected blacklist mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

.field public blacklist mHeight:F

.field blacklist mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

.field protected blacklist mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

.field public blacklist mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

.field blacklist mStart:J

.field private blacklist mTheme:I

.field public blacklist mWidth:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_CONTINUOUS_SEC:F

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_SEC:F

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_MIN:F

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TIME_IN_HR:F

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_CALENDAR_MONTH:F

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_WINDOW_WIDTH:F

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_WINDOW_HEIGHT:F

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_COMPONENT_WIDTH:F

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    sput v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_COMPONENT_HEIGHT:F

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mStart:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    return-void
.end method


# virtual methods
.method public abstract blacklist addClickArea(IIFFFFI)V
.end method

.method public blacklist getAnimationTime()F
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mStart:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v1

    return v0
.end method

.method public abstract blacklist getColor(I)I
.end method

.method public blacklist getDocument()Lcom/android/internal/widget/remotecompose/core/CoreDocument;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    return-object v0
.end method

.method public abstract blacklist getFloat(I)F
.end method

.method public blacklist getMode()Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    return-object v0
.end method

.method public blacklist getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    return-object v0
.end method

.method public abstract blacklist getShader(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
.end method

.method public abstract blacklist getText(I)Ljava/lang/String;
.end method

.method public blacklist getTheme()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    return v0
.end method

.method public blacklist header(IIIIIJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowWidth(F)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p5

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowHeight(F)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setVersion(III)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setWidth(I)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p5}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setHeight(I)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p6, p7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setRequiredCapabilities(J)V

    return-void
.end method

.method public blacklist isDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:Z

    return v0
.end method

.method public abstract blacklist listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
.end method

.method public abstract blacklist loadAnimatedFloat(ILcom/android/internal/widget/remotecompose/core/operations/FloatExpression;)V
.end method

.method public abstract blacklist loadBitmap(III[B)V
.end method

.method public abstract blacklist loadColor(II)V
.end method

.method public abstract blacklist loadFloat(IF)V
.end method

.method public abstract blacklist loadPathData(I[F)V
.end method

.method public abstract blacklist loadShader(ILcom/android/internal/widget/remotecompose/core/operations/ShaderData;)V
.end method

.method public abstract blacklist loadText(ILjava/lang/String;)V
.end method

.method public abstract blacklist loadVariableName(Ljava/lang/String;II)V
.end method

.method public blacklist setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDebug:Z

    return-void
.end method

.method public blacklist setDocument(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    return-void
.end method

.method public blacklist setDocumentContentDescription(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setMode(Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    return-void
.end method

.method public blacklist setPaintContext(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setRootContentBehavior(IIII)V

    return-void
.end method

.method public blacklist setTheme(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mTheme:I

    return-void
.end method

.method public abstract blacklist updateOps()I
.end method

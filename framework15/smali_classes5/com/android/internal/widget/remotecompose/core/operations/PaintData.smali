.class public Lcom/android/internal/widget/remotecompose/core/operations/PaintData;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "PaintData.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/PaintData$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/PaintData$Companion;

.field public static final blacklist MAX_STRING_SIZE:I = 0xfa0


# instance fields
.field public blacklist mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/PaintData$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/PaintData$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/PaintData$Companion;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    return-void
.end method


# virtual methods
.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->registerVars(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaintData \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/PaintData$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->mPaintData:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/PaintData$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    return-void
.end method

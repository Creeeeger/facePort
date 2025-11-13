.class public Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "ClipPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/ClipPath$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ClipPath$Companion;

.field public static final blacklist DIFFERENCE:I = 0x1

.field public static final blacklist INTERSECT:I = 0x2

.field public static final blacklist REPLACE:I = 0x0

.field public static final blacklist REVERSE_DIFFERENCE:I = 0x5

.field public static final blacklist UNDEFINED:I = 0x6

.field public static final blacklist UNION:I = 0x3

.field public static final blacklist XOR:I = 0x4


# instance fields
.field blacklist mId:I

.field blacklist mRegionOp:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/ClipPath$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ClipPath$Companion;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mRegionOp:I

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mRegionOp:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipPath(II)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClipPath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ClipPath$Companion;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->mId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method

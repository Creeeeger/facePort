.class public Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;
.super Lcom/android/internal/widget/remotecompose/core/PaintOperation;
.source "MatrixRestore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore$Companion;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore$Companion;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/PaintOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixRestore()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MatrixRestore"

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 1

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore$Companion;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.class Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;
.super Ljava/lang/Object;
.source "CoreDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/CoreDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Version"
.end annotation


# instance fields
.field public final blacklist major:I

.field public final blacklist minor:I

.field public final blacklist patchLevel:I


# direct methods
.method constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->minor:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->patchLevel:I

    return-void
.end method

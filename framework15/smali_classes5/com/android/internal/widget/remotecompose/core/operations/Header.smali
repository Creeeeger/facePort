.class public Lcom/android/internal/widget/remotecompose/core/operations/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteComposeOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/Header$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/Header$Companion;

.field public static final blacklist MAJOR_VERSION:I = 0x0

.field public static final blacklist MINOR_VERSION:I = 0x1

.field public static final blacklist PATCH_VERSION:I


# instance fields
.field blacklist mCapabilities:J

.field blacklist mHeight:I

.field blacklist mMajorVersion:I

.field blacklist mMinorVersion:I

.field blacklist mPatchVersion:I

.field blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/Header$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/Header$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/Header$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/Header$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IIIIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    iput-wide p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 8

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    iget-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->header(IIIIIJ)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HEADER v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 6

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/Header$Companion;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    iget-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIJ)V

    return-void
.end method

.class public Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;
.super Ljava/lang/Object;
.source "RootContentDescription.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteComposeOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription$Companion;


# instance fields
.field blacklist mContentDescription:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription$Companion;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->mContentDescription:I

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->mContentDescription:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setDocumentContentDescription(I)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RootContentDescription "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->mContentDescription:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription$Companion;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->mContentDescription:I

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method

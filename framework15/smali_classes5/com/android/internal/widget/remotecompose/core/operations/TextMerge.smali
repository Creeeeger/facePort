.class public Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;
.super Ljava/lang/Object;
.source "TextMerge.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Operation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/TextMerge$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/TextMerge$Companion;

.field public static final blacklist MAX_STRING_SIZE:I = 0xfa0


# instance fields
.field public blacklist mSrcId1:I

.field public blacklist mSrcId2:I

.field public blacklist mTextId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/TextMerge$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/TextMerge$Companion;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->mTextId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->mSrcId1:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->mSrcId2:I

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->mSrcId1:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->mSrcId2:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->mTextId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadText(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextMerge["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->mSrcId1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] + [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->mSrcId2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 4

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/TextMerge$Companion;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->mTextId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->mSrcId1:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->mSrcId2:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    return-void
.end method

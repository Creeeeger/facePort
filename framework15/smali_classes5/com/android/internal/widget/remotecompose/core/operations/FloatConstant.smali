.class public Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;
.super Ljava/lang/Object;
.source "FloatConstant.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Operation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant$Companion;

.field public static final blacklist MAX_STRING_SIZE:I = 0xfa0


# instance fields
.field public blacklist mTextId:I

.field public blacklist mValue:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->mTextId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->mValue:F

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->mTextId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->mValue:F

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->toString()Ljava/lang/String;

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

    const-string v1, "FloatConstant["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 3

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant$Companion;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->mTextId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->mValue:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    return-void
.end method

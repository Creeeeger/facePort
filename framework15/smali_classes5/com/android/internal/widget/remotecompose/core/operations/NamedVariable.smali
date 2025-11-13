.class public Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;
.super Ljava/lang/Object;
.source "NamedVariable.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/Operation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable$Companion;
    }
.end annotation


# static fields
.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable$Companion;

.field public static final blacklist MAX_STRING_SIZE:I = 0xfa0


# instance fields
.field public blacklist mVarId:I

.field public blacklist mVarName:Ljava/lang/String;

.field public blacklist mVarType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarType:I

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarName:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarType:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadVariableName(Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VariableName["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarName:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->trimString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 4

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable$Companion;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarType:I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/lang/String;)V

    return-void
.end method

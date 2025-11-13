.class public Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable$Companion;
.super Ljava/lang/Object;
.source "NamedVariable.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/CompanionOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Companion"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable$Companion-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p1, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeUTF8(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist id()I
    .locals 1

    const/16 v0, 0x66

    return v0
.end method

.method public blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "TextData"

    return-object v0
.end method

.method public blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    const/16 v2, 0xfa0

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;-><init>(IILjava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

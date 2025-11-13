.class public Lcom/android/internal/widget/remotecompose/core/operations/ClipPath$Companion;
.super Ljava/lang/Object;
.source "ClipPath.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/CompanionOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Companion"
.end annotation


# static fields
.field public static final blacklist PATH_CLIP_DIFFERENCE:I = 0x1

.field public static final blacklist PATH_CLIP_INTERSECT:I = 0x2

.field public static final blacklist PATH_CLIP_REPLACE:I = 0x0

.field public static final blacklist PATH_CLIP_REVERSE_DIFFERENCE:I = 0x5

.field public static final blacklist PATH_CLIP_UNDEFINED:I = 0x6

.field public static final blacklist PATH_CLIP_UNION:I = 0x3

.field public static final blacklist PATH_CLIP_XOR:I = 0x4


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/ClipPath$Companion-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V
    .locals 1

    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method public blacklist id()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "ClipPath"

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

    const v1, 0xfffff

    and-int/2addr v1, v0

    shr-int/lit8 v2, v0, 0x18

    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;

    invoke-direct {v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;-><init>(II)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.class public abstract Lcom/samsung/android/bio/iris/SemIrisManager$RemovalCallback;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RemovalCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .line 1879
    return-void
.end method

.method public blacklist onRemovalSucceeded(Lcom/samsung/android/camera/iris/Iris;)V
    .locals 0
    .param p1, "iris"    # Lcom/samsung/android/camera/iris/Iris;

    .line 1895
    return-void
.end method

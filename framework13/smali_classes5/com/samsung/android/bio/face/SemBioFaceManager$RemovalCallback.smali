.class public abstract Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RemovalCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRemovalError(Lcom/samsung/android/bio/face/SemBioFace;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .line 780
    return-void
.end method

.method public whitelist onRemovalSucceeded(Lcom/samsung/android/bio/face/SemBioFace;)V
    .locals 0
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;

    .line 789
    return-void
.end method

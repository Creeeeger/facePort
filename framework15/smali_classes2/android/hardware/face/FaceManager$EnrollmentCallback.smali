.class public abstract Landroid/hardware/face/FaceManager$EnrollmentCallback;
.super Ljava/lang/Object;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EnrollmentCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public blacklist onEnrollmentFrame(ILjava/lang/CharSequence;Landroid/hardware/face/FaceEnrollCell;IFFF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public blacklist onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public blacklist onEnrollmentProgress(I)V
    .locals 0

    return-void
.end method

.method public blacklist onImageProcessed([BIIIILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

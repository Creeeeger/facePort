.class public abstract Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EnrollmentCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 781
    return-void
.end method

.method public blacklist onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 792
    return-void
.end method

.method public blacklist onEnrollmentProgress(I)V
    .locals 0
    .param p1, "remaining"    # I

    .line 801
    return-void
.end method

.method public blacklist onIRImage([BII)V
    .locals 0
    .param p1, "irisImage"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 810
    return-void
.end method

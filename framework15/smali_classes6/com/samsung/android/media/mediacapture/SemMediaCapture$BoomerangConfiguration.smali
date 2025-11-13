.class public final Lcom/samsung/android/media/mediacapture/SemMediaCapture$BoomerangConfiguration;
.super Ljava/lang/Object;
.source "SemMediaCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/mediacapture/SemMediaCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BoomerangConfiguration"
.end annotation


# instance fields
.field private blacklist mEndTime:I

.field private blacklist mLoopCount:I

.field private blacklist mSpeedRate:F

.field private blacklist mStartTime:I

.field final synthetic blacklist this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;


# direct methods
.method public constructor whitelist <init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture;IIFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BoomerangConfiguration;->this$0:Lcom/samsung/android/media/mediacapture/SemMediaCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BoomerangConfiguration;->mStartTime:I

    iput p3, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BoomerangConfiguration;->mEndTime:I

    iput p4, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BoomerangConfiguration;->mSpeedRate:F

    iput p5, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BoomerangConfiguration;->mLoopCount:I

    return-void
.end method


# virtual methods
.method public blacklist getEndTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BoomerangConfiguration;->mEndTime:I

    return v0
.end method

.method public blacklist getLoopCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BoomerangConfiguration;->mLoopCount:I

    return v0
.end method

.method public blacklist getSpeedRate()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BoomerangConfiguration;->mSpeedRate:F

    return v0
.end method

.method public blacklist getStartTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BoomerangConfiguration;->mStartTime:I

    return v0
.end method

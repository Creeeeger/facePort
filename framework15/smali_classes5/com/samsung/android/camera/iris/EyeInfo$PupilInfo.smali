.class public Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;
.super Ljava/lang/Object;
.source "EyeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/EyeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PupilInfo"
.end annotation


# instance fields
.field public blacklist mDistance:I

.field public blacklist mMsgId:I

.field public blacklist mOpening:I

.field public blacklist mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mDistance:I

    iput v0, p0, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mOpening:I

    iput v0, p0, Lcom/samsung/android/camera/iris/EyeInfo$PupilInfo;->mMsgId:I

    return-void
.end method

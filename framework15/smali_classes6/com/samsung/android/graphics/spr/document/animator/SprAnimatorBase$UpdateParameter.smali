.class public Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;
.super Ljava/lang/Object;
.source "SprAnimatorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateParameter"
.end annotation


# instance fields
.field public blacklist alpha:F

.field public blacklist fillColor:I

.field public blacklist isLastFrame:Z

.field public blacklist isUpdatedFillColor:Z

.field public blacklist isUpdatedRotate:Z

.field public blacklist isUpdatedScale:Z

.field public blacklist isUpdatedStrokeColor:Z

.field public blacklist isUpdatedTranslate:Z

.field public blacklist rotateDegree:F

.field public blacklist rotatePivotX:F

.field public blacklist rotatePivotY:F

.field public blacklist scalePivotX:F

.field public blacklist scalePivotY:F

.field public blacklist scaleX:F

.field public blacklist scaleY:F

.field public blacklist strokeColor:I

.field public blacklist translateDx:F

.field public blacklist translateDy:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

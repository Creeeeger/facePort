.class Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
.super Ljava/lang/Object;
.source "SprDrawableAnimationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatorData"
.end annotation


# instance fields
.field public blacklist animatorSet:Landroid/animation/AnimatorSet;

.field public blacklist duration:J

.field public blacklist fillPaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

.field public blacklist isRunning:Z

.field public blacklist matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

.field public blacklist object:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

.field public blacklist repeatCount:I

.field public blacklist startTime:J

.field public blacklist strokePaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

.field public blacklist updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;-><init>()V

    return-void
.end method

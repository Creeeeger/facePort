.class Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;
.super Ljava/lang/Object;
.source "RippleAnimationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleAnimationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationProperties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FloatType:",
        "Ljava/lang/Object;",
        "PaintType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mColor:I

.field private blacklist mMaxRadius:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private final blacklist mNoisePhase:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private final blacklist mPaint:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPaintType;"
        }
    .end annotation
.end field

.field private final blacklist mProgress:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private final blacklist mShader:Landroid/graphics/drawable/RippleShader;

.field private blacklist mX:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field

.field private blacklist mY:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFloatType;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILandroid/graphics/drawable/RippleShader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFloatType;TFloatType;TFloatType;TFloatType;TPaintType;TFloatType;I",
            "Landroid/graphics/drawable/RippleShader;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mY:Ljava/lang/Object;

    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mX:Ljava/lang/Object;

    iput-object p3, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mMaxRadius:Ljava/lang/Object;

    iput-object p4, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mNoisePhase:Ljava/lang/Object;

    iput-object p5, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mPaint:Ljava/lang/Object;

    iput-object p8, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mShader:Landroid/graphics/drawable/RippleShader;

    iput-object p6, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mProgress:Ljava/lang/Object;

    iput p7, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mColor:I

    return-void
.end method


# virtual methods
.method blacklist getColor()I
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mColor:I

    return v0
.end method

.method blacklist getMaxRadius()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mMaxRadius:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getNoisePhase()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mNoisePhase:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getPaint()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPaintType;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mPaint:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getProgress()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mProgress:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getShader()Landroid/graphics/drawable/RippleShader;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mShader:Landroid/graphics/drawable/RippleShader;

    return-object v0
.end method

.method blacklist getX()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mX:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getY()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFloatType;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mY:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist setOrigin(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFloatType;TFloatType;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mX:Ljava/lang/Object;

    iput-object p2, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mY:Ljava/lang/Object;

    return-void
.end method

.method blacklist setRadius(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFloatType;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$AnimationProperties;->mMaxRadius:Ljava/lang/Object;

    return-void
.end method

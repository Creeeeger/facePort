.class public Landroid/view/SurfaceEffects$Effect$Builder;
.super Ljava/lang/Object;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceEffects$Effect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAnimationMode:Landroid/view/SurfaceEffects$AnimationMode;

.field private final blacklist mEffectRegion:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEffectTarget:Landroid/view/SurfaceEffects$EffectTarget;

.field private final blacklist mGeometryAnimationVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/view/SurfaceEffects$AnimKeyFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPixelAnimationVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/view/SurfaceEffects$AnimKeyFrame;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPixelEffectType:Landroid/view/SurfaceEffects$PixEffectType;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimationMode(Landroid/view/SurfaceEffects$Effect$Builder;)Landroid/view/SurfaceEffects$AnimationMode;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mAnimationMode:Landroid/view/SurfaceEffects$AnimationMode;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEffectRegion(Landroid/view/SurfaceEffects$Effect$Builder;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEffectTarget(Landroid/view/SurfaceEffects$Effect$Builder;)Landroid/view/SurfaceEffects$EffectTarget;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectTarget:Landroid/view/SurfaceEffects$EffectTarget;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGeometryAnimationVector(Landroid/view/SurfaceEffects$Effect$Builder;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPixelAnimationVector(Landroid/view/SurfaceEffects$Effect$Builder;)Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPixelEffectType(Landroid/view/SurfaceEffects$Effect$Builder;)Landroid/view/SurfaceEffects$PixEffectType;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelEffectType:Landroid/view/SurfaceEffects$PixEffectType;

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    sget-object v0, Landroid/view/SurfaceEffects$AnimationMode;->STATIC:Landroid/view/SurfaceEffects$AnimationMode;

    iput-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mAnimationMode:Landroid/view/SurfaceEffects$AnimationMode;

    .line 148
    sget-object v0, Landroid/view/SurfaceEffects$EffectTarget;->BEHIND:Landroid/view/SurfaceEffects$EffectTarget;

    iput-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectTarget:Landroid/view/SurfaceEffects$EffectTarget;

    .line 149
    sget-object v0, Landroid/view/SurfaceEffects$PixEffectType;->NONE:Landroid/view/SurfaceEffects$PixEffectType;

    iput-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelEffectType:Landroid/view/SurfaceEffects$PixEffectType;

    .line 150
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    .line 151
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    .line 152
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    .line 154
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceEffects$Effect$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceEffects$Effect$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addEffectRegionRect(Landroid/graphics/Rect;)Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 202
    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 203
    return-object p0
.end method

.method public blacklist addGeoAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 2
    .param p1, "animParam"    # Landroid/view/SurfaceEffects$AnimParam;
    .param p2, "timeMs"    # I
    .param p3, "value"    # F
    .param p4, "interpolation"    # Landroid/view/SurfaceEffects$InterpMode;

    .line 193
    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    new-instance v1, Landroid/view/SurfaceEffects$AnimKeyFrame;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/SurfaceEffects$AnimKeyFrame;-><init>(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 194
    return-object p0
.end method

.method public blacklist addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 2
    .param p1, "animParam"    # Landroid/view/SurfaceEffects$AnimParam;
    .param p2, "timeMs"    # I
    .param p3, "value"    # F
    .param p4, "interpolation"    # Landroid/view/SurfaceEffects$InterpMode;

    .line 184
    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    new-instance v1, Landroid/view/SurfaceEffects$AnimKeyFrame;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/SurfaceEffects$AnimKeyFrame;-><init>(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 185
    return-object p0
.end method

.method public blacklist build()Landroid/view/SurfaceEffects$Effect;
    .locals 2

    .line 217
    new-instance v0, Landroid/view/SurfaceEffects$Effect;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceEffects$Effect;-><init>(Landroid/view/SurfaceEffects$Effect$Builder;Landroid/view/SurfaceEffects$Effect-IA;)V

    return-object v0
.end method

.method public blacklist getAnimationMode()Landroid/view/SurfaceEffects$AnimationMode;
    .locals 1

    .line 157
    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mAnimationMode:Landroid/view/SurfaceEffects$AnimationMode;

    return-object v0
.end method

.method public blacklist getEffectRegion()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    return-object v0
.end method

.method public blacklist getEffectTarget()Landroid/view/SurfaceEffects$EffectTarget;
    .locals 1

    .line 166
    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectTarget:Landroid/view/SurfaceEffects$EffectTarget;

    return-object v0
.end method

.method public blacklist getGeometryAnimationVector()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Landroid/view/SurfaceEffects$AnimKeyFrame;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    return-object v0
.end method

.method public blacklist getPixelAnimationVector()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Landroid/view/SurfaceEffects$AnimKeyFrame;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    return-object v0
.end method

.method public blacklist getPixelEffectType()Landroid/view/SurfaceEffects$PixEffectType;
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelEffectType:Landroid/view/SurfaceEffects$PixEffectType;

    return-object v0
.end method

.method public blacklist makeFullscreen()Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 4

    .line 207
    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 208
    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/16 v3, 0x2710

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 209
    return-object p0
.end method

.method public blacklist setAnimationMode(Landroid/view/SurfaceEffects$AnimationMode;)Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 0
    .param p1, "mAnimationMode"    # Landroid/view/SurfaceEffects$AnimationMode;

    .line 161
    iput-object p1, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mAnimationMode:Landroid/view/SurfaceEffects$AnimationMode;

    .line 162
    return-object p0
.end method

.method public blacklist setEffectTarget(Landroid/view/SurfaceEffects$EffectTarget;)Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 0
    .param p1, "mEffectTarget"    # Landroid/view/SurfaceEffects$EffectTarget;

    .line 170
    iput-object p1, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectTarget:Landroid/view/SurfaceEffects$EffectTarget;

    .line 171
    return-object p0
.end method

.method public blacklist setPixelEffectType(Landroid/view/SurfaceEffects$PixEffectType;)Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 0
    .param p1, "mPixelEffectType"    # Landroid/view/SurfaceEffects$PixEffectType;

    .line 179
    iput-object p1, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelEffectType:Landroid/view/SurfaceEffects$PixEffectType;

    .line 180
    return-object p0
.end method

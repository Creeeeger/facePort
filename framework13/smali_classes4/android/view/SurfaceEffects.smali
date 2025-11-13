.class public Landroid/view/SurfaceEffects;
.super Ljava/lang/Object;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceEffects$AnimKeyFrame;,
        Landroid/view/SurfaceEffects$Effect;,
        Landroid/view/SurfaceEffects$PixEffectType;,
        Landroid/view/SurfaceEffects$EffectTarget;,
        Landroid/view/SurfaceEffects$AnimParam;,
        Landroid/view/SurfaceEffects$AnimationMode;,
        Landroid/view/SurfaceEffects$InterpMode;
    }
.end annotation


# static fields
.field public static final blacklist EMPTY_EFFECT:Landroid/view/SurfaceEffects$Effect;

.field private static final blacklist FRAME_LENGTH_NANOS:J = 0xfe502aL


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 142
    invoke-static {}, Landroid/view/SurfaceEffects;->newBuilder()Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceEffects$Effect$Builder;->build()Landroid/view/SurfaceEffects$Effect;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceEffects;->EMPTY_EFFECT:Landroid/view/SurfaceEffects$Effect;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist newBuilder()Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 2

    .line 287
    new-instance v0, Landroid/view/SurfaceEffects$Effect$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SurfaceEffects$Effect$Builder;-><init>(Landroid/view/SurfaceEffects$Effect$Builder-IA;)V

    return-object v0
.end method

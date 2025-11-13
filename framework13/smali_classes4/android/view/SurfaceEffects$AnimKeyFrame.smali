.class Landroid/view/SurfaceEffects$AnimKeyFrame;
.super Ljava/lang/Object;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimKeyFrame"
.end annotation


# instance fields
.field public final blacklist animParam:Landroid/view/SurfaceEffects$AnimParam;

.field public final blacklist interp:Landroid/view/SurfaceEffects$InterpMode;

.field public final blacklist timeMs:I

.field public final blacklist value:F


# direct methods
.method public constructor blacklist <init>(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)V
    .locals 0
    .param p1, "animParam"    # Landroid/view/SurfaceEffects$AnimParam;
    .param p2, "timeMs"    # I
    .param p3, "value"    # F
    .param p4, "interp"    # Landroid/view/SurfaceEffects$InterpMode;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Landroid/view/SurfaceEffects$AnimKeyFrame;->animParam:Landroid/view/SurfaceEffects$AnimParam;

    .line 299
    iput p2, p0, Landroid/view/SurfaceEffects$AnimKeyFrame;->timeMs:I

    .line 300
    iput p3, p0, Landroid/view/SurfaceEffects$AnimKeyFrame;->value:F

    .line 301
    iput-object p4, p0, Landroid/view/SurfaceEffects$AnimKeyFrame;->interp:Landroid/view/SurfaceEffects$InterpMode;

    .line 302
    return-void
.end method

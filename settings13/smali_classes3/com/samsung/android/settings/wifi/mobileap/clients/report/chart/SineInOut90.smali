.class public Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SineInOut90;
.super Ljava/lang/Object;
.source "SineInOut90.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field cubic:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 13
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/CubicUtil;->toInterpolator([F)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SineInOut90;->cubic:Landroid/view/animation/Interpolator;

    return-void

    :array_0
    .array-data 4
        0x3ea8f5c3    # 0.33f
        0x0
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/SineInOut90;->cubic:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

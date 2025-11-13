.class public Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;
.super Ljava/lang/Object;
.source "SemHoverPopupWindow.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemHoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuintEaseOut"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getInterpolation(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, p1, v0

    sub-float/2addr v1, v0

    move p1, v1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    return v1
.end method

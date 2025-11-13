.class public final Landroidx/recyclerview/widget/RecyclerView$3;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/animation/Interpolator;


# virtual methods
.method public final getInterpolation(F)F
    .locals 1

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    sub-float/2addr p1, p0

    .line 4
    mul-float v0, p1, p1

    .line 5
    .line 6
    mul-float/2addr v0, p1

    .line 7
    mul-float/2addr v0, p1

    .line 8
    mul-float/2addr v0, p1

    .line 9
    add-float/2addr v0, p0

    .line 10
    return v0
.end method

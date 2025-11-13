.class public final Landroidx/viewpager/widget/ViewPager$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 2
    .line 3
    check-cast p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 4
    .line 5
    iget p0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 6
    .line 7
    iget p1, p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 8
    .line 9
    sub-int/2addr p0, p1

    .line 10
    return p0
.end method

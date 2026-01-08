.class public final Landroidx/recyclerview/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mLayoutHolderMap:Landroidx/collection/SimpleArrayMap;

.field public final mOldChangedHolders:Landroidx/collection/LongSparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Landroidx/collection/SimpleArrayMap;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Landroidx/collection/LongSparseArray;

    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

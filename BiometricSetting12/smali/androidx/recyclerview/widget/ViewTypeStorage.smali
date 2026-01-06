.class interface abstract Landroidx/recyclerview/widget/ViewTypeStorage;
.super Ljava/lang/Object;
.source "ViewTypeStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;,
        Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;,
        Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
    }
.end annotation


# virtual methods
.method public abstract createViewTypeWrapper(Landroidx/recyclerview/widget/NestedAdapterWrapper;)Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapper"
        }
    .end annotation
.end method

.method public abstract getWrapperForGlobalType(I)Landroidx/recyclerview/widget/NestedAdapterWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalViewType"
        }
    .end annotation
.end method

.class interface abstract Landroidx/recyclerview/widget/NestedAdapterWrapper$Callback;
.super Ljava/lang/Object;
.source "NestedAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/NestedAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onChanged(Landroidx/recyclerview/widget/NestedAdapterWrapper;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapper"
        }
    .end annotation
.end method

.method public abstract onItemRangeChanged(Landroidx/recyclerview/widget/NestedAdapterWrapper;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nestedAdapterWrapper",
            "positionStart",
            "itemCount"
        }
    .end annotation
.end method

.method public abstract onItemRangeChanged(Landroidx/recyclerview/widget/NestedAdapterWrapper;IILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nestedAdapterWrapper",
            "positionStart",
            "itemCount",
            "payload"
        }
    .end annotation
.end method

.method public abstract onItemRangeInserted(Landroidx/recyclerview/widget/NestedAdapterWrapper;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nestedAdapterWrapper",
            "positionStart",
            "itemCount"
        }
    .end annotation
.end method

.method public abstract onItemRangeMoved(Landroidx/recyclerview/widget/NestedAdapterWrapper;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nestedAdapterWrapper",
            "fromPosition",
            "toPosition"
        }
    .end annotation
.end method

.method public abstract onItemRangeRemoved(Landroidx/recyclerview/widget/NestedAdapterWrapper;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nestedAdapterWrapper",
            "positionStart",
            "itemCount"
        }
    .end annotation
.end method

.method public abstract onStateRestorationPolicyChanged(Landroidx/recyclerview/widget/NestedAdapterWrapper;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nestedAdapterWrapper"
        }
    .end annotation
.end method

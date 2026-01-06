.class Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;
.super Ljava/lang/Object;
.source "ViewTypeStorage.java"

# interfaces
.implements Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrapperViewTypeLookup"
.end annotation


# instance fields
.field final mWrapper:Landroidx/recyclerview/widget/NestedAdapterWrapper;

.field final synthetic this$0:Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;Landroidx/recyclerview/widget/NestedAdapterWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "wrapper"
        }
    .end annotation

    iput-object p1, p0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->this$0:Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->this$0:Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->removeWrapper(Landroidx/recyclerview/widget/NestedAdapterWrapper;)V

    return-void
.end method

.method public globalToLocal(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalType"
        }
    .end annotation

    return p1
.end method

.method public localToGlobal(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localType"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->this$0:Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    iget-object v0, v0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->this$0:Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;

    iget-object v1, v1, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;->mGlobalTypeToWrapper:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return p1
.end method

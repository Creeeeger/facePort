.class Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;
.super Ljava/lang/Object;
.source "ViewTypeStorage.java"

# interfaces
.implements Landroidx/recyclerview/widget/ViewTypeStorage$ViewTypeLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrapperViewTypeLookup"
.end annotation


# instance fields
.field private mGlobalToLocalMapping:Landroid/util/SparseIntArray;

.field private mLocalToGlobalMapping:Landroid/util/SparseIntArray;

.field final mWrapper:Landroidx/recyclerview/widget/NestedAdapterWrapper;

.field final synthetic this$0:Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;Landroidx/recyclerview/widget/NestedAdapterWrapper;)V
    .locals 2
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

    iput-object p1, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->this$0:Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    iput-object p2, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->this$0:Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;->removeWrapper(Landroidx/recyclerview/widget/NestedAdapterWrapper;)V

    return-void
.end method

.method public globalToLocal(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalType"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requested global type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not belong to the adapter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    iget-object v3, v3, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public localToGlobal(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localType"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->this$0:Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;

    iget-object v2, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mWrapper:Landroidx/recyclerview/widget/NestedAdapterWrapper;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage;->obtainViewType(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mLocalToGlobalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, p0, Landroidx/recyclerview/widget/ViewTypeStorage$IsolatedViewTypeStorage$WrapperViewTypeLookup;->mGlobalToLocalMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    return v1
.end method

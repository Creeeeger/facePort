.class public abstract Landroidx/apppickerview/widget/CustomListAdapter;
.super Landroidx/apppickerview/widget/ListAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroidx/apppickerview/widget/AppPickerIconLoader;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/apppickerview/widget/ListAdapter;-><init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

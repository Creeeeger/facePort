.class public abstract Landroid/widget/BaseAdapter;
.super Ljava/lang/Object;
.source "BaseAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# instance fields
.field private greylist-max-o mAutofillOptions:[Ljava/lang/CharSequence;

.field private final greylist mDataSetObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/widget/BaseAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getAutofillOptions()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/BaseAdapter;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/BaseAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public whitelist notifyDataSetInvalidated()V
    .locals 1

    iget-object v0, p0, Landroid/widget/BaseAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/BaseAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs whitelist setAutofillOptions([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/BaseAdapter;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/BaseAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

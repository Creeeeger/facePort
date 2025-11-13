.class public interface abstract Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.super Ljava/lang/Object;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteViewsFactory"
.end annotation


# virtual methods
.method public abstract whitelist getCount()I
.end method

.method public abstract whitelist getItemId(I)J
.end method

.method public abstract whitelist getLoadingView()Landroid/widget/RemoteViews;
.end method

.method public blacklist getRemoteCollectionItems(I)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .locals 10

    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v2

    :try_start_0
    new-instance v3, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v3}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-interface {p0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDataSetChanged()V

    invoke-interface {p0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->hasStableIds()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->setHasStableIds(Z)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-interface {p0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    invoke-interface {p0, v5}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getItemId(I)J

    move-result-wide v6

    invoke-interface {p0, v5}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v9

    if-le v9, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v6, v7, v8}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->addItem(JLandroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v0

    :catchall_0
    move-exception v3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public abstract whitelist getViewAt(I)Landroid/widget/RemoteViews;
.end method

.method public abstract whitelist getViewTypeCount()I
.end method

.method public abstract whitelist hasStableIds()Z
.end method

.method public abstract whitelist onCreate()V
.end method

.method public abstract whitelist onDataSetChanged()V
.end method

.method public abstract whitelist onDestroy()V
.end method

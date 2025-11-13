.class Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteCollectionItemListAdapterAction"
.end annotation


# instance fields
.field blacklist mIntentId:I

.field blacklist mIsReplacedIntoAction:Z

.field private blacklist mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

.field final blacklist mServiceIntent:Landroid/content/Intent;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteCollectionItems;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    iput-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;)V

    :goto_0
    iput-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmCollectionCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionCache;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {v1, v2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->getItemsForId(I)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v1

    :goto_0
    nop

    instance-of v2, p2, Landroid/appwidget/AppWidgetHostView;

    const-string v3, ")"

    const-string v4, "RemoteViews"

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v2}, Landroid/widget/RemoteViews;->-$$Nest$fgetmAllowOtherRootParent(Landroid/widget/RemoteViews;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRemoteAdapter can only be used for AppWidgets (root id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    instance-of v2, v0, Landroid/widget/AdapterView;

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot call setRemoteAdapter on a view which is not an AdapterView (id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    move-object v2, v0

    check-cast v2, Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/RemoteCollectionItemsAdapter;

    if-eqz v4, :cond_5

    invoke-interface {v3}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getViewTypeCount()I

    move-result v5

    if-lt v4, v5, :cond_5

    :try_start_0
    move-object v4, v3

    check-cast v4, Landroid/widget/RemoteCollectionItemsAdapter;

    iget-object v5, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v6, p3, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual {v4, v1, v5, v6}, Landroid/widget/RemoteCollectionItemsAdapter;->setData(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    return-void

    :catchall_0
    move-exception v4

    new-instance v5, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v5, v4}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_5
    :try_start_1
    new-instance v4, Landroid/widget/RemoteCollectionItemsAdapter;

    iget-object v5, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v6, p3, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-direct {v4, v1, v5, v6}, Landroid/widget/RemoteCollectionItemsAdapter;-><init>(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    invoke-virtual {v2, v4}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    return-void

    :catchall_1
    move-exception v4

    new-instance v5, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v5, v4}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public blacklist getActionTag()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method

.method public blacklist getUniqueKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "33_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmCollectionCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$RemoteCollectionCache;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews$RemoteCollectionCache;->setHierarchyDataForId(ILandroid/widget/RemoteViews$HierarchyRootData;)V

    :cond_1
    return-void
.end method

.method public blacklist visitUris(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mvisitUris(Landroid/widget/RemoteViews$RemoteCollectionItems;Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/os/Parcel;IZ)V

    :cond_0
    return-void
.end method

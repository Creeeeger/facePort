.class Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteViewsAdapterList"
.end annotation


# instance fields
.field greylist-max-o list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;

.field greylist-max-o viewTypeCount:I


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;ILjava/util/ArrayList;I)V
    .locals 0
    .param p2, "id"    # I
    .param p4, "viewTypeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;I)V"
        }
    .end annotation

    .line 1037
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1038
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    .line 1039
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    .line 1040
    iput p4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    .line 1041
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 1043
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 1044
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    .line 1045
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    .line 1046
    sget-object p1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    .line 1047
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 1058
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1059
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 1062
    :cond_0
    instance-of v1, p2, Landroid/appwidget/AppWidgetHostView;

    const-string v2, ")"

    const-string v3, "RemoteViews"

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmAllowOtherRootParent(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetRemoteViewsAdapterIntent action can only be used for AppWidgets (root id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    return-void

    .line 1068
    :cond_1
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/widget/AdapterViewAnimator;

    if-nez v1, :cond_2

    .line 1069
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot setRemoteViewsAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-void

    .line 1074
    :cond_2
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_4

    .line 1075
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView;

    .line 1076
    .local v1, "v":Landroid/widget/AbsListView;
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1077
    .local v2, "a":Landroid/widget/Adapter;
    instance-of v3, v2, Landroid/widget/RemoteViewsListAdapter;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 1078
    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViewsListAdapter;

    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViewsListAdapter;->setViewsList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1080
    :cond_3
    new-instance v3, Landroid/widget/RemoteViewsListAdapter;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    iget v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-direct {v3, v4, v5, v6, p4}, Landroid/widget/RemoteViewsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/widget/RemoteViews$ColorResources;)V

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1083
    .end local v1    # "v":Landroid/widget/AbsListView;
    .end local v2    # "a":Landroid/widget/Adapter;
    :cond_4
    instance-of v1, v0, Landroid/widget/AdapterViewAnimator;

    if-eqz v1, :cond_6

    .line 1084
    move-object v1, v0

    check-cast v1, Landroid/widget/AdapterViewAnimator;

    .line 1085
    .local v1, "v":Landroid/widget/AdapterViewAnimator;
    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1086
    .restart local v2    # "a":Landroid/widget/Adapter;
    instance-of v3, v2, Landroid/widget/RemoteViewsListAdapter;

    if-eqz v3, :cond_5

    iget v3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 1087
    move-object v3, v2

    check-cast v3, Landroid/widget/RemoteViewsListAdapter;

    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViewsListAdapter;->setViewsList(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1089
    :cond_5
    new-instance v3, Landroid/widget/RemoteViewsListAdapter;

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    iget v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-direct {v3, v4, v5, v6, p4}, Landroid/widget/RemoteViewsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/widget/RemoteViews$ColorResources;)V

    invoke-virtual {v1, v3}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    goto :goto_1

    .line 1083
    .end local v1    # "v":Landroid/widget/AdapterViewAnimator;
    .end local v2    # "a":Landroid/widget/Adapter;
    :cond_6
    :goto_0
    nop

    .line 1093
    :goto_1
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    .line 1097
    const/16 v0, 0xf

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1050
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->viewTypeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterList;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1053
    return-void
.end method

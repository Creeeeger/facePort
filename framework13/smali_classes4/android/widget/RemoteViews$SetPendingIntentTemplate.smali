.class Landroid/widget/RemoteViews$SetPendingIntentTemplate;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetPendingIntentTemplate"
.end annotation


# instance fields
.field greylist-max-r pendingIntentTemplate:Landroid/app/PendingIntent;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "pendingIntentTemplate"    # Landroid/app/PendingIntent;

    .line 964
    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 965
    iput p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    .line 966
    iput-object p3, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    .line 967
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 969
    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 970
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    .line 971
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    .line 972
    return-void
.end method

.method private blacklist findRemoteResponseTag(Landroid/view/View;)Landroid/widget/RemoteViews$RemoteResponse;
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;

    .line 1006
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1008
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 1009
    .local v1, "viewsToCheck":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroid/view/View;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1011
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1012
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1013
    .local v2, "view":Landroid/view/View;
    const v3, 0x10202ee

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 1014
    .local v3, "tag":Ljava/lang/Object;
    instance-of v4, v3, Landroid/widget/RemoteViews$RemoteResponse;

    if-eqz v4, :cond_1

    move-object v0, v3

    check-cast v0, Landroid/widget/RemoteViews$RemoteResponse;

    return-object v0

    .line 1015
    :cond_1
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-nez v4, :cond_2

    goto :goto_0

    .line 1017
    :cond_2
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    .line 1018
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1019
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1018
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1021
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "tag":Ljava/lang/Object;
    .end local v4    # "viewGroup":Landroid/view/ViewGroup;
    .end local v5    # "i":I
    :cond_3
    goto :goto_0

    .line 1023
    :cond_4
    return-object v0
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 982
    iget v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 983
    .local v0, "target":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 986
    :cond_0
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_1

    .line 987
    move-object v1, v0

    check-cast v1, Landroid/widget/AdapterView;

    .line 989
    .local v1, "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v2, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 995
    .local v2, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 996
    iget-object v3, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setTag(Ljava/lang/Object;)V

    .line 997
    .end local v1    # "av":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local v2    # "listener":Landroid/widget/AdapterView$OnItemClickListener;
    nop

    .line 1002
    return-void

    .line 998
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot setPendingIntentTemplate on a view which is notan AdapterView (id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    .line 1028
    const/16 v0, 0x8

    return v0
.end method

.method synthetic blacklist lambda$apply$0$android-widget-RemoteViews$SetPendingIntentTemplate(Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p2, "parent"    # Landroid/widget/AdapterView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J

    .line 990
    invoke-direct {p0, p3}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->findRemoteResponseTag(Landroid/view/View;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v0

    .line 991
    .local v0, "response":Landroid/widget/RemoteViews$RemoteResponse;
    if-eqz v0, :cond_0

    .line 992
    invoke-static {v0, p3, p1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 994
    :cond_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 975
    iget v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    iget-object v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 977
    return-void
.end method

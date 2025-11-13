.class Landroid/widget/RemoteViews$ViewGroupActionRemove;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewGroupActionRemove"
.end annotation


# static fields
.field private static final greylist-max-o REMOVE_ALL_VIEWS_ID:I = -0x2


# instance fields
.field private greylist-max-o mViewIdToKeep:I

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmViewIdToKeep(Landroid/widget/RemoteViews$ViewGroupActionRemove;)I
    .locals 0

    iget p0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveAllViewsExceptIdToKeep(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->removeAllViewsExceptIdToKeep(Landroid/view/ViewGroup;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p2, "viewId"    # I

    .line 2819
    const/4 v0, -0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RemoteViews$ViewGroupActionRemove;-><init>(Landroid/widget/RemoteViews;II)V

    .line 2820
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;II)V
    .locals 0
    .param p2, "viewId"    # I
    .param p3, "viewIdToKeep"    # I

    .line 2822
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 2823
    iput p2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    .line 2824
    iput p3, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    .line 2825
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 2827
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 2828
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    .line 2829
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    .line 2830
    return-void
.end method

.method static synthetic blacklist lambda$initActionAsync$0(Landroid/widget/RemoteViews$ViewTree;)Z
    .locals 1
    .param p0, "childTree"    # Landroid/widget/RemoteViews$ViewTree;

    .line 2876
    invoke-static {p0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$smhasStableId(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private greylist-max-o removeAllViewsExceptIdToKeep(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 2909
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2910
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2911
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    if-eq v1, v2, :cond_0

    .line 2912
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2914
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2916
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 2840
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2842
    .local v0, "target":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    .line 2843
    return-void

    .line 2846
    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    .line 2848
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2849
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/RemoteViews;->-$$Nest$smhasStableId(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2850
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2848
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2854
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    .line 2855
    return-void

    .line 2858
    :cond_3
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->removeAllViewsExceptIdToKeep(Landroid/view/ViewGroup;)V

    .line 2859
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    .line 2920
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;
    .locals 4
    .param p1, "root"    # Landroid/widget/RemoteViews$ViewTree;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 2866
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    .line 2867
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    .line 2869
    .local v0, "target":Landroid/widget/RemoteViews$ViewTree;
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2873
    :cond_0
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2875
    .local v1, "targetVg":Landroid/view/ViewGroup;
    iget v2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 2876
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2877
    const/4 v2, 0x0

    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/widget/RemoteViews;->-$$Nest$smsetNextRecyclableChild(Landroid/view/ViewGroup;II)V

    goto :goto_0

    .line 2880
    :cond_1
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda1;-><init>(Landroid/widget/RemoteViews$ViewGroupActionRemove;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2881
    invoke-static {v0}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2882
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fputmChildren(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)V

    .line 2885
    :cond_2
    :goto_0
    new-instance v2, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;

    invoke-direct {v2, p0, v1}, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;-><init>(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V

    return-object v2

    .line 2870
    .end local v1    # "targetVg":Landroid/view/ViewGroup;
    :cond_3
    :goto_1
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v1

    return-object v1
.end method

.method synthetic blacklist lambda$initActionAsync$1$android-widget-RemoteViews$ViewGroupActionRemove(Landroid/widget/RemoteViews$ViewTree;)Z
    .locals 2
    .param p1, "childTree"    # Landroid/widget/RemoteViews$ViewTree;

    .line 2880
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o mergeBehavior()I
    .locals 1

    .line 2925
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2833
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2834
    iget v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove;->mViewIdToKeep:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2835
    return-void
.end method

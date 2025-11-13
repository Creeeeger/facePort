.class Landroid/widget/RemoteViews$SetPendingIntentTemplate;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetPendingIntentTemplate"
.end annotation


# instance fields
.field greylist-max-r mPendingIntentTemplate:Landroid/app/PendingIntent;


# direct methods
.method public static synthetic blacklist $r8$lambda$HZunZfjaLDh4Ro7VuCHx2dZp1Is(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->lambda$apply$0(Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    iput p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    iput-object p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mPendingIntentTemplate:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mPendingIntentTemplate:Landroid/app/PendingIntent;

    return-void
.end method

.method private blacklist findRemoteResponseTag(Landroid/view/View;)Landroid/widget/RemoteViews$RemoteResponse;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const v3, 0x10202f5

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/RemoteViews$RemoteResponse;

    if-eqz v4, :cond_1

    move-object v0, v3

    check-cast v0, Landroid/widget/RemoteViews$RemoteResponse;

    return-object v0

    :cond_1
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private synthetic blacklist lambda$apply$0(Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    invoke-direct {p0, p3}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->findRemoteResponseTag(Landroid/view/View;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-static {v0, p3, v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 4

    iget v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/AdapterView;

    new-instance v2, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Landroid/widget/RemoteViews$SetPendingIntentTemplate$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mPendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setTag(Ljava/lang/Object;)V

    nop

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot setPendingIntentTemplate on a view which is notan AdapterView (id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public greylist-max-o getActionTag()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->mPendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    return-void
.end method

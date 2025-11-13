.class Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemSetOnLongClickPendingIntent"
.end annotation


# instance fields
.field blacklist longClickPendingIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;

.field blacklist viewId:I


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "longClickPendingIntent"    # Landroid/app/PendingIntent;

    .line 7810
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7811
    iput p2, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->viewId:I

    .line 7812
    iput-object p3, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->longClickPendingIntent:Landroid/app/PendingIntent;

    .line 7813
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
    .param p2, "parcel"    # Landroid/os/Parcel;

    .line 7815
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    .line 7816
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->viewId:I

    .line 7817
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->longClickPendingIntent:Landroid/app/PendingIntent;

    .line 7818
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;

    .line 7828
    iget v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7829
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->longClickPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 7830
    new-instance v1, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent$1;

    invoke-direct {v1, p0, p3}, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 7841
    .local v1, "longClickListener":Landroid/view/View$OnLongClickListener;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7843
    .end local v1    # "longClickListener":Landroid/view/View$OnLongClickListener;
    :cond_0
    return-void
.end method

.method public blacklist getActionTag()I
    .locals 1

    .line 7847
    const/16 v0, 0x64

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7822
    iget v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7823
    iget-object v0, p0, Landroid/widget/RemoteViews$SemSetOnLongClickPendingIntent;->longClickPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7824
    return-void
.end method

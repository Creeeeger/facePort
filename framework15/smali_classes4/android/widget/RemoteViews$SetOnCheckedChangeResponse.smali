.class Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnCheckedChangeResponse"
.end annotation


# instance fields
.field private final blacklist mResponse:Landroid/widget/RemoteViews$RemoteResponse;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$HdQNdl9J5L6C0JBC1XORaThdpgo(Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->lambda$apply$0(Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews$RemoteResponse;)V
    .locals 0
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

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    iput p2, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mViewId:I

    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0
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

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mViewId:I

    new-instance p1, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {p1}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    iget-object p1, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mreadFromParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;)V

    return-void
.end method

.method private synthetic blacklist lambda$apply$0(Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    iget-object v1, p1, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-static {v0, p2, v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 7

    iget v0, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Landroid/widget/CompoundButton;

    const-string v2, ")"

    const-string v3, "RemoteViews"

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOnCheckedChange methods cannot be used on non-CompoundButton child (id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mViewId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/widget/CompoundButton;

    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v4}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/app/PendingIntent;

    move-result-object v4

    const v5, 0x10204e0

    const/4 v6, 0x2

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->this$0:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v6}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot setOnCheckedChangePendingIntent for collection item (id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mViewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/app/PendingIntent;

    move-result-object v2

    const v3, 0x102048d

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->this$0:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v6}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "The method setOnCheckedChangeFillInIntent is available only from RemoteViewsFactory (ie. on collection items)."

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_0
    new-instance v2, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {v1, v5, v2}, Landroid/widget/CompoundButton;->setTagInternal(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1, v5, v2}, Landroid/widget/CompoundButton;->setTagInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist clear()V
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fputmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v0, v1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fputmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;Landroid/content/Intent;)V

    return-void
.end method

.method public blacklist getActionTag()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnCheckedChangeResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    invoke-static {v0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;I)V

    return-void
.end method

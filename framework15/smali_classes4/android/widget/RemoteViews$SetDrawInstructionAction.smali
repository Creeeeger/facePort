.class Landroid/widget/RemoteViews$SetDrawInstructionAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDrawInstructionAction"
.end annotation


# instance fields
.field private final blacklist mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$aVGI9RPwk99qkf5khWkXt4wJPZQ(Landroid/widget/RemoteViews$SetDrawInstructionAction;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$SetDrawInstructionAction;->lambda$apply$1(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;ILjava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    invoke-static {}, Landroid/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/widget/RemoteViews$DrawInstructions;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews$DrawInstructions;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    :goto_0
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$DrawInstructions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    iput-object p2, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    return-void
.end method

.method static synthetic blacklist lambda$apply$0(ILcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/RemoteViews$Action;)V
    .locals 3

    iget v0, p3, Landroid/widget/RemoteViews$Action;->mViewId:I

    if-ne p0, v0, :cond_0

    instance-of v0, p3, Landroid/widget/RemoteViews$SetOnClickResponse;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroid/widget/RemoteViews$SetOnClickResponse;

    iget-object v1, v0, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    iget-object v2, p2, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-static {v1, p1, v2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$apply$1(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, p1, p2}, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;-><init>(ILcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    invoke-static {}, Landroid/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    iget-object v1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    iget-object v1, v1, Landroid/widget/RemoteViews$DrawInstructions;->mInstructions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-direct {v3, v2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    new-instance v3, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p3}, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$SetDrawInstructionAction;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addClickListener(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$ClickCallbacks;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    const-string v3, "RemoteViews"

    const-string v4, "Failed to render draw instructions"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist getActionTag()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-static {}, Landroid/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    invoke-static {v0, p1, p2}, Landroid/widget/RemoteViews$DrawInstructions;->-$$Nest$smwriteToParcel(Landroid/widget/RemoteViews$DrawInstructions;Landroid/os/Parcel;I)V

    :cond_0
    return-void
.end method

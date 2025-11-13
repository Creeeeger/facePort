.class public final Landroid/media/RoutingSessionInfo$Builder;
.super Ljava/lang/Object;
.source "RoutingSessionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RoutingSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mClientPackageName:Ljava/lang/String;

.field private blacklist mControlHints:Landroid/os/Bundle;

.field private final blacklist mDeselectableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mId:Ljava/lang/String;

.field private blacklist mIsSystemSession:Z

.field private blacklist mName:Ljava/lang/CharSequence;

.field private blacklist mOwnerPackageName:Ljava/lang/String;

.field private blacklist mProviderId:Ljava/lang/String;

.field private final blacklist mSelectableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSelectedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransferInitiatorPackageName:Ljava/lang/String;

.field private blacklist mTransferInitiatorUserHandle:Landroid/os/UserHandle;

.field private blacklist mTransferReason:I

.field private final blacklist mTransferableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVolume:I

.field private blacklist mVolumeHandling:I

.field private blacklist mVolumeMax:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClientPackageName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mClientPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmControlHints(Landroid/media/RoutingSessionInfo$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mControlHints:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeselectableRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSystemSession(Landroid/media/RoutingSessionInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mIsSystemSession:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOwnerPackageName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mOwnerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProviderId(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mProviderId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectableRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectedRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferInitiatorPackageName(Landroid/media/RoutingSessionInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferInitiatorPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferInitiatorUserHandle(Landroid/media/RoutingSessionInfo$Builder;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferReason(Landroid/media/RoutingSessionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferReason:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferableRoutes(Landroid/media/RoutingSessionInfo$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolume(Landroid/media/RoutingSessionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolume:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeHandling(Landroid/media/RoutingSessionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeMax(Landroid/media/RoutingSessionInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeMax:I

    return p0
.end method

.method public constructor whitelist <init>(Landroid/media/RoutingSessionInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferReason:I

    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mId:Ljava/lang/String;

    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mName:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mClientPackageName:Ljava/lang/String;

    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mProviderId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mProviderId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    new-instance v1, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    new-instance v1, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    new-instance v1, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    new-instance v1, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    :cond_0
    iget v0, p1, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    iget v0, p1, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeMax:I

    iget v0, p1, Landroid/media/RoutingSessionInfo;->mVolume:I

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolume:I

    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mControlHints:Landroid/os/Bundle;

    iget-boolean v0, p1, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    iput-boolean v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mIsSystemSession:Z

    iget v0, p1, Landroid/media/RoutingSessionInfo;->mTransferReason:I

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferReason:I

    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mTransferInitiatorPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferInitiatorPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferReason:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mId:Ljava/lang/String;

    nop

    const-string v0, "clientPackageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mClientPackageName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addDeselectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addSelectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/media/RoutingSessionInfo;
    .locals 2

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/RoutingSessionInfo;

    invoke-direct {v0, p0}, Landroid/media/RoutingSessionInfo;-><init>(Landroid/media/RoutingSessionInfo$Builder;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectedRoutes must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearDeselectableRoutes()Landroid/media/RoutingSessionInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public whitelist clearSelectableRoutes()Landroid/media/RoutingSessionInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public whitelist clearSelectedRoutes()Landroid/media/RoutingSessionInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public whitelist clearTransferableRoutes()Landroid/media/RoutingSessionInfo$Builder;
    .locals 1

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public whitelist removeDeselectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeSelectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mClientPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setControlHints(Landroid/os/Bundle;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mControlHints:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setName(Ljava/lang/CharSequence;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist setOwnerPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mOwnerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mProviderId:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "providerId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mIsSystemSession:Z

    return-object p0
.end method

.method public whitelist setTransferInitiator(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferInitiatorUserHandle:Landroid/os/UserHandle;

    iput-object p2, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferInitiatorPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setTransferReason(I)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferReason:I

    return-object p0
.end method

.method public whitelist setVolume(I)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolume:I

    return-object p0
.end method

.method public whitelist setVolumeHandling(I)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    return-object p0
.end method

.method public whitelist setVolumeMax(I)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeMax:I

    return-object p0
.end method

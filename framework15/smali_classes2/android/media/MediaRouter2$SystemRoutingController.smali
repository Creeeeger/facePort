.class Landroid/media/MediaRouter2$SystemRoutingController;
.super Landroid/media/MediaRouter2$RoutingController;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SystemRoutingController"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaRouter2;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MediaRouter2$SystemRoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method


# virtual methods
.method public whitelist isReleased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method blacklist releaseInternal(Z)V
    .locals 0

    return-void
.end method

.method blacklist scheduleRelease()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

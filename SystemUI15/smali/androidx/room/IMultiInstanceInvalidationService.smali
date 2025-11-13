.class public interface abstract Landroidx/room/IMultiInstanceInvalidationService;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "androidx$room$IMultiInstanceInvalidationService"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/room/IMultiInstanceInvalidationService;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract broadcastInvalidation([Ljava/lang/String;I)V
.end method

.method public abstract registerCallback(Landroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/String;)I
.end method

.method public abstract unregisterCallback(Landroidx/room/IMultiInstanceInvalidationCallback;I)V
.end method

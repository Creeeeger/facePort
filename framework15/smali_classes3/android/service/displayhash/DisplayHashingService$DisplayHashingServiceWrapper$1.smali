.class Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;
.super Ljava/lang/Object;
.source "DisplayHashingService.java"

# interfaces
.implements Landroid/view/displayhash/DisplayHashResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;->generateDisplayHash([BLandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;

.field final synthetic blacklist val$callback:Landroid/os/RemoteCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;Landroid/os/RemoteCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;->this$1:Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;

    iput-object p2, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;->val$callback:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayHashError(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DISPLAY_HASH_ERROR_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;->val$callback:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public whitelist onDisplayHashResult(Landroid/view/displayhash/DisplayHash;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DISPLAY_HASH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper$1;->val$callback:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

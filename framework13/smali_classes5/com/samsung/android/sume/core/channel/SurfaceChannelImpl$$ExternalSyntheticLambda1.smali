.class public final synthetic Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/HardwareBuffer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/HardwareBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/HardwareBuffer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/HardwareBuffer;

    invoke-static {v0, p1}, Lcom/samsung/android/sume/core/channel/SurfaceChannelImpl;->lambda$onImageReceive$4(Landroid/hardware/HardwareBuffer;I)Z

    move-result p1

    return p1
.end method

.class public final synthetic Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;

.field public final synthetic f$1:Landroidx/window/area/WindowAreaSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;Landroidx/window/area/RearDisplaySessionImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer$$ExternalSyntheticLambda0;->f$0:Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;

    iput-object p2, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer$$ExternalSyntheticLambda0;->f$1:Landroidx/window/area/WindowAreaSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer$$ExternalSyntheticLambda0;->f$0:Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;

    iget-object p0, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer$$ExternalSyntheticLambda0;->f$1:Landroidx/window/area/WindowAreaSession;

    check-cast p0, Landroidx/window/area/RearDisplaySessionImpl;

    invoke-static {v0, p0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;->$r8$lambda$6gXNOM5P_qr5ejngwoXwmORDqKg(Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;Landroidx/window/area/RearDisplaySessionImpl;)V

    return-void
.end method

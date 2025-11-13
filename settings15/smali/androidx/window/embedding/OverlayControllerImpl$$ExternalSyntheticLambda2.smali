.class public final synthetic Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/window/embedding/OverlayControllerImpl;

.field public final synthetic f$2:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/window/embedding/OverlayControllerImpl;Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda2;->f$1:Landroidx/window/embedding/OverlayControllerImpl;

    iput-object p3, p0, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda2;->f$2:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda2;->f$1:Landroidx/window/embedding/OverlayControllerImpl;

    iget-object p0, p0, Landroidx/window/embedding/OverlayControllerImpl$$ExternalSyntheticLambda2;->f$2:Landroidx/core/util/Consumer;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p0, p1}, Landroidx/window/embedding/OverlayControllerImpl;->$r8$lambda$ntOYpMkbsop3lIkY7Rd2KVvvMsQ(Ljava/lang/String;Landroidx/window/embedding/OverlayControllerImpl;Landroidx/core/util/Consumer;Ljava/util/List;)V

    return-void
.end method

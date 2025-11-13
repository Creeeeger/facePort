.class public final Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/area/WindowAreaControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RearDisplayPresentationSessionConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/window/extensions/core/util/function/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0080\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;",
        "Landroidx/window/extensions/core/util/function/Consumer;",
        "",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "windowAreaPresentationSessionCallback",
        "Landroidx/window/area/WindowAreaPresentationSessionCallback;",
        "windowAreaComponent",
        "Landroidx/window/extensions/area/WindowAreaComponent;",
        "(Landroidx/window/area/WindowAreaControllerImpl;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;Landroidx/window/extensions/area/WindowAreaComponent;)V",
        "lastReportedSessionStatus",
        "accept",
        "",
        "t",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private lastReportedSessionStatus:I

.field final synthetic this$0:Landroidx/window/area/WindowAreaControllerImpl;

.field private final windowAreaComponent:Landroidx/window/extensions/area/WindowAreaComponent;

.field private final windowAreaPresentationSessionCallback:Landroidx/window/area/WindowAreaPresentationSessionCallback;


# direct methods
.method public static synthetic $r8$lambda$ejBVDgJJoSxAhsjcPWpzIdNJCB0(IILandroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;Landroidx/window/area/WindowAreaControllerImpl;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->accept$lambda$0(IILandroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;Landroidx/window/area/WindowAreaControllerImpl;)V

    return-void
.end method

.method public constructor <init>(Landroidx/window/area/WindowAreaControllerImpl;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;Landroidx/window/extensions/area/WindowAreaComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/window/area/WindowAreaPresentationSessionCallback;",
            "Landroidx/window/extensions/area/WindowAreaComponent;",
            ")V"
        }
    .end annotation

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowAreaPresentationSessionCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowAreaComponent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->this$0:Landroidx/window/area/WindowAreaControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->windowAreaPresentationSessionCallback:Landroidx/window/area/WindowAreaPresentationSessionCallback;

    iput-object p4, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->windowAreaComponent:Landroidx/window/extensions/area/WindowAreaComponent;

    return-void
.end method

.method private static final accept$lambda$0(IILandroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;Landroidx/window/area/WindowAreaControllerImpl;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 p3, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, p3, :cond_0

    invoke-static {}, Landroidx/window/area/WindowAreaControllerImpl;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid session state value received: "

    invoke-static {p0, p2, p1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p2, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->windowAreaPresentationSessionCallback:Landroidx/window/area/WindowAreaPresentationSessionCallback;

    invoke-interface {p0, v1}, Landroidx/window/area/WindowAreaPresentationSessionCallback;->onContainerVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, p3, :cond_2

    iget-object p0, p2, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->windowAreaPresentationSessionCallback:Landroidx/window/area/WindowAreaPresentationSessionCallback;

    invoke-interface {p0, v0}, Landroidx/window/area/WindowAreaPresentationSessionCallback;->onContainerVisibilityChanged(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p2, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->windowAreaPresentationSessionCallback:Landroidx/window/area/WindowAreaPresentationSessionCallback;

    new-instance p1, Landroidx/window/area/RearDisplayPresentationSessionPresenterImpl;

    iget-object p2, p2, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->windowAreaComponent:Landroidx/window/extensions/area/WindowAreaComponent;

    invoke-interface {p2}, Landroidx/window/extensions/area/WindowAreaComponent;->getRearDisplayPresentation()Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Landroidx/window/core/ExtensionsUtil;->INSTANCE:Landroidx/window/core/ExtensionsUtil;

    invoke-virtual {v0}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result v0

    invoke-direct {p1, p2, p3, v0}, Landroidx/window/area/RearDisplayPresentationSessionPresenterImpl;-><init>(Landroidx/window/extensions/area/WindowAreaComponent;Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;I)V

    invoke-interface {p0, p1}, Landroidx/window/area/WindowAreaPresentationSessionCallback;->onSessionStarted(Landroidx/window/area/WindowAreaSessionPresenter;)V

    goto :goto_0

    :cond_3
    invoke-static {p3, v0}, Landroidx/window/area/WindowAreaControllerImpl;->access$setPresentationSessionActive$p(Landroidx/window/area/WindowAreaControllerImpl;Z)V

    iget-object p0, p2, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->windowAreaPresentationSessionCallback:Landroidx/window/area/WindowAreaPresentationSessionCallback;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroidx/window/area/WindowAreaPresentationSessionCallback;->onSessionEnded(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 4

    iget v0, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->lastReportedSessionStatus:I

    iput p1, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->lastReportedSessionStatus:I

    iget-object v1, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->this$0:Landroidx/window/area/WindowAreaControllerImpl;

    new-instance v3, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0, p0, v2}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticLambda1;-><init>(IILandroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;Landroidx/window/area/WindowAreaControllerImpl;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;->accept(I)V

    return-void
.end method

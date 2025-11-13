.class public final synthetic Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/unfold/util/JankMonitorTransitionProgressListener;

    new-instance v1, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/util/JankMonitorTransitionProgressListener;-><init>(Ljava/util/function/Supplier;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/unfold/util/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

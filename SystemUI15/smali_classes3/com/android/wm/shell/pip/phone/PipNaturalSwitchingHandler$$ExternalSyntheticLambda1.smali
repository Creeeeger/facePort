.class public final synthetic Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;

    check-cast p1, Landroid/app/TaskInfo;

    const/4 p1, 0x0

    const-string/jumbo v0, "task_vanished"

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/pip/phone/PipNaturalSwitchingHandler;->updateWaitingForTaskVanished(Ljava/lang/String;Z)V

    return-void
.end method

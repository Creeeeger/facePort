.class public final Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$timeoutRunnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$timeoutRunnable$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider$timeoutRunnable$1;->this$0:Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;

    iget v0, p0, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->lastHingeAngle:F

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProvider;->notifyFoldUpdate(FI)V

    return-void
.end method

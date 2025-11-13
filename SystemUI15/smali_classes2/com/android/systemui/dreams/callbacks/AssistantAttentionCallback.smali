.class public final Lcom/android/systemui/dreams/callbacks/AssistantAttentionCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/condition/Monitor$Callback;


# instance fields
.field public final mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/callbacks/AssistantAttentionCallback;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    return-void
.end method


# virtual methods
.method public final onConditionsChanged(Z)V
    .locals 2

    const-string v0, "AssistAttentionCallback"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "onConditionChanged:"

    invoke-static {v1, v0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/dreams/callbacks/AssistantAttentionCallback;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->setHasAssistantAttention(Z)V

    return-void
.end method

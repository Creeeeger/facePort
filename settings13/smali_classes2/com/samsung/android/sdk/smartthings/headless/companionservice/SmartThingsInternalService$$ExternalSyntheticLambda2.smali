.class public final synthetic Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsInternalService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    invoke-static {p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->onDispose(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)V

    return-void
.end method

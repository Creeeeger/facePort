.class public final synthetic Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

.field public final synthetic f$1:Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    iput-object p2, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->$r8$lambda$9_oxpzU0yor7uZq7Qgr863dX8Ss(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

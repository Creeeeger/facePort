.class public final synthetic Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;

    check-cast p1, Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;->$r8$lambda$fK6ZUG54x2aFgBOOPYhtIYNgsOc(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Executor;Lcom/samsung/android/sdk/smartthings/headless/companionservice/IService;)V

    return-void
.end method

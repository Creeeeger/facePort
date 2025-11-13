.class public final synthetic Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/decor/ScreenDecorCommand$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ScreenDecorations;

    return-void
.end method


# virtual methods
.method public final onExecute(Lcom/android/systemui/decor/ScreenDecorCommand;)V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/decor/ScreenDecorCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v2, p1, Lcom/android/systemui/decor/ScreenDecorCommand;->debug$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/ScreenDecorations;->setDebug(Z)V

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/ScreenDecorations;->setDebug(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/decor/ScreenDecorCommand;->getColor()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/decor/ScreenDecorCommand;->getColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/ScreenDecorations;->mDebugColor:I

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v4, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda17;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/decor/ScreenDecorCommand;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v3, 0x2

    aget-object v3, v0, v3

    iget-object v3, p1, Lcom/android/systemui/decor/ScreenDecorCommand;->hwcDebugTransparentRegion$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v4, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda17;

    const/4 v5, 0x1

    invoke-direct {v4, p0, p1, v5}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/decor/ScreenDecorCommand;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v3, 0x3

    aget-object v3, v0, v3

    iget-object v3, p1, Lcom/android/systemui/decor/ScreenDecorCommand;->roundedTop$delegate:Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->isPresent:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-object v6, v3, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->cmd:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    goto :goto_0

    :cond_3
    move-object v6, v5

    :goto_0
    check-cast v6, Lcom/android/systemui/decor/RoundedCornerSubCommand;

    if-eqz v6, :cond_5

    if-eqz v4, :cond_4

    iget-object v3, v3, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->cmd:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    goto :goto_1

    :cond_4
    move-object v3, v5

    :goto_1
    check-cast v3, Lcom/android/systemui/decor/RoundedCornerSubCommand;

    invoke-virtual {v3}, Lcom/android/systemui/decor/RoundedCornerSubCommand;->toRoundedCornerDebugModel()Lcom/android/systemui/decor/DebugRoundedCornerModel;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v5

    :goto_2
    const/4 v4, 0x4

    aget-object v0, v0, v4

    iget-object v0, p1, Lcom/android/systemui/decor/ScreenDecorCommand;->roundedBottom$delegate:Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->isPresent:Z

    if-eqz v4, :cond_6

    iget-object v6, v0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->cmd:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    goto :goto_3

    :cond_6
    move-object v6, v5

    :goto_3
    check-cast v6, Lcom/android/systemui/decor/RoundedCornerSubCommand;

    if-eqz v6, :cond_8

    if-eqz v4, :cond_7

    iget-object v5, v0, Lcom/android/systemui/statusbar/commandline/OptionalSubCommand;->cmd:Lcom/android/systemui/statusbar/commandline/ParseableCommand;

    :cond_7
    check-cast v5, Lcom/android/systemui/decor/RoundedCornerSubCommand;

    invoke-virtual {v5}, Lcom/android/systemui/decor/RoundedCornerSubCommand;->toRoundedCornerDebugModel()Lcom/android/systemui/decor/DebugRoundedCornerModel;

    move-result-object v5

    :cond_8
    if-nez v3, :cond_9

    if-eqz v5, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerDelegate:Lcom/android/systemui/decor/DebugRoundedCornerDelegate;

    invoke-virtual {v0, v3, v5}, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->applyNewDebugCorners(Lcom/android/systemui/decor/DebugRoundedCornerModel;Lcom/android/systemui/decor/DebugRoundedCornerModel;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_a
    invoke-virtual {p1}, Lcom/android/systemui/decor/ScreenDecorCommand;->getCameraProtection()Lcom/android/systemui/decor/CameraProtectionSubCommand;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/android/systemui/decor/ScreenDecorCommand;->getCameraProtection()Lcom/android/systemui/decor/CameraProtectionSubCommand;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/decor/CameraProtectionSubCommand;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v4, v3, v1

    iget-object v0, v0, Lcom/android/systemui/decor/CameraProtectionSubCommand;->enabled$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    invoke-virtual {p1}, Lcom/android/systemui/decor/ScreenDecorCommand;->getCameraProtection()Lcom/android/systemui/decor/CameraProtectionSubCommand;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v1, v3, v1

    iget-object v1, v4, Lcom/android/systemui/decor/CameraProtectionSubCommand;->enabled$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->setupCameraListener()V

    :cond_b
    invoke-virtual {p1}, Lcom/android/systemui/decor/ScreenDecorCommand;->getCameraProtection()Lcom/android/systemui/decor/CameraProtectionSubCommand;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v1, v3, v2

    iget-object v0, v0, Lcom/android/systemui/decor/CameraProtectionSubCommand;->strokeWidth$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    invoke-virtual {p1}, Lcom/android/systemui/decor/ScreenDecorCommand;->getCameraProtection()Lcom/android/systemui/decor/CameraProtectionSubCommand;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v1, v3, v2

    iget-object p1, p1, Lcom/android/systemui/decor/CameraProtectionSubCommand;->strokeWidth$delegate:Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/commandline/SingleArgParamOptional;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->cameraProtectionStrokeWidth:I

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_d
    :goto_4
    return-void
.end method

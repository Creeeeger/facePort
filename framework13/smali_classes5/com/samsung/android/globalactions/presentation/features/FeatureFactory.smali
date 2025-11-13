.class public interface abstract Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# virtual methods
.method public abstract blacklist createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist createActionUpdateStrategies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ActionUpdateStrategy;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public abstract blacklist createActionsCreationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist createDisposingStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist createInitializationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist createOnKeyListenerStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist createSecureConfirmStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist createSoftwareUpdateStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/SoftwareUpdateStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist createViewInflateStrategy()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/ViewInflateStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist createWindowDecorationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist createWindowManagerFunctionStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/strategies/WindowManagerFunctionStrategy;",
            ">;"
        }
    .end annotation
.end method

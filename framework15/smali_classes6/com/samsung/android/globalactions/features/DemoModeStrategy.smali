.class public Lcom/samsung/android/globalactions/features/DemoModeStrategy;
.super Ljava/lang/Object;
.source "DemoModeStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;


# instance fields
.field private final blacklist mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

.field private final blacklist mToastController:Lcom/samsung/android/globalactions/util/ToastController;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/features/DemoModeStrategy;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iput-object p2, p0, Lcom/samsung/android/globalactions/features/DemoModeStrategy;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    return-void
.end method


# virtual methods
.method public blacklist onPressEmergencyModeAction()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/DemoModeStrategy;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v1, p0, Lcom/samsung/android/globalactions/features/DemoModeStrategy;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v2, 0x10405f7

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    return v2
.end method

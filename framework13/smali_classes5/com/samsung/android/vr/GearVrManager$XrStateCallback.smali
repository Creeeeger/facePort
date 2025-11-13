.class final Lcom/samsung/android/vr/GearVrManager$XrStateCallback;
.super Lcom/samsung/android/vr/IXrStateCallbacks$Stub;
.source "GearVrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/GearVrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "XrStateCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/vr/GearVrManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/vr/GearVrManager;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/samsung/android/vr/GearVrManager$XrStateCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-direct {p0}, Lcom/samsung/android/vr/IXrStateCallbacks$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/vr/GearVrManager;Lcom/samsung/android/vr/GearVrManager$XrStateCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager$XrStateCallback;-><init>(Lcom/samsung/android/vr/GearVrManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onActivityIntercepted(IILandroid/os/Bundle;)V
    .locals 1
    .param p1, "interceptedDisplayId"    # I
    .param p2, "reason"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 730
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager$XrStateCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/vr/GearVrManager;->-$$Nest$mhandleXrStartActivityIntercepted(Lcom/samsung/android/vr/GearVrManager;IILandroid/os/Bundle;)V

    .line 731
    return-void
.end method

.method public blacklist onActivityResumeChanged(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 734
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager$XrStateCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/vr/GearVrManager;->-$$Nest$mhandleActivityResumeChanged(Lcom/samsung/android/vr/GearVrManager;ILandroid/os/Bundle;)V

    .line 735
    return-void
.end method

.method public blacklist onFocusedDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 738
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager$XrStateCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-static {v0, p1}, Lcom/samsung/android/vr/GearVrManager;->-$$Nest$mhandleFocusedDisplayChanged(Lcom/samsung/android/vr/GearVrManager;I)V

    .line 739
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XrStateCallback[packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/vr/GearVrManager$XrStateCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-static {v1}, Lcom/samsung/android/vr/GearVrManager;->-$$Nest$fgetmContext(Lcom/samsung/android/vr/GearVrManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

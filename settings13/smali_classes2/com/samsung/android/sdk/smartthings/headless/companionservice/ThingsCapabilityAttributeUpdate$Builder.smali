.class public final Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;
.super Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$CommonBuilder;
.source "ThingsCapabilityAttributeUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$CommonBuilder<",
        "Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttributes:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$CommonBuilder;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Callable;Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 99
    invoke-super {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$CommonBuilder;->build()Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate;

    .line 100
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->mAttributes:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    const-class v1, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/GsonHelper;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "attributes"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$CommonBuilder;->putIfNonNull(Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected checkMandatoryFields()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 106
    invoke-super {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$CommonBuilder;->checkMandatoryFields()V

    .line 107
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->mAttributes:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    const-string v0, "mAttributes"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$CommonBuilder;->requireNonNull([Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setAttributes([Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;)Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const-string/jumbo v0, "providerId is null."

    .line 117
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "attributes"

    .line 118
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$CommonBuilder;->requireNonNull([Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object p1, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityAttributeUpdate$Builder;->mAttributes:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityAttribute;

    return-object p0
.end method

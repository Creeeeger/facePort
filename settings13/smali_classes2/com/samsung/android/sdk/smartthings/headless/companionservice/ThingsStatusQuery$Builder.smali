.class public final Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Builder;
.super Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$CommonBuilder;
.source "ThingsStatusQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$CommonBuilder<",
        "Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$CommonBuilder;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Callable;Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Builder;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery;
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$CommonBuilder;->build()Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery;

    return-object p0
.end method

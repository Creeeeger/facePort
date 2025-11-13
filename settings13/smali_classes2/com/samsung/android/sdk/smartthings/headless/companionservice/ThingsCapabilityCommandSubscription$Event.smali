.class public final Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityCommandSubscription$Event;
.super Lcom/samsung/android/sdk/smartthings/headless/companionservice/SubscriptionResponse;
.source "ThingsCapabilityCommandSubscription.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final AVOID_NPE:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityCommand;

.field public static final TYPE:Ljava/lang/reflect/Type;


# instance fields
.field public command:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityCommandSubscription$Event$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityCommandSubscription$Event$1;-><init>()V

    .line 94
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityCommandSubscription$Event;->TYPE:Ljava/lang/reflect/Type;

    .line 95
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityCommand;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityCommand;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityCommandSubscription$Event;->AVOID_NPE:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityCommand;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SubscriptionResponse;-><init>()V

    .line 100
    sget-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityCommandSubscription$Event;->AVOID_NPE:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityCommand;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsCapabilityCommandSubscription$Event;->command:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityCommand;

    return-void
.end method


# virtual methods
.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 91
    invoke-super {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

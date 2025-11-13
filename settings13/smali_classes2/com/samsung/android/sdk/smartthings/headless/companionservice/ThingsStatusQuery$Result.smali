.class public final Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result;
.super Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;
.source "ThingsStatusQuery.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/reflect/Type;


# instance fields
.field public thingsStatus:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result$1;-><init>()V

    .line 73
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result;->TYPE:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;-><init>()V

    .line 78
    sget-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;->UNKNOWN:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ThingsStatusQuery$Result;->thingsStatus:Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsStatus;

    return-void
.end method


# virtual methods
.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 70
    invoke-super {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

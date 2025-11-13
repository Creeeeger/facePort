.class public final Lcom/samsung/android/sdk/smartthings/headless/companionservice/ServiceCheckQuery$Result;
.super Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;
.source "ServiceCheckQuery.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ServiceCheckQuery$Result$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ServiceCheckQuery$Result$1;-><init>()V

    .line 71
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/ServiceCheckQuery$Result;->TYPE:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 68
    invoke-super {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

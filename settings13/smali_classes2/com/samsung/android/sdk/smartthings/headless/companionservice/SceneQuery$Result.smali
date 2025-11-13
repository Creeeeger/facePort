.class public final Lcom/samsung/android/sdk/smartthings/headless/companionservice/SceneQuery$Result;
.super Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;
.source "SceneQuery.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final EMPTY:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/Scene;

.field public static final TYPE:Ljava/lang/reflect/Type;


# instance fields
.field public scenes:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/Scene;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SceneQuery$Result$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SceneQuery$Result$1;-><init>()V

    .line 70
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SceneQuery$Result;->TYPE:Ljava/lang/reflect/Type;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/Scene;

    .line 71
    sput-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SceneQuery$Result;->EMPTY:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/Scene;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;-><init>()V

    .line 78
    sget-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SceneQuery$Result;->EMPTY:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/Scene;

    iput-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/SceneQuery$Result;->scenes:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/Scene;

    return-void
.end method


# virtual methods
.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

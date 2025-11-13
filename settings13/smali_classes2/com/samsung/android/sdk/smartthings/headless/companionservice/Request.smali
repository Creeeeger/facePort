.class abstract Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$CommonBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final TYPE:Ljava/lang/reflect/Type;


# instance fields
.field private final mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request$1;-><init>()V

    .line 36
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;->TYPE:Ljava/lang/reflect/Type;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;->mParams:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method final getParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;->mParams:Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string p0, "libVersion"

    const-string v1, "1.0.7"

    .line 58
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method abstract getResponseType()Ljava/lang/reflect/Type;
.end method

.method isAsync()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isSyncTakenLong()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method final putParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Request;->mParams:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method abstract what()I
.end method

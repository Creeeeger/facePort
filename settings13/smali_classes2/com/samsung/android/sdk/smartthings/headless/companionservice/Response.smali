.class Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field static final TYPE:Ljava/lang/reflect/Type;


# instance fields
.field public apiVersion:Ljava/lang/String;

.field public isSuccessful:Z

.field remoteException:Ljava/lang/Throwable;

.field public seq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response$1;-><init>()V

    .line 37
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/Response;->TYPE:Ljava/lang/reflect/Type;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 63
    sget-boolean v0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p0}, Lcom/samsung/android/sdk/smartthings/headless/companionservice/DebugHelper;->dumpFields(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 65
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

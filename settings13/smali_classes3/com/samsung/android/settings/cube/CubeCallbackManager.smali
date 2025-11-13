.class public Lcom/samsung/android/settings/cube/CubeCallbackManager;
.super Ljava/lang/Object;
.source "CubeCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/cube/CubeCallbackManager$LazyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CubeCallbackManager"


# instance fields
.field private final mCubeFactoryHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/cube/CubeFactoryProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mCubeInteractionActivity:Lcom/samsung/android/settings/cube/CubeInteractionActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/cube/CubeCallbackManager;->mCubeFactoryHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/settings/cube/CubeCallbackManager;
    .locals 1

    .line 23
    invoke-static {}, Lcom/samsung/android/settings/cube/CubeCallbackManager$LazyHolder;->-$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/cube/CubeCallbackManager;

    move-result-object v0

    return-object v0
.end method

.method private notifyControlResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/cube/CubeCallbackManager;->mCubeFactoryHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/samsung/android/settings/cube/CubeCallbackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyControlFinished() contorlId is empty  / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlResult;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/cube/CubeCallbackManager;->mCubeFactoryHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/cube/CubeFactoryProvider;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->notifyControlResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/cube/CubeCallbackManager;->mCubeInteractionActivity:Lcom/samsung/android/settings/cube/CubeInteractionActivity;

    if-eqz p0, :cond_4

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/CubeInteractionActivity;->notifyInteractionFinished()I

    :cond_4
    return-void
.end method

.method private parsePreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "@@"

    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 96
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 97
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public notifyControlCancel(Ljava/lang/String;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->parsePreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 57
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;->CANCELED_BY_USER:Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;

    .line 58
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object v0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->notifyControlResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;)V

    return-void
.end method

.method public notifyControlFailure(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;Ljava/lang/String;)V
    .locals 2

    .line 62
    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->parsePreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorType(Lcom/samsung/android/settings/cube/ControlResult$ErrorCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p2

    .line 66
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, ""

    :cond_0
    invoke-virtual {p2, p3}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setErrorMsg(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p2

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->notifyControlResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;)V

    return-void
.end method

.method public notifyControlSuccess(Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->parsePreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    .line 48
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object v0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/cube/CubeCallbackManager;->notifyControlResult(Ljava/lang/String;Lcom/samsung/android/settings/cube/ControlResult;)V

    return-void
.end method

.method public registerCube(Lcom/samsung/android/settings/cube/CubeFactoryProvider;)V
    .locals 1

    .line 31
    iget-object p0, p0, Lcom/samsung/android/settings/cube/CubeCallbackManager;->mCubeFactoryHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/CubeFactoryProvider;->getCubeLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerInteractionActivity(Lcom/samsung/android/settings/cube/CubeInteractionActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/samsung/android/settings/cube/CubeCallbackManager;->mCubeInteractionActivity:Lcom/samsung/android/settings/cube/CubeInteractionActivity;

    return-void
.end method

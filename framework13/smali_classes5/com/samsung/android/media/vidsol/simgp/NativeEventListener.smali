.class public Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;
.super Ljava/lang/Object;
.source "NativeEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

.field private blacklist mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->TAG:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "simgp_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->nativeSetup(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method private blacklist jsonToList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 76
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 77
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    .line 78
    move-object v3, v2

    check-cast v3, Lorg/json/JSONArray;

    invoke-direct {p0, v3}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->jsonToList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    .line 81
    :cond_0
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 82
    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v2

    .line 84
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private blacklist jsonToMap(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 57
    .local v1, "keysItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 61
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 62
    move-object v4, v3

    check-cast v4, Lorg/json/JSONArray;

    invoke-direct {p0, v4}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->jsonToList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    .line 65
    :cond_0
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 66
    move-object v4, v3

    check-cast v4, Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    .line 68
    :cond_1
    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 70
    :cond_2
    return-object v0
.end method

.method private final native blacklist nativeFinalize()V
.end method

.method private final native blacklist nativeSetup(Ljava/lang/Object;)V
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;IILjava/lang/String;)V
    .locals 5
    .param p0, "listener_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "msg"    # I
    .param p3, "json"    # Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const-string/jumbo v2, "postEventFromNative: %d, %d, %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;

    .line 92
    .local v0, "l":Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;
    if-nez v0, :cond_0

    .line 93
    return-void

    .line 96
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    if-eqz v1, :cond_1

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v1, "data":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    invoke-virtual {v2, p1, p2, v3, v1}, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 113
    .local v2, "m":Landroid/os/Message;
    iget-object v3, v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->release()V

    .line 51
    return-void
.end method

.method public blacklist release()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->nativeFinalize()V

    .line 46
    return-void
.end method

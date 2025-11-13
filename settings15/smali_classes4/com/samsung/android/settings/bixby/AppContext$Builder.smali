.class public final Lcom/samsung/android/settings/bixby/AppContext$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mLLMContext:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/AppContext$Builder;->mLLMContext:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/settings/bixby/AppContext;
    .locals 2

    const-string v0, "AppContext"

    const-string v1, "Builder.Build()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/bixby/AppContext;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bixby/AppContext;-><init>(Lcom/samsung/android/settings/bixby/AppContext$Builder;)V

    return-object v0
.end method

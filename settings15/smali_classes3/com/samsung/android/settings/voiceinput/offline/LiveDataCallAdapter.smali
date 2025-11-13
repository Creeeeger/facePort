.class public Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter;"
    }
.end annotation


# instance fields
.field private mResponseType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;->mResponseType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final adapt(Lretrofit2/OkHttpCall;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;-><init>(Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;Lretrofit2/OkHttpCall;)V

    return-object v0
.end method

.method public final responseType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;->mResponseType:Ljava/lang/reflect/Type;

    return-object p0
.end method

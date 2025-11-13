.class public final Lretrofit2/Retrofit$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final platform:Lretrofit2/Platform;

.field public final synthetic this$0:Lretrofit2/Retrofit;

.field public final synthetic val$service:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lretrofit2/Retrofit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/Retrofit$1;->this$0:Lretrofit2/Retrofit;

    sget-object p1, Lretrofit2/Platform;->PLATFORM:Lretrofit2/Platform;

    iput-object p1, p0, Lretrofit2/Retrofit$1;->platform:Lretrofit2/Platform;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lretrofit2/Retrofit$1;->platform:Lretrofit2/Platform;

    invoke-virtual {v0, p2}, Lretrofit2/Platform;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lretrofit2/Retrofit$1;->platform:Lretrofit2/Platform;

    invoke-virtual {p0, p2, p1, p3}, Lretrofit2/Platform;->invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lretrofit2/Retrofit$1;->this$0:Lretrofit2/Retrofit;

    invoke-virtual {p0, p2}, Lretrofit2/Retrofit;->loadServiceMethod(Ljava/lang/reflect/Method;)Lretrofit2/ServiceMethod;

    move-result-object p0

    new-instance p1, Lretrofit2/OkHttpCall;

    invoke-direct {p1, p0, p3}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/ServiceMethod;[Ljava/lang/Object;)V

    iget-object p0, p0, Lretrofit2/ServiceMethod;->callAdapter:Lretrofit2/CallAdapter;

    invoke-interface {p0, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/OkHttpCall;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.class public Lretrofit2/Platform;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PLATFORM:Lretrofit2/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lretrofit2/Platform$Java8;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lretrofit2/Platform$Java8;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v0, "java.util.Optional"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lretrofit2/Platform$Java8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lretrofit2/Platform$Java8;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    new-instance v0, Lretrofit2/Platform;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    sput-object v0, Lretrofit2/Platform;->PLATFORM:Lretrofit2/Platform;

    return-void
.end method


# virtual methods
.method public defaultCallAdapterFactory(Ljava/util/concurrent/Executor;)Lretrofit2/CallAdapter$Factory;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p0, Lretrofit2/ExecutorCallAdapterFactory;

    invoke-direct {p0, p1}, Lretrofit2/ExecutorCallAdapterFactory;-><init>(Ljava/util/concurrent/Executor;)V

    return-object p0

    :cond_0
    sget-object p0, Lretrofit2/DefaultCallAdapterFactory;->INSTANCE:Lretrofit2/DefaultCallAdapterFactory;

    return-object p0
.end method

.method public defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public varargs invokeDefaultMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public isDefaultMethod(Ljava/lang/reflect/Method;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

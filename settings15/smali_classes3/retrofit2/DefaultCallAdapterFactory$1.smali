.class public final Lretrofit2/DefaultCallAdapterFactory$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lretrofit2/CallAdapter;


# instance fields
.field public final synthetic val$responseType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/DefaultCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final adapt(Lretrofit2/OkHttpCall;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final responseType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lretrofit2/DefaultCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    return-object p0
.end method

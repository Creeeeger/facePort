.class public final Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;->this$0:Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hashCode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;->this$0:Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Create reflection hash code : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AbstractProxyReflection"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/String;

    sget-object p3, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    new-array p1, p1, [Ljava/lang/Object;

    new-instance p3, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Lorg/apache/commons/lang3/Validate$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    invoke-static {p0, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    new-instance p1, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    const/16 p3, 0x11

    const/16 v0, 0x25

    invoke-direct {p1, p3, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p0, p3, p1, p2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;[Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p0, p3, p1, p2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/HashCodeBuilder;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget p0, p1, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;->this$0:Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/reflection/AbstractProxyReflection;->invokeInternal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

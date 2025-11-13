.class public final Landroidx/window/core/ConsumerAdapter$createSubscription$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/window/core/ConsumerAdapter$Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/core/ConsumerAdapter;->createSubscription(Ljava/lang/Object;Lkotlin/reflect/KClass;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/ConsumerAdapter$Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "androidx/window/core/ConsumerAdapter$createSubscription$2",
        "Landroidx/window/core/ConsumerAdapter$Subscription;",
        "dispose",
        "",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $javaConsumer:Ljava/lang/Object;

.field final synthetic $obj:Ljava/lang/Object;

.field final synthetic $removeMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$2;->$removeMethod:Ljava/lang/reflect/Method;

    iput-object p2, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$2;->$obj:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$2;->$javaConsumer:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$2;->$removeMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$2;->$obj:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/window/core/ConsumerAdapter$createSubscription$2;->$javaConsumer:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

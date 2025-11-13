.class public final Lcom/android/systemui/util/NamedListenerSet$NamedListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/util/NamedListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/NamedListenerSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/NamedListenerSet;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/NamedListenerSet$NamedListener;->this$0:Lcom/android/systemui/util/NamedListenerSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/util/NamedListenerSet$NamedListener;->listener:Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/systemui/util/NamedListenerSet;->access$getGetName$p(Lcom/android/systemui/util/NamedListenerSet;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/util/NamedListenerSet$NamedListener;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    instance-of v2, p1, Lcom/android/systemui/util/NamedListenerSet$NamedListener;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/NamedListenerSet$NamedListener;->listener:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/util/NamedListenerSet$NamedListener;

    iget-object p1, p1, Lcom/android/systemui/util/NamedListenerSet$NamedListener;->listener:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final getListener()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/NamedListenerSet$NamedListener;->listener:Ljava/lang/Object;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/NamedListenerSet$NamedListener;->name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/NamedListenerSet$NamedListener;->listener:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

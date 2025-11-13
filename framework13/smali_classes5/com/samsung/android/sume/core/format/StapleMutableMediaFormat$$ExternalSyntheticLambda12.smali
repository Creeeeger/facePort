.class public final synthetic Lcom/samsung/android/sume/core/format/StapleMutableMediaFormat$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/format/MutableShape;

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/Copyable;->deepCopy()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sume/core/format/Shape;

    return-object p1
.end method

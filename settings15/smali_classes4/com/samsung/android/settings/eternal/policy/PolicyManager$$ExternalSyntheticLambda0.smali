.class public final synthetic Lcom/samsung/android/settings/eternal/policy/PolicyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/policy/PolicyManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/policy/PolicyManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/HashMap;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/settings/eternal/data/SupplierInfo;

    iget-object p2, p2, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mDTDVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

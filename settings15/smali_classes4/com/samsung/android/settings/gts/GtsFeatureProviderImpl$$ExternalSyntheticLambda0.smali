.class public final synthetic Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/gts/GtsFeatureProviderImpl;->mResourceMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/settings/gts/GtsGroup;->values()[Lcom/samsung/android/settings/gts/GtsGroup;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/samsung/android/settings/gts/GtsGroup;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class public abstract synthetic Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/96247375 686b7e63f6dcf1a5601f2ab8e3500de9d9cee111d60746fdb47e39108432a7a7"


# direct methods
.method public static m(Lcom/samsung/android/lib/episode/Scene$Builder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p0, p4}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

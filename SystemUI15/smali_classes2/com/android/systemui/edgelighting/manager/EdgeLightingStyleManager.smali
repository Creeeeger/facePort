.class public final Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;


# instance fields
.field public final mStyleHashMap:Ljava/util/LinkedHashMap;


# direct methods
.method private constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v11, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    const v7, 0x7f1305a9

    const v8, 0x7f1305aa

    const-string v3, "preload/noframe"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v9, 0x7f080d23

    const/4 v10, 0x1

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZZIIIZ)V

    const-string v2, "preload/noframe"

    invoke-virtual {v1, v2, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v9, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    sget-boolean v18, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_BASIC_LIGHTING:Z

    const v6, 0x7f130594

    const-string v3, "preload/basic"

    const v7, 0x7f130595

    const v8, 0x7f080697

    move-object v2, v9

    move/from16 v5, v18

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIII)V

    const-string v15, "preload/basic"

    invoke-virtual {v1, v15, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v9, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    const v6, 0x7f1305a1

    const-string v3, "preload/reflection"

    const v7, 0x7f1305a2

    const v8, 0x7f0807c5

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIII)V

    const-string v2, "preload/reflection"

    invoke-virtual {v1, v2, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    if-eqz v18, :cond_0

    const v4, 0x7f0807d8

    :goto_0
    move/from16 v16, v4

    goto :goto_1

    :cond_0
    const v4, 0x7f0807d9

    goto :goto_0

    :goto_1
    sget-boolean v19, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_COCKTAIL_COLOR_PHONE_COLOR:Z

    const v14, 0x7f1305a5

    const v4, 0x7f1305a6

    const-string v11, "preload/heart"

    const/4 v12, 0x1

    move-object v10, v3

    move/from16 v13, v18

    move-object v9, v15

    move v15, v4

    move/from16 v17, v19

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    const-string v4, "preload/heart"

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    if-eqz v18, :cond_1

    const v4, 0x7f0807a6

    :goto_2
    move/from16 v16, v4

    goto :goto_3

    :cond_1
    const v4, 0x7f0807a7

    goto :goto_2

    :goto_3
    const v14, 0x7f13059e

    const v15, 0x7f13059f

    const-string v11, "preload/fireworks"

    const/4 v12, 0x1

    move-object v10, v3

    move/from16 v13, v18

    move/from16 v17, v19

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    const-string v4, "preload/fireworks"

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    const/4 v7, 0x0

    const v8, 0x7f13059b

    const-string v5, "preload/eclipse"

    const/4 v6, 0x1

    const v10, 0x7f13059c

    const v11, 0x7f080780

    move-object v4, v3

    move-object v12, v9

    move v9, v10

    move v10, v11

    move/from16 v11, v19

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    const-string v4, "preload/eclipse"

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    const v8, 0x7f130599

    const-string v5, "preload/echo"

    const v9, 0x7f13059a

    const v10, 0x7f08077e

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    const-string v4, "preload/echo"

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    const v8, 0x7f1305ab

    const-string v5, "preload/spotlight"

    const v9, 0x7f1305ac

    const v10, 0x7f08127a

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;-><init>(Ljava/lang/String;ZZIIIZ)V

    const-string v4, "preload/spotlight"

    invoke-virtual {v1, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v18, :cond_5

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    iget-object v5, v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v1, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    iput-object v1, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    :cond_5
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;
    .locals 1

    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;-><init>()V

    sput-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    :cond_0
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    return-object v0
.end method

.method public static setEdgeLightingStyleType(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2

    const-string v0, "edge_lighting_style_type_str"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public final getDefalutStyle()Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    return-object p0
.end method

.method public final getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 10

    const-string v0, "edge_lighting_style_type"

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getEdgeLightingStyleType : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EdgeLightingStyleManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "preload/noframe"

    const-string v7, "edge_lighting_style_type_str"

    if-ltz v3, :cond_9

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz v3, :cond_7

    const/4 v0, 0x1

    if-eq v3, v0, :cond_5

    if-eq v3, v4, :cond_3

    const/4 v0, 0x3

    if-eq v3, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    const-string v3, "preload/reflection"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v7, v3, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_6

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, v7, v6, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_8
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    invoke-static {p1, v7, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_9
    :goto_0
    invoke-static {p1, v7, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object p1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object v6

    :cond_a
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    return-object p0

    :cond_b
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-gt v1, v4, :cond_d

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_1

    :cond_c
    return-object v0

    :cond_d
    :goto_1
    sget-boolean p0, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_BASIC_LIGHTING:Z

    if-nez p0, :cond_e

    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "preload/heart"

    invoke-static {p1, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->setEdgeLightingStyleType(Landroid/content/ContentResolver;Ljava/lang/String;)V

    return-object p0

    :cond_e
    const-string p0, "preload/wave"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    const-string p0, "preload/bubble"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    const-string p0, "preload/gradation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    const-string p0, "preload/glow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_2

    :cond_f
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v6}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->setEdgeLightingStyleType(Landroid/content/ContentResolver;Ljava/lang/String;)V

    return-object v6

    :cond_10
    :goto_2
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "preload/basic"

    invoke-static {p1, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->setEdgeLightingStyleType(Landroid/content/ContentResolver;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPreloadIndex(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const-string v0, "preload/noframe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "preload/basic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "preload/reflection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const-string v0, "preload/heart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x7

    return p0

    :cond_3
    const-string v0, "preload/fireworks"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x8

    return p0

    :cond_4
    const-string v0, "preload/eclipse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x9

    return p0

    :cond_5
    const-string v0, "preload/echo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p0, 0xa

    return p0

    :cond_6
    const-string v0, "preload/spotlight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p0, 0xb

    return p0

    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->mKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Not found effect type = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EdgeLightingStyleManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Style hash map list : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->mStyleHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

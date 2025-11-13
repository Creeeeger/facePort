.class public final Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;


# instance fields
.field public final mDBName:Ljava/lang/String;

.field public final mEffectName:Ljava/lang/String;

.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field public final mSpecialEffect:Landroid/net/Uri;

.field public final mSupportMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mSupportMap:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mEffectName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mSpecialEffect:Landroid/net/Uri;

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz p6, :cond_0

    move p4, p1

    goto :goto_0

    :cond_0
    move p4, p3

    :goto_0
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    xor-int/2addr p5, p1

    and-int/2addr p4, p5

    if-eqz p4, :cond_1

    const-string p4, "!"

    invoke-virtual {p6, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    if-nez p4, :cond_2

    goto/16 :goto_4

    :cond_2
    array-length p5, p4

    move p6, p3

    :goto_2
    if-ge p6, p5, :cond_9

    aget-object v0, p4, p6

    const-string v1, "centerPosition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "true"

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    goto :goto_3

    :cond_3
    const-string v1, "edgeSpecialEffect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    goto :goto_3

    :cond_4
    const-string v1, "edgeFrameEffect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    goto :goto_3

    :cond_5
    const-string v1, "repeatCount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, ":"

    if-eqz v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string/jumbo v1, "specialSize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    aget-object v0, v0, p1

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    aget-object v1, v0, p3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    const-string/jumbo v1, "startAfterToastFinished"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    :cond_8
    :goto_3
    add-int/lit8 p6, p6, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mSupportMap:Ljava/util/HashMap;

    sget-object p3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->EFFECT:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    const-string p4, "EFFECT"

    invoke-virtual {p7, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mSupportMap:Ljava/util/HashMap;

    sget-object p3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->COLOR:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    const-string p4, "COLOR"

    invoke-virtual {p7, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mSupportMap:Ljava/util/HashMap;

    sget-object p3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    const-string p4, "WIDTH"

    invoke-virtual {p7, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mSupportMap:Ljava/util/HashMap;

    sget-object p3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    const-string p4, "TRANSPARENCY"

    invoke-virtual {p7, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mSupportMap:Ljava/util/HashMap;

    sget-object p3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    const-string p4, "DURATION"

    invoke-virtual {p7, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "el+oneui3.0/"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mDBName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mDBName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRoundedIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mEffectName:Ljava/lang/String;

    return-object p0
.end method

.method public final isSupportEffect()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->mSupportMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.class public final Landroid/view/textclassifier/TextClassification$Builder;
.super Ljava/lang/Object;
.source "TextClassification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final greylist-max-o mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExtras:Landroid/os/Bundle;

.field private greylist-max-o mId:Ljava/lang/String;

.field private greylist-max-o mLegacyIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mLegacyIntent:Landroid/content/Intent;

.field private greylist-max-o mLegacyLabel:Ljava/lang/String;

.field private greylist-max-o mLegacyOnClickListener:Landroid/view/View$OnClickListener;

.field private greylist-max-o mText:Ljava/lang/String;

.field private final blacklist mTypeScoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActions:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mTypeScoreMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public whitelist addAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addActions(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/app/RemoteAction;",
            ">;)",
            "Landroid/view/textclassifier/TextClassification$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/view/textclassifier/TextClassification;
    .locals 12

    new-instance v7, Landroid/view/textclassifier/EntityConfidence;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mTypeScoreMap:Ljava/util/Map;

    invoke-direct {v7, v0}, Landroid/view/textclassifier/EntityConfidence;-><init>(Ljava/util/Map;)V

    new-instance v11, Landroid/view/textclassifier/TextClassification;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mText:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyLabel:Ljava/lang/String;

    iget-object v4, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyIntent:Landroid/content/Intent;

    iget-object v5, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v6, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActions:Ljava/util/List;

    iget-object v8, p0, Landroid/view/textclassifier/TextClassification$Builder;->mId:Ljava/lang/String;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mExtras:Landroid/os/Bundle;

    :goto_0
    move-object v9, v0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/view/textclassifier/TextClassification;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Ljava/util/List;Landroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Landroid/os/Bundle;Landroid/view/textclassifier/TextClassification-IA;)V

    return-object v11
.end method

.method public blacklist clearActions()Landroid/view/textclassifier/TextClassification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public blacklist clearEntityTypes()Landroid/view/textclassifier/TextClassification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mTypeScoreMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method blacklist setEntityConfidence(Landroid/view/textclassifier/EntityConfidence;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mTypeScoreMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mTypeScoreMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/textclassifier/EntityConfidence;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public whitelist setEntityType(Ljava/lang/String;F)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Builder;->mTypeScoreMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setIntent(Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public whitelist setLabel(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyLabel:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public whitelist setText(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method

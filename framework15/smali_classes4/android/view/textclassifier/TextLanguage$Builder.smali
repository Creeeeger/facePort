.class public final Landroid/view/textclassifier/TextLanguage$Builder;
.super Ljava/lang/Object;
.source "TextLanguage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;

.field private final blacklist mEntityConfidenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mId:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mEntityConfidenceMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/TextLanguage;
    .locals 5

    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mBundle:Landroid/os/Bundle;

    :goto_0
    iput-object v0, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mBundle:Landroid/os/Bundle;

    new-instance v0, Landroid/view/textclassifier/TextLanguage;

    iget-object v1, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mId:Ljava/lang/String;

    new-instance v2, Landroid/view/textclassifier/EntityConfidence;

    iget-object v3, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mEntityConfidenceMap:Ljava/util/Map;

    invoke-direct {v2, v3}, Landroid/view/textclassifier/EntityConfidence;-><init>(Ljava/util/Map;)V

    iget-object v3, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mBundle:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/textclassifier/TextLanguage;-><init>(Ljava/lang/String;Landroid/view/textclassifier/EntityConfidence;Landroid/os/Bundle;Landroid/view/textclassifier/TextLanguage-IA;)V

    return-object v0
.end method

.method public whitelist putLocale(Landroid/icu/util/ULocale;F)Landroid/view/textclassifier/TextLanguage$Builder;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mEntityConfidenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextLanguage$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/view/textclassifier/TextLanguage$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextLanguage$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

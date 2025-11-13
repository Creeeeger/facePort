.class public final Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;
.super Ljava/lang/Object;
.source "TextClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifier$EntityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExcludedTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIncludeTypesFromTextClassifier:Z

.field private blacklist mIncludedTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mIncludeTypesFromTextClassifier:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 7

    new-instance v6, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mIncludedTypes:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mIncludedTypes:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mExcludedTypes:Ljava/util/Collection;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mExcludedTypes:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v0

    :goto_1
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mHints:Ljava/util/Collection;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mHints:Ljava/util/Collection;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    :goto_2
    iget-boolean v4, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mIncludeTypesFromTextClassifier:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/textclassifier/TextClassifier$EntityConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLandroid/view/textclassifier/TextClassifier$EntityConfig-IA;)V

    return-object v6
.end method

.method public whitelist includeTypesFromTextClassifier(Z)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mIncludeTypesFromTextClassifier:Z

    return-object p0
.end method

.method public whitelist setExcludedTypes(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mExcludedTypes:Ljava/util/Collection;

    return-object p0
.end method

.method public whitelist setHints(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mHints:Ljava/util/Collection;

    return-object p0
.end method

.method public whitelist setIncludedTypes(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->mIncludedTypes:Ljava/util/Collection;

    return-object p0
.end method

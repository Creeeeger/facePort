.class public final Landroid/view/textclassifier/ExtrasUtils;
.super Ljava/lang/Object;
.source "ExtrasUtils.java"


# static fields
.field private static final blacklist ACTIONS_INTENTS:Ljava/lang/String; = "actions-intents"

.field private static final blacklist ACTION_INTENT:Ljava/lang/String; = "action-intent"

.field private static final blacklist ENTITY_TYPE:Ljava/lang/String; = "entity-type"

.field private static final blacklist FOREIGN_LANGUAGE:Ljava/lang/String; = "foreign-language"

.field private static final blacklist MODEL_NAME:Ljava/lang/String; = "model-name"

.field private static final blacklist SCORE:Ljava/lang/String; = "score"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist findAction(Landroid/view/textclassifier/TextClassification;Ljava/lang/String;)Landroid/app/RemoteAction;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Landroid/view/textclassifier/ExtrasUtils;->getActionsIntents(Landroid/view/textclassifier/TextClassification;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static blacklist findTranslateAction(Landroid/view/textclassifier/TextClassification;)Landroid/app/RemoteAction;
    .locals 1

    const-string v0, "android.intent.action.TRANSLATE"

    invoke-static {p0, v0}, Landroid/view/textclassifier/ExtrasUtils;->findAction(Landroid/view/textclassifier/TextClassification;Ljava/lang/String;)Landroid/app/RemoteAction;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getActionIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    const-string v0, "action-intent"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public static blacklist getActionsIntents(Landroid/view/textclassifier/TextClassification;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextClassification;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "actions-intents"

    const-class v2, Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getEntityType(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "entity-type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getForeignLanguageExtra(Landroid/view/textclassifier/TextClassification;)Landroid/os/Bundle;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "foreign-language"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getModelName(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "model-name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getScore(Landroid/os/Bundle;)F
    .locals 3

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    if-nez p0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v2, "score"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

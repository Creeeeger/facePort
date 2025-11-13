.class Landroid/content/om/wallpapertheme/TemplateManager$2;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/om/wallpapertheme/TemplateManager;->getBooleans(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Landroid/content/om/wallpapertheme/TemplateManager$UidItem;",
        "Ljava/util/List<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/om/wallpapertheme/TemplateManager;


# direct methods
.method constructor blacklist <init>(Landroid/content/om/wallpapertheme/TemplateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/content/om/wallpapertheme/TemplateManager$2;->this$0:Landroid/content/om/wallpapertheme/TemplateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;

    invoke-virtual {p0, p1}, Landroid/content/om/wallpapertheme/TemplateManager$2;->apply(Landroid/content/om/wallpapertheme/TemplateManager$UidItem;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Landroid/content/om/wallpapertheme/TemplateManager$UidItem;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/om/wallpapertheme/TemplateManager$UidItem;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->themes:[Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->themes:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v5, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->theme:Ljava/lang/String;

    aput-object v5, v2, v4

    iget-object v5, p1, Landroid/content/om/wallpapertheme/TemplateManager$UidItem;->theme:Ljava/lang/String;

    aput-object v5, v2, v3

    :goto_0
    aget-object v5, v2, v4

    const-string/jumbo v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "false"

    if-eqz v5, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    aget-object v4, v2, v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    :goto_1
    aget-object v4, v2, v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    aget-object v3, v2, v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_4
    :goto_2
    if-eqz v0, :cond_6

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    filled-new-array {v0, v1}, [Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3

    :cond_6
    :goto_3
    const/4 v3, 0x0

    return-object v3
.end method
